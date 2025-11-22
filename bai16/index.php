<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>buổi 1 php</title>
</head>
<body>
    <?php
        echo"hello world <br>";
        echo"hi";

        // biến
        $ten = "Ngọc Anh";
        $tuoi = 28;

        echo $ten . " " .$tuoi . " tuổi <br>";
        define("soPi", "3.14");
        echo soPi;
        // phân biệt '' và ""
        echo '$ten' . "<br>";
        echo "$ten" . "<br>";
        // chuỗi
        #1. kiểm tra độ dài của chuỗi
        echo strlen($ten);
        #2. đếm số từ
        echo str_word_count($ten). "<br>";
        #3. tìm kiếm kí tự trong chuỗi
        echo strpos($ten, "A");
        #4. thay thế kí tự trong chuỗi
        echo str_replace("Anh", "an",$ten). "<br>";

        // toán tử
        $sothunhat = 10;
        $sothuhai = 5;
        #phép cộng
        echo $sothunhat + $sothuhai;
        #phép trừ
        echo $sothunhat - $sothuhai;
        #phép nhân
        echo $sothunhat * $sothuhai;
        #phép chia
        echo $sothunhat / $sothuhai;
        # += -= *= /= %=
        echo $sothunhat %= $sothuhai;
        #so sánh == <= >= !=
        echo $sothunhat == $sothuhai;

        //câu điều kiện
        #if("điều kiện"){logic}
        #elseif("điều kiện"){logic}

        // kiểm tra tổng của số thứ nhất và số thứ 2 (nếu <15 in ra nhỏ hơn 15) (nếu = 15 thì in ra tổng = 15) còn lại in ra lớn hơn 15

        if($sothunhat+$sothuhai < 15){
            echo "tổng nhỏ hơn 15 <br>" 
        };
        elseif($sothunhat+$sothuhai == 15){
            echo "tổng bằng 15 <br>";
        }
        elseif($sothunhat+$sothuhai >15){
            echo"tổng lớn hơn 15 <br>";
        }

        // switch case
        $color = "red";
        switch($color){
            case"red":
                echo "is red <br>";
                break;
            case"blue":
                echo "is blue <br>";
            default:
            echo "no color";
            break;
        }

        //for
        for($i=0; $i <100; $i++){
            echo $i."<br>";
        }

        //mảng 
        $mang =["Anh", "Nhat Anh", "vu Anh"];

        //đếm phần tử
        echo count($mang);
        echo $mang[1];
        print_r($mang);
        $mang[0] ="Hai Anh";
        print_r($mang);
        $mang[] ="tam";
        print_r($mang);
        #xóa
        unset($mang[3]);
        print_r($mang);
    ?>
</body>
</html>