<link rel="shortcut icon" href="{{asset('backend/images/favicon.ico')}}" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="{{asset('backend/css/bootstrap.min.css')}}">
<!-- Typography CSS -->
<link rel="stylesheet" href="{{asset('backend/css/typography.css')}}">
<!-- Style CSS -->
<link rel="stylesheet" href="{{asset('backend/css/style.css')}}">
<!-- Responsive CSS -->
<link rel="stylesheet" href="{{asset('backend/css/responsive.css')}}">
<!-- Full calendar -->
<link href='{{asset('backend/fullcalendar/core/main.css')}}' rel='stylesheet' />
<link href='{{asset('backend/fullcalendar/daygrid/main.css')}}' rel='stylesheet' />
<link href='{{asset('backend/fullcalendar/timegrid/main.css')}}' rel='stylesheet' />
<link href='{{asset('backend/fullcalendar/list/main.css')}}' rel='stylesheet' />

<link rel="stylesheet" href="{{asset('backend/css/flatpickr.min.css')}}">

<!-- CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="{{ asset('vendor/file-manager/css/file-manager.css') }}">
<script src="{{ asset('vendor/file-manager/js/file-manager.js') }}"></script>
<script src="https://cdn.tiny.cloud/1/ju9oytkgovjt42g1goz4bbx8ah5w7br05qbg396440cuw7ty/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

<!-- Place the following <script> and <textarea> tags your HTML's <body> -->
<script>
    tinymce.init({
        selector: 'textarea',
        plugins: 'ai tinycomments mentions anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed permanentpen footnotes advtemplate advtable advcode editimage tableofcontents mergetags powerpaste tinymcespellchecker autocorrect a11ychecker typography inlinecss',
        toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | align lineheight | tinycomments | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
        tinycomments_mode: 'embedded',
        tinycomments_author: 'Author name',
        mergetags_list: [
            { value: 'First.Name', title: 'First Name' },
            { value: 'Email', title: 'Email' },
        ],
        ai_request: (request, respondWith) => respondWith.string(() => Promise.reject("See docs to implement AI Assistant")),
    });
</script>

