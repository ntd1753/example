
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Laracoding.com TinyMCE Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @vite(['resources/js/app.js','resources/js/app.css'])
</head>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px; /* Khoảng cách từ đỉnh trang */
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    th {
        background-color: #f2f2f2;
    }

    /* Hiệu ứng hover khi di chuột vào các dòng của bảng */
    tr:hover {
        background-color: #f5f5f5;
    }

</style>
<body>
@foreach($order as $order)
    <div>
        {{$order ->id}}
    </div>
    <div>Mã đơn hàng : {{$order -> code}}</div>
    <table>
        <tr>
            <td>stt</td>
            <td>ten sp</td>
            <td>so luong</td>
            <td>gia</td>
        </tr>
        @foreach($order -> products as $item )
            <tr>
                <td>{{$loop -> index}}</td>
                <td>{{$item -> name}}</td>
                <td>{{$item -> pivot->quantity}}</td>
                <td>{{$item -> price}}</td>

            </tr>
        @endforeach

    </table>
@endforeach

</body>
</html>
