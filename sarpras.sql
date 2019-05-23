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
INSERT INTO acara values (04,'Informatics Festival','Graha Sanusi');
INSERT INTO acara values (05,'Technopreneur','Gedung 2 Hukum');
INSERT INTO acara values (06,'Minang Debat Art Festival','Graha Sanusi');
INSERT INTO acara values (07,'Reuni Alumni UPBM','Bale Basket');
INSERT INTO acara values (08,'Statistics Day','Lapangan Parkir PPBS');
INSERT INTO acara values (09,'Parafest','Lapangan Eks Kopma');
INSERT INTO acara values (10,'Market Town','Lapangan Eks Kopma');
INSERT INTO acara values (11,'Prabu','Gor Jati');
INSERT INTO acara values (12,'Olahraga Bersama Himatif','Gor Jati');
INSERT INTO acara values (13,'TEDXUnpad','Bale Santika');
INSERT INTO acara values (14,'MIPA Award','Bale Santika');
INSERT INTO acara values (15,'Seminar Aku Project','Bale Rumawa');
INSERT INTO acara values (16,'Forsi','Gor Jati');
INSERT INTO acara values (17,'Seminar Kewirausahaan BEM MIPA','Aula PPBS');
INSERT INTO acara values (18,'Kumpul Alumni Informatika','Aula PPBS');
INSERT INTO acara values (19,'Intention','Arboretum');
INSERT INTO acara values (20,'Seminar Kesekretariatan','UDJT0201');

INSERT INTO peminjam values (140810160019,'HERIZAL KURNIAWAN','L');
INSERT INTO peminjam values (140810160021,'ILHAM KUSUMA AJI','L');
INSERT INTO peminjam values (210510160082,'KINANTI SOPHIA RAMADHAN','P');
INSERT INTO peminjam values (210210160007,'SITI HAWA AMALIA','P');
INSERT INTO peminjam values (170104160042,'JERICHO MANUEL','L');
INSERT INTO peminjam values (180410160048,'ERES FERRO BASTIAN','L');
INSERT INTO peminjam values (140410160025,'ABIGAIL MARUANAYA','P');
INSERT INTO peminjam values (240110160117,'KEMAL MAULANA RAHMAN SUHAENDI P','L');
INSERT INTO peminjam values (240210160077,'BELLA AMALIA HARINDIRA','P');
INSERT INTO peminjam values (120310160016,'YUSUF RAHMAT ABDILLAH','L');
INSERT INTO peminjam values (120210160005,'MUHAMMAD IBNU FEBRYAN RUSLAN','L');
INSERT INTO peminjam values (130104160020,'NENG FITRI','P');
INSERT INTO peminjam values (170410160082,'ELVA NURFAUZIAH','P');
INSERT INTO peminjam values (140910160023,'DIMAS ADRIAN MUKTI','L');
INSERT INTO peminjam values (240210160045,'MUHAMMAD ARIJUDDIN','L');
INSERT INTO peminjam values (120104160055,'SISKA HAIBAH','P');
INSERT INTO peminjam values (170204160049,'LATHIFA METRYLIA','P');
INSERT INTO peminjam values (180510160068,'YOGA HEDIASA','L');
INSERT INTO peminjam values (240210160075,'NADILA ZULFA FITHRIYAH','P');
INSERT INTO peminjam values (210410160001,'DINAR NAFRASANIA','P');


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