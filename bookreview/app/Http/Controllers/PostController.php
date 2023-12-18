<?php

namespace App\Http\Controllers;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Seo;
class PostController extends Controller
{
    function index()
    {
        //$review =  DB::table('posts')->paginate(15);
        $review =  Post::paginate(2);

        return view("post", ["reviews" => $review]);
    }
    function add(){
        return view("addPost");
    }
    public function store(Request $request){
//        echo "<pre>";
//        print_r($request->all());
//        echo "</pre>";
//        exit;
        $input = $request->all();
        $review = new Post();
        $review["title"] = $input["name"];
        $review["slug"]=$input["slug"];
        $review["description"] = $input["description"];
        $review["content"] = $input["content"];
        $review["image"]=$input["image"];
        $review->save();

        $seo = new SEO();
        $seo["post_id"] = $review->id;
        $seo["seo_keyword"] = $input["seo_keywords"];
        $seo["seo_description"]=$input["seo_description"];
        $seo["seo_title"] = $input["seo_title"];
        $seo -> save();
        return redirect()->route("post");
    }
    public function edit($review_id){
        $item = Post::find($review_id);
        $seo = Seo::Where('post_id', "=", $review_id)->get();
        $seo_0 = $seo[0];
        return view("editPost", ["item"=>$item, "seo" => $seo_0]);
    }

    public function update(Request $request, $review_id){
        $item = Post::find($review_id);
        $seo = SEO::where('post_id','=',$review_id);


        if($item && $seo){
            $input = $request->all();
            $item["title"] = $input["name"];
            $item["slug"]=$input["slug"];
            $item["description"] = $input["description"];
            $item["content"] = $input["content"];
            $item["image"]=$input["image"];
            $item->save();
            $seo = new SEO();
            $seo["post_id"] = $item->id;
            $seo["seo_keyword"] = $input["seo_keywords"];
            $seo["seo_description"]=$input["seo_description"];
            $seo["seo_title"] = $input["seo_title"];
            $seo->save();
        }

        return redirect()->route("post");
    }
    public function destroy($id){
        $item = Post::find($id);
        $seo = SEO::where('post_id','=',$id);
        if($item){
            $item->delete();
            if($seo){
                $seo->delete();
            }
        }
        return redirect()->route("post");
    }
}
