<?php
    //session
    # lưu trên server
    #thông tin đăng nhập, giỏ hàng....

    session_start();
    $_SESSION["name"]="Ngoc Anh";
    echo $_SESSION["name"];



    //cookie
    # lưu trên máy chủ người dùng
    #dùng cho những thông tin ít quan trọng

    $cookiename = "user";
    $cookievalue = "NgocAnh";
    //86400 = 30 ngày
    setcookie($cookiename, $cookievalue, time()+(86400), "/");

    if(isset($_COOKIE[$cookiename])){
        echo "cookie đã tồn tại";
    }
    else{
        echo "cookie chưa tồn tại";
    }
?>