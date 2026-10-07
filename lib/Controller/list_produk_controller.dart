import 'package:tes/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {
  List<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "Apem Original",
      hargaProduk: "Rp 3.000 /pcs",
      description: "Apem manis tradisional khas dengan tekstur lembut dan bahan segar.",
      imageProduk: "lib/assets/apem_all.jpg",
      reviews: 120,
      rating: 4.8,
      namaToko: "Apem Shofa",
    ),
    ProdukModel(
      namaProduk: "Apem Gula Aren",
      hargaProduk: "Rp 3.500 /pcs",
      description: "Apem lezat dilapisi cairan gula aren murni pilihan.",
      imageProduk: "lib/assets/apem_all.jpg",
      reviews: 85,
      rating: 4.9,
      namaToko: "Apem Shofa",
    ),
    ProdukModel(
      namaProduk: "Apem Pandan",
      hargaProduk: "Rp 3.000 /pcs",
      description: "Apem wangi daun pandan alami dengan rasa gurih manis.",
      imageProduk: "lib/assets/apem_all.jpg",
      reviews: 45,
      rating: 4.7,
      namaToko: "Apem Shofa",
    ),
    ProdukModel(
      namaProduk: "Gemblong",
      hargaProduk: "Rp 185.000 /Loyang",
      description: "Gemblong jawa adalah jajanan pasar tradisional Indonesia berbahan dasar beras ketan atau tepung ketan yang dicampur kelapa parut dan santan",
      imageProduk: "lib/assets/apem_all.jpg",
      reviews: 45,
      rating: 4.7,
      namaToko: "Apem Shofa",
    ),
    ProdukModel(
      namaProduk: "Wajik Original",
      hargaProduk: "Rp 200.000 /Loyang",
      description: "Apem wangi daun pandan alami dengan rasa gurih manis.",
      imageProduk: "lib/assets/apem_all.jpg",
      reviews: 45,
      rating: 4.7,
      namaToko: "Apem Shofa",
    ),
    ProdukModel(
      namaProduk: "Wajik Gula Jawa",
      hargaProduk: "Rp 220.000 /Loyang",
      description: "Apem wangi daun pandan alami dengan rasa gurih manis.",
      imageProduk: "lib/assets/apem_all.jpg",
      reviews: 45,
      rating: 4.7,
      namaToko: "Apem Shofa",
    ),
    ProdukModel(
      namaProduk: "Wajik Tiga Warna",
      hargaProduk: "Rp 220.000 /Loyang",
      description: "Apem wangi daun pandan alami dengan rasa gurih manis.",
      imageProduk: "lib/assets/apem_all.jpg",
      reviews: 45,
      rating: 4.7,
      namaToko: "Apem Shofa",
    ),
    ProdukModel(
      namaProduk: "Wajik Dua Warna",
      hargaProduk: "Rp 200.000 /Loyang",
      description: "Apem wangi daun pandan alami dengan rasa gurih manis.",
      imageProduk: "lib/assets/apem_all.jpg",
      reviews: 45,
      rating: 4.7,
      namaToko: "Apem Shofa",
    ),
  ];
}