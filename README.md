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
    3. AppBar: Widget ini adalah bagian dari Scaffold dan menyediakan bagian atas (app bar) yang berisi judul aplikasi.
    4. Column: Digunakan untuk menampilkan sejumlah widget children secara vertikal, termasuk teks "Kalisetail +272m" dan GridView.
    5. GridView.count: Ini adalah widget untuk menampilkan grid layout yang berisi sejumlah item (cards). Diatur untuk menampilkan grid 3 kolom.
    6. WarkopCard (StatelessWidget): Ini adalah widget yang mewakili kartu (card) individual dalam grid. Setiap kartu berisi ikon dan teks, dan dapat ditekan untuk menampilkan SnackBar.
    7. Material: Digunakan sebagai wadah untuk setiap kartu dan memberikan warna latar belakang sesuai dengan jenis item yang ditentukan.
    8. InkWell: Ini adalah widget yang memberikan respons terhadap sentuhan, sehingga pengguna dapat menekan kartu. Saat ditekan, SnackBar akan muncul.
    9. Container: Digunakan sebagai wadah untuk menyimpan ikon dan teks dalam setiap kartu.
    10. Icon: Widget ini digunakan untuk menampilkan ikon yang sesuai dengan item yang diwakili oleh kartu.
    11. Text:Digunakan untuk menampilkan teks yang sesuai dengan item yang diwakili oleh kartu.
    12. SnackBar: Muncul ketika salah satu kartu ditekan dan memberikan umpan balik kepada pengguna.

## Tugas 8

- [x] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:

    Buat file baru bernama `warkop_form.dart` dan isi dengan kode berikut:
    ```
    class WarkopFormPage extends StatefulWidget {
      const WarkopFormPage({super.key});
    
      @override
      State<WarkopFormPage> createState() => _WarkopFormPageState();
    }
    
    class _WarkopFormPageState extends State<WarkopFormPage> {
      final _formKey = GlobalKey<FormState>();
      @override
      Widget build(BuildContext context) {
        return Scaffold()
    }
    ```

    - [x] Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
  
        Pada file `warkop_form.dart` didalam class `_WarkopFormPageState` isi dengan kode berikut:
        ```
        ...
        final _formKey = GlobalKey<FormState>();
          String _name = "";
          int _price = 0;
          String _description = "";
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Center(
                  child: Text(
                    'Form Tambah Produk',
                  ),
                ),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
              // TODO: Tambahkan drawer yang sudah dibuat di sini
              drawer: const LeftDrawer(),
              body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Nama Produk",
                                labelText: "Nama Produk",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _name = value!;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Harga",
                                labelText: "Harga",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              // TODO: Tambahkan variabel yang sesuai
                              onChanged: (String? value) {
                                setState(() {
                                  _price = int.parse(value!);
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Deskripsi",
                                labelText: "Deskripsi",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  // TODO: Tambahkan variabel yang sesuai
                                  _description = value!;
                                });
                              },
                            ),
                          ),
                        ]
                    )
                ),
              ),
            );
          }    
        ...
        ```
  
    - [x] Memiliki sebuah tombol Save.

        Pada file `warkop_form.dart` didalam class `_WarkopFormPageState`, bagian `return Scaffold(...)` isi dengan kode berikut:
        ```
        ...
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.indigo),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Produk berhasil tersimpan'),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                // TODO: Munculkan value-value lainnya
                                Text('Nama: $_name'),
                                Text('Harga: $_price'),
                                Text('Deskripsi: $_description'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                    _formKey.currentState!.reset();
                  }
                },
                child: const Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
        ),
        ...
        ```  

    - [x] Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
        - [x] Setiap elemen input tidak boleh kosong.

            Pada file `warkop_form.dart` didalam class `_WarkopFormPageState`, bagian `return Scaffold(...)`, dan setiap bagian `child: TextFormField(...)` isi dengan kode berikut:
            ```
            ...
            validator: (String? value) {
                 if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong!";
                }
            return null;
            },
            ...
            ```
  
        - [x] Setiap elemen input harus berisi data dengan tipe data atribut modelnya.

            Pada file `warkop_form.dart` didalam class `_WarkopFormPageState`, bagian `return Scaffold(...)`, bagian `child: TextFormField(...)`, dan bagian `validator: ` khusus untuk `harga` isi dengan kode berikut:
            ```
            ...
            if (int.tryParse(value) == null) {
                return "Harga harus berupa angka!";
            }
            ...
            ```

- [x] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.

    Pada file `menu.dart` didalam class `MyHomePage`, bagian `return Scaffold(...)` isi dengan kode berikut:
    ```
    ...
    drawer: const LeftDrawer(),
    ...
    ```
    Pada file `warkop_card.dart` didalam class `WarkopCard`, bagian `return Material(...)` isi dengan kode berikut:
    ```
    ...
    if (item.name == "Tambah Item") {
        // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => const WarkopFormPage()));
    }
    ...
    ```

- [x] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.

    Pada file `warkop_form.dart` didalam class `_WarkopFormPageState`, bagian `child: Column(...)`, dan bagian `Align(...)` isi dengan kode berikut:
    ```
    ...
    return AlertDialog(
      title: const Text('Produk berhasil tersimpan'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            // TODO: Munculkan value-value lainnya
            Text('Nama: $_name'),
            Text('Harga: $_price'),
            Text('Deskripsi: $_description'),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    ...
    ```

- [x] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
    - [x] Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.

      Pada file `left_drawer.dart` didalam class `LeftDrawer`, bagian `return Drawer(...)` isi dengan kode berikut:
      ```
      ...
      ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              /*
      TODO: Buatlah routing ke ShopFormPage di sini,
      setelah halaman ShopFormPage sudah dibuat.
      */
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WarkopFormPage(),
                  ));
            },
          ),
        ],
      ),
      ...
      ```

    - [x] Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.

        Pada file `left_drawer.dart` didalam class `LeftDrawer`, bagian `return Drawer(...)`, dan bagian `ListTile(...)` khusus untuk bagian `Halaman Utama` isi dengan kode berikut:
        ```
        ...
        onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
              ));
        },
        ...
        ```

    - [x] Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.
        
        Pada file `left_drawer.dart` didalam class `LeftDrawer`, bagian `return Drawer(...)`, dan bagian `ListTile(...)` khusus untuk bagian `Tambah Produk` isi dengan kode berikut:
        ```
        ...
        onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WarkopFormPage(),
                  ));
            },
        ...
        ```

- [x] Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

    1. Navigator.push():
  
       * Metode ini untuk menambahkan halaman baru ke tumpukan navigasi. 
       * Halaman sebelumnya tetap ada dalam tumpukan dan dapat diakses dengan menekan tombol kembali. 
       * Cocok digunakan ketika Anda ingin menyimpan riwayat navigasi atau memungkinkan pengguna untuk kembali ke halaman sebelumnya.

    2. Navigator.pushReplacement(): 
  
       * Metode ini untuk menambahkan halaman baru ke tumpukan navigasi dan menggantikan halaman saat ini dengan halaman baru. 
       * Halaman sebelumnya tidak ada lagi dalam tumpukan, sehingga pengguna tidak dapat kembali ke halaman sebelumnya dengan menekan tombol kembali. 
       * Cocok digunakan ketika Anda ingin menggantikan halaman saat ini dengan halaman baru dan tidak ingin pengguna kembali ke halaman sebelumnya.

- [x] Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    1. Container 
  
       * Container digunakan untuk mengelilingi widget lain dan memberikan properti seperti padding, margin, dan dekorasi.
    
    2. Column dan Row
  
       * Digunakan untuk menata widget secara vertikal (Column) atau horizontal (Row).

    3. ListView dan GridView
  
       * Untuk menampilkan daftar atau grid dari elemen-elemen yang dapat di-scroll.

    4. Stack

       * Memposisikan widget di atas widget lainnya, sering digunakan untuk menumpuk elemen.

    5. Expanded dan Flexible

       * Digunakan di dalam widget seperti Row, Column, atau Flex untuk memberikan ruang yang sesuai berdasarkan proporsi atau prioritas.

    6. SizedBox

       * Digunakan untuk memberikan dimensi tetap pada widget atau sebagai pemisah antara elemen.

- [x] Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

    1. TextFormField untuk `Nama Produk`
  
       * Digunakan untuk mengambil input nama produk. 
       * Menggunakan TextFormField karena merupakan input teks biasa. 
       * Menyediakan dekorasi dengan placeholder ("Nama Produk") dan label ("Nama Produk"). 
       * Menggunakan validasi untuk memastikan bahwa input tidak boleh kosong.

    2. TextFormField untuk `Harga`

       * Digunakan untuk mengambil input harga produk. 
       * Menggunakan TextFormField karena merupakan input teks untuk angka. 
       * Menyediakan dekorasi dengan placeholder ("Harga") dan label ("Harga"). 
       * Menggunakan validasi untuk memastikan bahwa input tidak boleh kosong dan harus berupa angka.

    3. TextFormField untuk `Deskripsi`
  
       * Digunakan untuk mengambil input deskripsi produk. 
       * Menggunakan TextFormField karena merupakan input teks biasa. 
       * Menyediakan dekorasi dengan placeholder ("Deskripsi") dan label ("Deskripsi"). 
       * Menggunakan validasi untuk memastikan bahwa input tidak boleh kosong.

- [x] Bagaimana penerapan clean architecture pada aplikasi Flutter?

    1. Layers (Lapisan):
  
       * Feature Layer (Lapisan Fitur):
       
         * Merupakan lapisan presentasi yang paling bergantung pada framework, termasuk UI dan event handler. 
         * Menggunakan widget Flutter untuk menampilkan elemen pada layar. 
         * Menggunakan pola manajemen state seperti BLoCs, Provider, atau GetX. 
         
       * Domain Layer (Lapisan Domain):
       
         * Merupakan lapisan paling dalam yang tidak bergantung pada lapisan lainnya. 
         * Berisi Entities, Use Cases, dan Repository Interfaces. 
         * Digunakan untuk aturan bisnis aplikasi dan tidak terkait dengan implementasi spesifik Flutter.
         
       * Data Layer (Lapisan Data):
       
         * Merupakan lapisan yang bertanggung jawab atas pengambilan data dari berbagai sumber. 
         * Berisi implementasi repository dari lapisan domain dan data sources seperti API atau database. 
         * Memiliki DTO Models untuk representasi struktur JSON.
         
       * Resources dan Shared Library:
         
         * Resources berisi aset seperti gambar, font, dan konfigurasi lainnya. 
         * Shared Library berisi komponen dan fungsionalitas yang dapat digunakan kembali. 
         * Project Structures (Struktur Proyek):
         * Struktur proyek dapat dibangun dengan variasi, tetapi dalam contoh tersebut, lapisan data dan domain dikelompokkan dalam direktori "core". 
         * Terdapat pembagian direktori untuk setiap fitur (user) dan lapisan (data, domain, presentation).
    
    2. Data Layer (Lapisan Data):
  
       * Merupakan layer yang berurusan langsung dengan data mentah dari berbagai sumber, baik lokal maupun remote. 
       * Menggunakan DTO (Data Transfer Object) untuk berinteraksi dengan data sources. 
       * Berisi implementasi repository yang dihubungkan dengan data sources.

    3. Domain Layer (Lapisan Domain):

       * Merupakan lapisan paling menarik yang mengandung aturan bisnis aplikasi dan entitas. 
       * Terdiri dari use cases, entities, dan repository interfaces. 
       * Independen dari implementasi spesifik dan memungkinkan migrasi antar platform.
    
    4. Feature Layer (Lapisan Fitur):
  
       * Berisi widget dan tampilan untuk UI. 
       * Menggunakan BLoCs atau state management lainnya untuk mengelola logika bisnis. 
       * Controller digunakan untuk memproses logika bisnis dan mengambil data dari use cases.
    
    5. Pemisahan Logika Bisnis:
    
       * Logika bisnis terletak di lapisan domain, memisahkannya dari lapisan presentasi dan data. 
       * Data yang dikirim ke lapisan presentasi hanya berupa entities, bukan DTO.
    
    6. Dependency Injection:
  
       * Menggunakan dependency injection untuk menghubungkan lapisan domain dan data. 
       * Memisahkan implementasi repository dari lapisan domain untuk fleksibilitas dan perawatan yang lebih baik.
    
    7. Kode yang Mudah Dimengerti:
                     
       * Memberikan nama yang jelas pada kelas dan metode. 
       * Struktur proyek membantu pembacaan kode dengan memisahkan tugas-tugas dan mengorganisir kode dengan baik.
    
    8. Tes Unit:
  
       * Menulis tes unit untuk use cases di lapisan domain. 
       * Memastikan kebenaran logika bisnis dan memudahkan refaktor.
       
    9. Sederhana Namun Efektif:
  
       * Fokus pada sederhana namun efektif untuk memudahkan pengembangan dan pemeliharaan. 
       * Struktur proyek membantu pemahaman dan navigasi melalui kode.

## Tugas 9

- [x] Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.

    Pastikan Secret and Variables pada Repository GitHub sudah benar dan tepat lalu pastikan file-file yang dibutuhkan untuk keperluan deployment sudah ada pada file proyek Django.

- [x] Membuat halaman login pada proyek tugas Flutter. 

    Buat file 'login.dart' pada projek Flutter lalu isi dengan kode:
    ```
    import 'package:warkop_kalisetail/screens/menu.dart';
    import 'package:flutter/material.dart';
    import 'package:pbp_django_auth/pbp_django_auth.dart';
    import 'package:provider/provider.dart';
    
    void main() {
      runApp(const LoginApp());
    }
    
    class LoginApp extends StatelessWidget {
      const LoginApp({super.key});
    
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Login',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const LoginPage(),
        );
      }
    }
    
    class LoginPage extends StatefulWidget {
      const LoginPage({super.key});
    
      @override
      _LoginPageState createState() => _LoginPageState();
    }
    
    class _LoginPageState extends State<LoginPage> {
      final TextEditingController _usernameController = TextEditingController();
      final TextEditingController _passwordController = TextEditingController();
    
      @override
      Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                const SizedBox(height: 12.0),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () async {
                    String username = _usernameController.text;
                    String password = _passwordController.text;
    
                    // Cek kredensial
                    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                    // Untuk menyambungkan Android emulator dengan Django pada localhost,
                    // gunakan URL http://10.0.2.2/
                    final response = await request.login("http://10.0.2.2:8000/auth/login/", {
                      'username': username,
                      'password': password,
                    });
    
                    if (request.loggedIn) {
                      String message = response['message'];
                      String uname = response['username'];
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                            SnackBar(content: Text("$message Selamat datang, $uname.")));
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Login Gagal'),
                          content:
                          Text(response['message']),
                          actions: [
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        );
      }
    }
    ```

- [x] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.

    Pada projek Django buat app baru bernama `authentication` lalu install library 'django-cors-headers'. Tambahkan `authentication dan `corsheaders` kedalam `INSTALLED_APPS` di `settings.py`. Tambahkan juga `corsheaders.middleware.CorsMiddleware` pada `settings.py` dan tambahkan beberapa variabel berikut ini:
    ```
    CORS_ALLOW_ALL_ORIGINS = True
    CORS_ALLOW_CREDENTIALS = True
    CSRF_COOKIE_SECURE = True
    SESSION_COOKIE_SECURE = True
    CSRF_COOKIE_SAMESITE = 'None'
    SESSION_COOKIE_SAMESITE = 'None'
    ```
    Buat fungsi `login`, `logout` pada `authentication/views.py` dan lakukan routingnya pada `urls.py`

    Install package berikut ini pada projek Flutter:
    ```
    flutter pub add provider
    flutter pub add pbp_django_auth
    ```
    Lalu ubah class `MyApp` pada `main.dart` menjadi:
    ```
    class MyApp extends StatelessWidget {
      const MyApp({Key? key}) : super(key: key);
    
      @override
      Widget build(BuildContext context) {
        return Provider(
          create: (_) {
            CookieRequest request = CookieRequest();
            return request;
          },
          child: MaterialApp(
              title: 'Flutter App',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                useMaterial3: true,
              ),
              home: LoginPage()),
        );
      }
  }
  ```

- [x] Membuat model kustom sesuai dengan proyek aplikasi Django. 

    Buka endpoint `JSON` pada website Django lalu copy semua data yang ada di endpoint `JSON`. Buka situs web Quicktype dan tempel data `JSON` tadi lalu ubah language menjadi `DART`. Lalu tekan tombol `Copy Code` pada Quicktype.
    
    Pada projek Flutter buat folder baru `lib/models` lalu buat file baru `product.dart` dan tempel kode yang sudah disalin dari Quicktype sehingga menjadi seperti ini:
    ```
    // To parse this JSON data, do
    //
    //     final product = productFromJson(jsonString);
    
    import 'dart:convert';
    
    List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));
    
    String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
    
    class Product {
      String model;
      int pk;
      Fields fields;
    
      Product({
        required this.model,
        required this.pk,
        required this.fields,
      });
    
      factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );
    
      Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
    }
    
    class Fields {
      int user;
      String name;
      int amount;
      int price;
      String description;
    
      Fields({
        required this.user,
        required this.name,
        required this.amount,
        required this.price,
        required this.description,
      });
    
      factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        amount: json["amount"],
        price: json["price"],
        description: json["description"],
      );
    
      Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "amount": amount,
        "price": price,
        "description": description,
      };
    }
    ```

- [x] Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy. 
        
    Pada projek Flutter buat file `list_product.dart` lalu isi dengan kode:
    ```
    import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;
    import 'dart:convert';
    import 'package:warkop_kalisetail/models/product.dart';
    import 'package:warkop_kalisetail/screens/detail_product.dart';
    import 'package:warkop_kalisetail/widgets/left_drawer.dart';
    
    class ProductPage extends StatefulWidget {
      const ProductPage({Key? key}) : super(key: key);
    
      @override
      _ProductPageState createState() => _ProductPageState();
    }
    
    class _ProductPageState extends State<ProductPage> {
      Future<List<Product>> fetchProduct() async {
        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
        var url = Uri.parse(
            'http://10.0.2.2:8000/json/');
        var response = await http.get(
          url,
          headers: {"Content-Type": "application/json"},
        );
    
        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));
    
        // melakukan konversi data json menjadi object Product
        List<Product> list_product = [];
        for (var d in data) {
          if (d != null) {
            list_product.add(Product.fromJson(d));
          }
        }
        return list_product;
      }
    }
    ```
    
  - [x] Tampilkan name, amount, dan description dari masing-masing item pada halaman ini.

        Pada file `list_product.dart` tambahkan kode:
        ```
        ...
        @override
          Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(
                  title: const Text('Product'),
                ),
                drawer: const LeftDrawer(),
                body: FutureBuilder(
                    future: fetchProduct(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.data == null) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        if (!snapshot.hasData) {
                          return const Column(
                            children: [
                              Text(
                                "Tidak ada data produk.",
                                style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                              ),
                              SizedBox(height: 8),
                            ],
                          );
                        } else {
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (_, index) => Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${snapshot.data![index].fields.name}",
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text("${snapshot.data![index].fields.amount}"),
                                    const SizedBox(height: 10),
                                    Text(
                                        "${snapshot.data![index].fields.description}"),
                                  ],
                                ),
                              ));
                        }
                      }
                    }));
          }
        ...
        ```

- [x] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item. 

    Pada projek Flutter buat file baru `detail_product.dart` lalu isi dengan kode:
    ```
    import 'dart:ui';
    import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;
    import 'dart:convert';
    import 'package:warkop_kalisetail/models/product.dart';
    import 'package:warkop_kalisetail/widgets/left_drawer.dart';
    import 'package:warkop_kalisetail/screens/list_product.dart';
    
    
    
    class DetailProductPage extends StatelessWidget {
      const DetailProductPage({Key? key, required this.id}) : super(key: key);
      final int id;
    
      Future<List<Product>> fetchProduct() async {
        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
        var url = Uri.parse(
            'http://10.0.2.2:8000/json/${id}');
        var response = await http.get(
          url,
          headers: {"Content-Type": "application/json"},
        );
    
        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));
    
        // melakukan konversi data json menjadi object Product
        List<Product> list_product = [];
        for (var d in data) {
          if (d != null) {
            list_product.add(Product.fromJson(d));
          }
        }
        return list_product;
      }
    }
    ```

    - [x] Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
  
        Pada file `list_product.dart` tambahkan kode berikut ini di bagian `return ListView.builder(...)`:
        ```
        ...
         ElevatedButton(
            onPressed: () async {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DetailProductPage(id: snapshot.data![index].pk)),
              );
            },
            child: const Text('Detail Product'),
          ),
        ...
        ```

      - [x] Tampilkan seluruh atribut pada model item kamu pada halaman ini. 
  
          Pada file `detail_product.dart` tambahkan kode berikut ini:
          ```
          ...
          @override
            Widget build(BuildContext context) {
              return Scaffold(
                  appBar: AppBar(
                    title: const Text('Detail Product'),
                  ),
                  drawer: const LeftDrawer(),
                  body: FutureBuilder(
                      future: fetchProduct(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.data == null) {
                          return const Center(child: CircularProgressIndicator());
                        } else {
                          if (!snapshot.hasData) {
                            return const Column(
                              children: [
                                Text(
                                  "Tidak ada data produk.",
                                  style:
                                  TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                                ),
                                SizedBox(height: 8),
                              ],
                            );
                          } else {
                            return ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (_, index) => Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${snapshot.data![index].fields.name}",
                                        style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text("Amount: ${snapshot.data![index].fields.amount}"),
                                      const SizedBox(height: 10),
                                      Text("Price: ${snapshot.data![index].fields.price}"),
                                      const SizedBox(height: 10),
                                      Text(
                                          "${snapshot.data![index].fields.description}"),
                                    ],
                                  ),
                                ));
                          }
                        }
                      }));
            }
          ...
          ```

      - [x] Tambahkan tombol untuk kembali ke halaman daftar item. 

          Pada file `list_product.dart` tambahkan kode berikut ini di bagian `return Scaffold(...)`:
          ```
          ...
          ElevatedButton(
              onPressed: () async {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ProductPage()),
                );
              },
              child: const Text('Kembali'),
            ),
          ...
          ```

- [x] Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON? 
    
    Ya, Dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Secara umum, ini dikenal sebagai deserialization atau parsing JSON. Dalam Flutter, dapat dilakukan dengan menggunakan library seperti dart:convert.

    Namun, membuat model (biasanya dalam bentuk Dart class) dapat memberikan beberapa keuntungan, terutama jika struktur JSON kompleks dan perlu mengelola data dengan lebih terstruktur. Beberapa keuntungan membuat model meliputi:

  1. Type Safety: Dengan membuat model, dapat menggunakan sistem tipe Dart untuk memastikan bahwa tipe data yang diharapkan sesuai dengan yang sebenarnya.
  2. Readibility Code yang Lebih Baik:  Membuat model dapat membuat kode lebih mudah dibaca dan dimengerti, terutama jika ada banyak properti.
  3. Refaktorisasi Kode yang Lebih Mudah:  Jika struktur data berubah, refaktorisasi kode dapat lebih mudah dengan menggunakan model, karena perubahan hanya perlu dilakukan di satu tempat.

    Jadi jika ingin cepat dalam membuat program lebih baik tidak usah membuat model tetapi jika kode ingin lebih rapih, mudah dikembangkan, dan aman untuk kedepannya lebih baik membuat model.

- [x] Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter. 

    CookieRequest adalah kelas yang digunakan untuk mengirim permintaan HTTP dengan cookie. Ketika permintaan HTTP dikirim, cookie dapat disertakan dalam permintaan tersebut. Ini memungkinkan server untuk mengidentifikasi pengguna yang terautentikasi dan menyimpan informasi tentang sesi pengguna. 

    Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter karena ini memungkinkan setiap komponen untuk mengakses cookie yang sama. Dengan cara ini, setiap komponen dapat mengakses informasi yang sama tentang pengguna yang terautentikasi dan sesi pengguna. Ini sangat penting dalam aplikasi yang memerlukan otentikasi pengguna.

- [x] Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter. 

  1. Mendapatkan Data JSON: Data JSON dapat diperoleh dari berbagai sumber, seperti API web, penyimpanan lokal, atau input pengguna. Pada umumnya, menggunakan metode seperti HTTP requests untuk mengambil data JSON dari server.
  2. Mengubah JSON menjadi Objek Dart: Setelah mendapatkan data JSON, ubah menjadi objek Dart agar dapat dengan mudah digunakan dalam Flutter. Dart menyediakan pustaka dart:convert yang berisi fungsi json.decode untuk mengubah string JSON menjadi objek Dart.
  3. Membuat Model Dart: Membuat model Dart yang mencerminkan struktur data JSON. Ini membantu dalam mendefinisikan tipe data dan memberikan kejelasan pada kode.
  4. Deserialisasi Objek Dart: Melakukan deserialisasi (mengonversi) data JSON menjadi objek Dart menggunakan model tersebut.
  5. Menampilkan Data pada Flutter UI: Menampilkan data tersebut pada antarmuka pengguna Flutter. Ini melibatkan pembuatan widget yang menggunakan nilai dari objek Dart tersebut.

- [x] Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter. 

  1. Input Data Akun pada Flutter: Pengguna memasukkan informasi akun, seperti nama pengguna dan kata sandi, melalui antarmuka pengguna Flutter.
  2. Pengiriman Permintaan Autentikasi ke Django: Setelah mendapatkan informasi akun dari pengguna, Flutter mengirim permintaan autentikasi ke backend Django. Permintaan ini umumnya menggunakan metode HTTP POST dan mengandung data akun, seperti nama pengguna dan kata sandi.
  3. Proses Autentikasi oleh Django: Backend Django menerima permintaan autentikasi, memeriksa kevalidan informasi akun, dan mengembalikan respons. Django umumnya menggunakan mekanisme seperti JSON Web Token (JWT) atau sesi untuk mengelola status otentikasi pengguna.
  4. Penanganan Respons dan Menampilkan Menu pada Flutter: Setelah menerima respons dari Django, Flutter menangani respons tersebut dan mengambil tindakan sesuai. Jika autentikasi berhasil, pengguna dapat diarahkan ke layar menu atau antarmuka pengguna lainnya.

- [x] Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

  1. Scaffold: Kerangka dasar aplikasi Flutter. 
  2. AppBar: Baris judul di bagian atas layar. 
  3. LeftDrawer: Widget kustom yang kemungkinan berisi navigasi atau tautan. 
  4. FutureBuilder: Menggunakan hasil dari Future (fetchProduct()) untuk membangun antarmuka pengguna berdasarkan status Future. 
  5. Column: Wadah vertikal untuk tata letak. 
  6. ListView.builder: Membuat daftar elemen dengan jumlah dinamis. 
  7. Container: Wadah elemen-elemen UI dengan margin dan padding. 
  8. Text: Menampilkan teks pada antarmuka pengguna. 
  9. SizedBox: Memberikan spasi vertikal. 
  10. ElevatedButton: Tombol dengan latar belakang yang diangkat, digunakan untuk kembali ke halaman produk.