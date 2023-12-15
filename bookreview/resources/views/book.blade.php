
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Laracoding.com TinyMCE Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @vite(['resources/js/app.js','resources/js/app.css'])
</head>
<body>
    @foreach($book as $item)
        {{ $item -> id}}
        {{ $item -> name}}
        {{ $item -> author}}
        {{$item -> Type -> description}}
    @endforeach
</body>
</html>
