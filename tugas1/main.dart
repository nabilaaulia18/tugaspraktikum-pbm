// Variabel
String nama = 'Nabila';
int year = 2002;
var ipk = 3.8;
var warna = ['Peach', 'Pink', 'Hitam', 'Cream'];
var mountain = {
  'tags': ['Mountain'],
  'url': 'gunung.jpg'
};

// Loop
void loop() {
  int i;
  for (i = 0; i <= 10; i++) {
    print('*' * i);
  }
}

// List
void list() {
  var lst = new List.filled(3, 0);
  lst[0] = 18;
  lst[1] = 04;
  lst[2] = 02;
  print(lst);
}

// Map
void map() {
  var benda = {
    'Kursi': 'Furniture',
    'Laptop': 'Elektronik',
    'Televisi': 'Elektronik',
    'Meja': 'Furniture',
    'Lemari': 'Furniture',
    'Radio': 'Elektronik'
  };
  print(benda);
}

// Set
void set() {
  var makanan = <String>{"Gado-gado", "Soto", "Siomay", "Cilok"};
  print("Makanan tradisional : $makanan");
}

// Seleksi Kondisi
void seleksiKondisi(double ipk, String matkul) {
  if (ipk >= 3.5 && matkul == "Tidak") {
    print("cumlaude");
  } else if (ipk <= 3.5) {
    print("tidak cumlaude");
  }
}

void main(List<String> args) {
  loop();
  list();
  map();
  set();
  seleksiKondisi(4, "Tidak");
}
