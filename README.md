# Warkop Kalisetail
**Selamat datang di warkop _Stasiun Kalisetail_ (+272m)**

## Tugas 7

- [x] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.

  Buka terminal di direktori tugas PBP dengan nama `Flutter` lalu gunakan command:
  ```
  flutter create  warkop_kalisetail
  cd warkop_kalisetail
  ```
  lalu untuk menjalankan proyek gunakan command:
  ```
  flutter run
  ```

- [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:

  Tambahkan kode ini pada `menu.dart` didalam class `MyHomePage`:
  ```
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
              title: const Text(
                  'Warkop Kalisetail',
                  style: TextStyle(
                      color: Colors.white,
                    ),
                 ),
                  backgroundColor:Colors.indigo,
              ),
              body: SingleChildScrollView(
                  // Widget wrapper yang dapat discroll
                  child: Padding(
                      padding: const EdgeInsets.all(10.0), // Set padding dari halaman
                      child: Column(
                          // Widget untuk menampilkan children secara vertikal
                          children: <Widget>[
                              const Padding(
                                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                                  child: Text(
                                      'Kalisetail +272m', // Text yang menandakan toko
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                      ),
                                  ),
                              ),
                              // Grid layout
                              GridView.count(
                                  // Container pada card kita.
                                  primary: true,
                                  padding: const EdgeInsets.all(20),
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 3,
                                  shrinkWrap: true,
                                  children: items.map((WarkopItem item) {
                                      // Iterasi untuk setiap item
                                      return WarkopCard(item);
                                  }).toList(),
                              ),
                          ],
                      ),
                  ),
              ),
          );
      }
  ```
  Lalu tambahkan kode untuk class `WarkopItem` dan `WarkopCard`:
  ```
  class WarkopItem {
  final String name;
  final IconData icon;

  WarkopItem(this.name, this.icon);
  }
  
  class WarkopCard extends StatelessWidget {
    final WarkopItem item;
  
    const WarkopCard(this.item, {super.key}); // Constructor
  
    @override
    Widget build(BuildContext context) {
      return Material(
        color: buttonColor,
        child: InkWell(
          child: Container(
            // Container untuk menyimpan Icon dan Text
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  const Padding(padding: EdgeInsets.all(3)),
                  Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
  ```

    - [x] Melihat daftar item (Lihat Item)

      Tambahkan kode ini pada `menu.dart` didalam class `MyHomePage`:
      ```
      ...
      final List<WarkopItem> items = [
        WarkopItem("Lihat Item", Icons.checklist),
        ...
      ];
      ...
      ```
      Lalu tambahkan kode ini didalam class `WarkopCard`:
      ```
      ...
      @override
      Widget build(BuildContext context) {
        var buttonColor;
        if (item.name.compareTo("Lihat Item") == 0) {
          buttonColor= Colors.indigo;
        }
      ...
      ```

    - [x] Menambah item (Tambah Item)

      Tambahkan kode ini pada `menu.dart` didalam class `MyHomePage`:
      ```
      ...
      final List<WarkopItem> items = [
        ...
        WarkopItem("Tambah Item", Icons.add_shopping_cart),
        ...
      ];
      ...
      ```
      Lalu tambahkan kode ini didalam class `WarkopCard`:
      ```
      ...
      @override
      Widget build(BuildContext context) {
        var buttonColor;
        ...
        else if (item.name.compareTo("Tambah Item") == 0) {
          buttonColor= Colors.blue;
        }
        ...
        }
      ...
      ```

    - [x] Logout (Logout)
      Tambahkan kode ini pada `menu.dart` didalam class `MyHomePage`:
      ```
      ...
      final List<WarkopItem> items = [
        WarkopItem("Lihat Item", Icons.checklist),
        ...
      ];
      ...
      ```
      Lalu kode ini didalam class `WarkopCard`:
      ```
      ...
      @override
      Widget build(BuildContext context) {
        var buttonColor;
        if (item.name.compareTo("Lihat Item") == 0) {
          buttonColor= Colors.indigo;
        }
      ...
      ```

    - [x] Menambah item (Tambah Item)

      Tambahkan kode ini pada `menu.dart` didalam class `MyHomePage`:
      ```
      final List<WarkopItem> items = [
        ...
        WarkopItem("Logout", Icons.logout),
      ];
      ```
      Lalu tambahkan kode ini didalam class `WarkopCard`:
      ```
      ...
      @override
      Widget build(BuildContext context) {
        var buttonColor;
        ...
        else if (item.name.compareTo("Logout") == 0) {
          buttonColor= Colors.cyan;
        }
        ...
        }
      ...
      ```

- [x] Memunculkan Snackbar dengan tulisan:

  Tambahkan kode didalam class `WarkopCard`:
  ```
          ...
          // Area responsive terhadap sentuhan
          onTap: () {
            // Memunculkan SnackBar ketika diklik
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                  content: Text("Kamu telah menekan tombol ${item.name}")));
          },
          ...
  ```

    - [x] "Kamu telah menekan tombol "Lihat Item" ketika tombol Lihat Item ditekan.

      Pastikan kode ini ada di `menu.dart` didalam class `MyHomePage`:
      ```
      ...
      final List<WarkopItem> items = [
        WarkopItem("Lihat Item", Icons.checklist),
        ...
      ];
      ...
      ```

    - [x] "Kamu telah menekan tombol "Tambah Item" ketika tombol Tambah Item ditekan.

      Pastikan kode ini ada di `menu.dart` didalam class `MyHomePage`:
      ```
      ...
      final List<WarkopItem> items = [
        ...
        WarkopItem("Tambah Item", Icons.add_shopping_cart),
        ...
      ];
      ...
      ```

    - [x] "Kamu telah menekan tombol "Logout" ketika tombol Logout ditekan.

      Pastikan kode ini ada di `menu.dart` didalam class `MyHomePage`:
      ```
      ...
      final List<WarkopItem> items = [
        WarkopItem("Lihat Item", Icons.checklist),
        ...
      ];
      ...
      ```

- [x] Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

  1. Stateless Widget:
     
      * Stateless widget adalah widget yang tidak memiliki "keadaan" (state) internal. Ini berarti mereka tidak dapat memperbarui tampilan mereka sendiri berdasarkan perubahan data.
      * Stateless widget cocok digunakan untuk komponen yang tidak berubah selama masa hidup widget tersebut. Misalnya, untuk menampilkan teks statis atau ikon.
      * Stateless widget bersifat immutable, artinya setelah widget dibuat, tidak dapat mengubah data internalnya. Anda perlu membuat widget baru jika ingin mengganti tampilannya.
        
  2. Stateful Widget:
     
      * Stateful widget adalah widget yang memiliki "keadaan" (state) internal yang dapat berubah selama masa hidup widget tersebut. Ini memungkinkan mereka untuk merespon perubahan data dan memperbarui tampilan mereka secara dinamis.
      * Stateful widget cocok digunakan untuk komponen yang harus memperbarui diri mereka sendiri berdasarkan perubahan data, seperti daftar yang dapat di-scroll atau formulir input pengguna.
      * Stateful widget memiliki dua bagian utama: widget itu sendiri yang bersifat stateless, dan objek State yang berisi data dan logika yang berubah. Ketika data di State berubah, widget akan di-rebuild untuk mencerminkan perubahan tersebut.
  
- [x] Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
      
  1. MyHomePage (StatelessWidget):Ini adalah widget utama yang mewakili halaman beranda aplikasi. Ini mengatur tampilan utama aplikasi dan termasuk dalam Scaffold.
  2. Scaffold: Ini adalah widget yang memberikan kerangka dasar untuk halaman aplikasi. Ini mencakup AppBar dan body serta berbagai atribut lainnya yang digunakan untuk mengatur tampilan.
  3. AppBar: Widget ini adalah bagian dari Scaffold dan menyediakan bilah atas (app bar) yang berisi judul aplikasi.
  4. Column: Digunakan untuk menampilkan sejumlah widget children secara vertikal, termasuk teks "Kalisetail +272m" dan GridView.
  5. GridView.count: Ini adalah widget untuk menampilkan grid layout yang berisi sejumlah item (cards). Diatur untuk menampilkan grid 3 kolom.
  6. WarkopCard (StatelessWidget): Ini adalah widget yang mewakili kartu (card) individual dalam grid. Setiap kartu berisi ikon dan teks, dan dapat ditekan untuk menampilkan SnackBar.
  7. Material: Digunakan sebagai wadah untuk setiap kartu dan memberikan warna latar belakang sesuai dengan jenis item yang ditentukan.
  8. InkWell: Ini adalah widget yang memberikan respons terhadap sentuhan, sehingga pengguna dapat menekan kartu. Saat ditekan, SnackBar akan muncul.
  9. Container: Digunakan sebagai wadah untuk menyimpan ikon dan teks dalam setiap kartu.
  10. Icon: Widget ini digunakan untuk menampilkan ikon yang sesuai dengan item yang diwakili oleh kartu.
  11. Text:Digunakan untuk menampilkan teks yang sesuai dengan item yang diwakili oleh kartu.
  12. SnackBar: Muncul ketika salah satu kartu ditekan dan memberikan umpan balik kepada pengguna.
