class Post {
  late String key;
  late String kodeKategori;
  late String namaLayanan;
  late String refrensi;
  late int ukuran;
  late double harga;

  Post(
      {required this.kodeKategori,
      required this.namaLayanan,
      required this.refrensi,
      required this.ukuran,
      required this.harga});

  Post.fromJson(Map<String, dynamic> json) {
    kodeKategori = json['kodeKategori'];
    namaLayanan = json['namaLayanan'];
    refrensi = json['refrensi'];
    ukuran = json['ukuran'];
    harga = json['harga'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['kodeKategori'] = kodeKategori;
    data['namaLayanan'] = namaLayanan;
    data['refrensi'] = refrensi;
    data['ukuran'] = ukuran;
    data['harga'] = harga;

    return data;
  }
}

class PostList {
  List<Post> posts = [];

  PostList.fromJsonList(Map value) {
    value.forEach((key, value) {
      var post = Post.fromJson(value);
      post.key = key;
      posts.add(post);
    });
  }
}
