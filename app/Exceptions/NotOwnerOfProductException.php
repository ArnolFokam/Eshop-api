<?php

namespace App\Exceptions;

use Symfony\Component\HttpFoundation\Response;
use Exception;

class NotOwnerOfProductException extends Exception
{
    public function render(){
    	return response()->json([
                'errors' => 'Unauthorized product change'
            ],Response::HTTP_UNAUTHORIZED);
    }
}
