@foreach($reviews as $item)
    <tr>
        <td contenteditable="true">{{$item->id }}</td>
        <td contenteditable="true">{{$item->title}}</td>
        <td contenteditable="true">{{$item->description}}</td>
        <td contenteditable="true" class="place-content-center"><img src="{{$item->image}}" class="img-fluid avatar-80 "> </td>
        <td>
            <a href="{{route("post.edit",$item->id)}}"><button type="button" class="btn mb-3 btn-warning rounded-pill"><i class="ion-wrench"></i></button></a>
            <a href="{{route("post.delete",$item->id)}}"
               onclick="return confirm('Bạn có muốn xóa không?');"><button type="button" class="btn mb-3 btn-danger"><i class="ion-trash-b"></i></button></a>

                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable{{$item->id}}">
                    <div data-icon="p" class="icon"></div>
                </button>
            <button type="button" class="btn mb-3 btn-info" data-toggle="modal" data-target="#exampleModal{{$item->id}}"><i class="fa fa-hashtag" aria-hidden="true"></i></button>
        </td>
    </tr>
    <div class="modal fade" id="exampleModalScrollable{{$item->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle{{$item->id}}" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalScrollableTitle">Preview Post</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button></div>

                <div class="modal-body">
                    {!! $item -> content !!}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>

            </div>
        </div>
    </div>

@endforeach
{{--<div class="container px-4 text-center">--}}
{{--    <div class="row gx-5">--}}
{{--        <div class="col">--}}
{{--            <div class="p-3">seo_keyword</div>--}}
{{--        </div>--}}
{{--        <div class="col">--}}
{{--            <div class="p-3">{!!  $item -> seo -> seo_keyword !!}</div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <div class="row gx-5">--}}
{{--        <div class="col">--}}
{{--            <div class="p-3">seo_title</div>--}}
{{--        </div>--}}
{{--        <div class="col">--}}
{{--            <div class="p-3">{!!  $item -> seo -> seo_title !!}</div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <div class="row gx-5">--}}
{{--        <div class="col">--}}
{{--            <div class="p-3">seo_description</div>--}}
{{--        </div>--}}
{{--        <div class="col">--}}
{{--            <div class="p-3">{!!  $item -> seo -> seo_description !!}</div>--}}
{{--        </div>--}}
{{--    </div>--}}

{{--</div>--}}
{{--<div class="row">--}}
{{--    <div></div>--}}
{{--    <div></div>--}}
{{--</div>--}}
