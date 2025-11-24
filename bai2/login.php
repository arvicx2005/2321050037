<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php buổi 2</title>
</head>
<body>
    <form action="login.php" method="post">
        <h1>đăng nhập</h1>
        <div>
            <input type="text" name="username" placeholder="tên đăng nhập">  
        </div>
        <div>
            <input type="password" name="password" placeholder="mật khẩu" id="">
        </div>
        <div>
            <input type="submit" value="đăng nhập" name="" id="">
        </div>
    </form>

    <?php


        //nếu tên đăng nhập = admin
        //mk = 123 . cho phép người dùng vào trang chủ

        if(isset($_POST['username']) && isset($_POST['password'])){
            $tendangnhap = $_POST['username'];
            $matkhau =$_POST['password'];
            
            //echo $tendangnhap . $matkhau;

            if($tendangnhap == 'admin' && $matkhau == '123'){
                session_start();
                $_SESSION["username"] =$tendangnhap;
                header('location: trangchu.php');
            }
            else{
                echo "<p class='warning'>sai thông tin đăng nhập</p>";
            }
        }
    ?>
</body>
</html>