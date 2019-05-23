CREATE TABLE acara (
  id_acara int PRIMARY KEY,
  nama_acara varchar,
  lokasi varchar
);

CREATE TABLE peminjam (
  npm int PRIMARY KEY,
  nama varchar,
  gender char(1)
);

CREATE TABLE petugas (
  id_petugas int PRIMARY KEY,
  nama_petugas varchar,
  gender char
);

CREATE TABLE barang (
  id_barang int PRIMARY KEY,
  nama_barang varchar,
  kategori varchar,
  jumlah_barang int
);

CREATE TABLE waktu_pinjam (
  id_waktupinjam int PRIMARY KEY,
  hari_pinjam varchar,
  tanggal_pinjam date,
  bulan_pinjam date,
  tahun_pinjam date
);

CREATE TABLE waktu_kembali (
  id_waktukembali int PRIMARY KEY,
  hari_kembali varchar,
  tanggal_kembali date,
  bulan_kembali date,
  tahun_kembali date
);

CREATE TABLE transaksi (
  id_transaksi int PRIMARY KEY,
  npm int references peminjam,
  id_petugas int references petugas,
  id_barang int references barang,
  id_waktupinjam int references waktu_pinjam,
  id_acara int references acara,
  id_waktukembali int references waktu_kembali,
  jumlah_pinjam int
);

INSERT INTO acara values (01,'Forsi','Gor Jati');
INSERT INTO acara values (02,'Unpad Awards','Graha Sanusi');
INSERT INTO acara values (03,'Padjadjaran Education Festival','Lapangan Parkir PPBS');


INSERT INTO peminjam values (140810160019,'Herizal Kurniawan','L');
INSERT INTO peminjam values (140810160021,'Ilham Kusuma Aji','L');
INSERT INTO peminjam values (140810160019,'Herizal Kurniawan','L');
INSERT INTO peminjam values (140810160019,'Herizal Kurniawan','L');


INSERT INTO petugas values (01,'Suparman','L');
INSERT INTO petugas values (02,'Suprapto','L');


INSERT INTO barang values (01,'Proyektor','Elektronik',50);
INSERT INTO barang values (02,'Speaker','Elektronik',30);

INSERT INTO waktu_pinjam values (01,'Senin','',50);
INSERT INTO waktu_pinjam values (01,'Senin','',50);

INSERT INTO waktu_kembali values (01,'Senin','',50);
INSERT INTO waktu_kembali values (01,'Senin','',50);

INSERT INTO transaksi values (01,'Senin','',50);



ALTER TABLE "transaksi" ADD FOREIGN KEY ("npm") REFERENCES "peminjam" ("npm");

ALTER TABLE "transaksi" ADD FOREIGN KEY ("id_petugas") REFERENCES "petugas" ("id_petugas");

ALTER TABLE "transaksi" ADD FOREIGN KEY ("id_barang") REFERENCES "barang" ("id_barang");

ALTER TABLE "transaksi" ADD FOREIGN KEY ("id_waktupinjam") REFERENCES "waktu_pinjam" ("id_waktupinjam");

ALTER TABLE "transaksi" ADD FOREIGN KEY ("id_waktukembali") REFERENCES "waktu_kembali" ("id_waktukembali");

ALTER TABLE "transaksi" ADD FOREIGN KEY ("id_acara") REFERENCES "acara" ("id_acara");