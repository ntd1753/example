@extends("layout.adminLayoutPage")
@section('content')
    <div class="iq-card">
        <div class="iq-card-header d-flex justify-content-between">
            <div class="iq-header-title">
                <h4 class="card-title">Thêm bài viết</h4>
            </div>
        </div>
        <div class="iq-card-body">
            <form action="{{route("post.update",$item->id)}}" method="POST">
                <div class="form">
                    @csrf
                    <div class="">
                        <label for="reviewName">Tiêu đề bài viết</label>
                        <input type="text" class="form-control" id="reviewName" name="name" placeholder="Nhập tiêu đề bài viết ..." value="{{$item->title}}">
                    </div>
                    <div class="">
                        <label for="reviewName">slug bài viết</label>
                        <input type="text" class="form-control" id="reviewName" name="slug" placeholder="Nhập tiêu đề bài viết ..." value="{{$item->slug}}">
                    </div>
                    <div class="">
                        <label for="reviewName">SEO  keyword</label>
                        <input type="text" class="form-control" id="reviewName" name="seo_keywords" placeholder="Nhập tiêu đề bài viết ..." value="{{$seo->seo_keyword}}">
                    </div>
                    <div class="">
                        <label for="description">SEO title</label>
                        <input type="text" class="form-control" id="description" name="seo_title" placeholder="Nhập description....." value="{{$seo->seo_title}}">
                    </div>
                    <div class="">
                        <label for="description">mô tả</label>
                        <input type="text" class="form-control" id="description" name="description" placeholder="Nhập description....." value="{{$item->description}}">
                    </div>
                    <div class="grid grid-cols-2">
                        <div class="">
                            <label for="content">Nội dung</label>
                            <textarea class="tinyMce" id="edit" name="content" >{!! $item->content !!}</textarea>
                        </div>
                        <div class="">
                            <label for="content">SEO DES</label>
                            <textarea class="tinyMce" name="seo_description">{!! $seo->seo_description !!}</textarea>
                        </div>
                    </div>

                    <div class="my-2">
                        <label for="preview-image">Chọn ảnh bài viết</label><br>
                        <input type="text" id="image_label" class="form-control" name="image"
                               aria-label="Image" aria-describedby="button-image" value="{{$item -> image}}">
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="button-image">Select</button>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary" type="submit"  onclick="return confirm('Bạn chắc không :))))');">Submit form</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {

            document.getElementById('button-image').addEventListener('click', (event) => {
                event.preventDefault();

                window.open('/file-manager/fm-button', 'fm', 'width=1400,height=800');
            });
        });

        // set file link
        function fmSetLink($url) {
// cấu hình link
            document.getElementById('image_label').value = $url;
        }
    </script>

@endsection
