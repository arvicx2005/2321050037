let danhsachphim=[
    {
        id:1,
        tenphim:"Mưa đỏ",
        namphathanh:2025,
        thoiluong:2,
        tuoi:16,
        quocgia:"Việt Nam",
        poster:"url(muado.png)",
        theloai:"phim chiếu rạp"
    },
    {
        id:2,
        tenphim:"Conan",
        namphathanh:2023,
        thoiluong:2,
        tuoi:10,
        quocgia:"Nhật Bản",
        poster:"url(conan.png)",
        theloai:"phim hoạt hình"
    },
    {
        id:3,
        tenphim:"Người đẹp và quái vật",
        namphathanh:2013,
        thoiluong:3,
        tuoi:10,
        quocgia:"MỸ",
        poster:"url(anh3.png)",
        theloai:"phim chiếu rạp"  
    }
];

let phimhientai = danhsachphim[0];

let banner = document.getElementsByClassName('main_head')[0];

function chonphim(idphim){
    alert(idphim)
    for(let i = 1;i <=danhsachphim.length;i++){
        if(danhsachphim[i].id==idphim){
            banner.style.backgroundimage = danhsachphim[i].poster;
        }
    }
}