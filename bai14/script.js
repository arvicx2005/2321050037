
let danhsachphim=[
    {
        id:1,
        tenphim:"Mưa đỏ",
        namphathanh:2025,
        thoiluong:2,
        tuoi:16,
        quocgia:"Việt Nam",
        poster:"images/muado.png",
        theloai:"phim chiếu rạp",
        trailer:"https://youtu.be/BD6PoZJdt_M?si=KhzEpnRcmixCwDyz"
    },
    {
        id:2,
        tenphim:"Conan",
        namphathanh:2023,
        thoiluong:2,
        tuoi:10,
        quocgia:"Nhật Bản",
        poster:"images/conan.png",
        theloai:"phim hoạt hình",
        trailer:"https://youtu.be/dz5mN-iIC4g?si=V-1jveDwl3Ohnknm"
    },
    {
        id:3,
        tenphim:"Người đẹp và quái vật",
        namphathanh:2013,
        thoiluong:3,
        tuoi:10,
        quocgia:"MỸ",
        poster:"images/anh3.png",
        theloai:"phim chiếu rạp",
        trailer:"https://youtu.be/o6k1ChY8kDg?si=OB9teTy6jo627JUE"
    },
    {
        id:4,
        tenphim:"Incantation",
        namphathanh:2019,
        thoiluong:3,
        tuoi:18,
        quocgia:"Đài Loan",
        poster:"images/chunguyen.png",
        theloai:"phim chiếu rạp",
        trailer:"https://youtu.be/znGMhCgMl1w?si=oDnseRjnH0D-ua_M"
    },
    {
        id:5,
        tenphim:"The GodFather",
        namphathanh:1972,
        thoiluong:2,
        tuoi:16,
        quocgia:"Italia",
        poster:"images/thegodft.png",
        theloai:"phim chiếu rạp",
        trailer:"https://youtu.be/UaVTIH8mujA?si=po_RaIumWsZefvt1"
    },
    {
        id:6,
        tenphim:"28 years later",
        namphathanh:2025,
        thoiluong:2,
        tuoi:17,
        quocgia:"Mỹ",
        poster:"images/28year.png",
        theloai:"phim chiếu rạp",
        trailer:"https://youtu.be/OlZwbkROfds?si=BNkP1zSDMnSHgjwv"  
    },
    {
        id:7,
        tenphim:"Doraemon",
        namphathanh:2020,
        thoiluong:2,
        tuoi:10,
        quocgia:"Nhật Bản",
        poster:"images/doraemon.png",
        theloai:"phim chiếu rạp",
        trailer:"https://youtu.be/Wmx6AwUCxqs?si=NMjqPK7jC9swGs1y"  
    },
    {
        id:8,
        tenphim:"The walking dead",
        namphathanh:2000,
        thoiluong:1,
        tuoi:16,
        quocgia:"Mỹ",
        poster:"images/thewkd.png",
        theloai:"phim bộ",
        trailer:"https://youtu.be/sfAc2U20uyg?si=mwoH0PMWyLzTzGiu"  
    },
    {
        id:9,
        tenphim:"Strange things",
        namphathanh:2016,
        thoiluong:2,
        tuoi:16,
        quocgia:"Mỹ",
        poster:"images/strange.png",
        theloai:"phim bộ",
        trailer:"https://youtu.be/b9EkMc79ZSU?si=S02iO-uyaGq_OkU5"      
    }
];

function chonphim(idphim) {
    let banner = document.getElementById("banner");
    let tenphim = document.getElementById("tenphim");
    let thoiluong = document.getElementById("thoiluong");
    let namphathanh = document.getElementById("namphathanh");
    let tuoi = document.getElementById("tuoi");
    let quocgia = document.getElementById("quocgia");
    let theloai = document.getElementById("theloai");
    let trailer = document.getElementById("trailer");

    for (let i = 0; i < danhsachphim.length; i++) {
        if (danhsachphim[i].id == idphim) {
            tenphim.innerHTML = danhsachphim[i].tenphim;
            thoiluong.innerText ="thời lượng:" + danhsachphim[i].thoiluong+" tiếng";
            namphathanh.innerText ="Năm:" + danhsachphim[i].namphathanh;
            tuoi.innerText ="Giới hạn độ tuổi:"+ danhsachphim[i].tuoi;
            quocgia.innerText ="Quốc gia:" + danhsachphim[i].quocgia;
            theloai.innerText ="Thể loại:" + danhsachphim[i].theloai;
            trailer.href= danhsachphim[i].trailer;
            banner.style.backgroundImage = `url(${danhsachphim[i].poster})`;
            break;
        }
    }
}
