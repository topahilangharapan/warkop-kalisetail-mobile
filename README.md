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
                    builder: (context) => MyHomePage(),
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


