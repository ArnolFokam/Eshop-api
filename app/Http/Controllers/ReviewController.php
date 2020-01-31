<?php

namespace App\Http\Controllers;

use App\Model\Review;
use App\Model\Product;
use App\User;
use App\Http\Resources\ReviewResource;
use App\Http\Requests\ReviewRequest;
use Symfony\Component\HttpFoundation\Response;
use App\Exceptions\UnauthorizedChangeException;
use Auth;

use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function __construct(){
        $this->middleware('auth:api')->except('index', 'show');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Product $product)
    {
        return ReviewResource::collection($product->reviews);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ReviewRequest $request, Product $product)
    {
        $user = User::find(Auth::id());
        $product = Product::find($product->id);

        $review = new Review($request->all());

        $review->user()->associate($user);
        $review->product()->associate($product);
        $review->save();

        return response([
            'data' => new ReviewResource($review)
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product, Review $review)
    {
        return new ReviewResource($review);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function edit(Review $review)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product, Review $review)
    {
        $this->checkReviewOwner($review);
        $this->isReviewFromProduct($product, $review);

        $review->update($request->all());
        return response([
            'data' => new ReviewResource($review)
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product,Review $review)
    {
        $this->checkReviewOwner($review);
        $this->isReviewFromProduct($product, $review);

        $review->delete();
        return response(null,Response::HTTP_NO_CONTENT);
    }

    public function checkReviewOwner(Review $review){
        if(Auth::id() != $review->user_id){
            throw new UnauthorizedChangeException;
        }
    }

    public function isReviewFromProduct(Product $product, Review $review){
        if($product->id != $review->product_id){
            throw new UnauthorizedChangeException;
        }
    }
}
