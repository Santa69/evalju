<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Product;
    class ProductController extends Controller
    {
        public function index()
      {
        $products = Product::all();
        return view('product', ['products' => $products]);
        }
        public function getOne($id)
      {
          $product = Product::find($id);
        return view('product', ['product' => $product]);
        }
        public function formulaire() {
          return view('product');
        }
        public function insertOne(Request $request){
          $product = new Product;
          $product->name = $request->name;
          $product->genre = $request->genre;
          // $product-> name = $request->input('name');
          $product->description = $request->description;
          $product->note = $request->note;

          $product->save();
          flash('Product Created with Succes', 'success');
          return redirect('/products');
        }
        public function deleteOne(Request $request, $id)
        {
        Product::destroy($id);
        return redirect('products');
        }
    }
