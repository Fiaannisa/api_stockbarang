'use strict';

var response = require('./res');
var connection = require('./koneksi');

exports.index = function (req, res) {
    response.ok("Project UTS Rest API berjalan!", res)
};

//menampilkan data barang
exports.tampildatabarang = function (req, res) {
    connection.query('SELECT * FROM barang', function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res)
        }
    });
};

//menampilkan data distributor
exports.tampildistributor = function (req, res) {
    connection.query('SELECT * FROM distributor', function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res)
        }
    });
};

//menampilkan data barang masuk
exports.tampilbarangmasuk = function (req, res) {
    connection.query('SELECT * FROM barang_masuk', function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res)
        }
    });
};

//menampilkan data barang keluar
exports.tampilbarangkeluar = function (req, res) {
    connection.query('SELECT * FROM barang_keluar', function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res)
        }
    });
};


//menambahkan data barang
exports.tambahBarang = function (req, res) {
    var kode_barang = req.body.kode_barang;
    var merk = req.body.merk;
    var kategori = req.body.kategori;
    var nama_barang = req.body.nama_barang;
    var stock = req.body.stock;
    var harga_persatuan = req.body.harga_persatuan;

    connection.query('INSERT INTO barang (kode_barang,merk,kategori,nama_barang,stock,harga_Persatuan) VALUES(?,?,?,?,?,?)',
        [kode_barang, merk, kategori, nama_barang, stock, harga_persatuan],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Menambahkan Data!", res)
            }
        });
};
//menambahkan data distributor
exports.tambahDistributor = function (req, res) {
    var kode_distributor = req.body.kode_distributor;
    var nama_distributor = req.body.nama_distributor;
    var no_telp = req.body.no_telp;
    var alamat = req.body.alamat;

    connection.query('INSERT INTO distributor (kode_distributor,nama_distributor,no_telp,alamat) VALUES(?,?,?,?)',
        [kode_distributor, nama_distributor, no_telp, alamat],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Menambahkan Data!", res)
            }
        });
};


//menambahkan data barang masuk
exports.tambahBarangmasuk = function (req, res) {
    var no_notamasuk = req.body.no_notamasuk;
    var tanggal = req.body.tanggal;
    var nama_distributor = req.body.nama_distributor;
    var id_barang = req.body.id_barang;
    var merk = req.body.merk;
    var kategori = req.body.kategori;
    var nama_barang = req.body.nama_barang;
    var jumlah = req.body.jumlah;
    var harga_persatuan = req.body.harga_persatuan;

    connection.query('INSERT INTO barang_masuk (no_notamasuk, tanggal, nama_distributor, id_barang, merk, kategori, nama_barang, jumlah, harga_persatuan) VALUES(?,?,?,?,?,?,?,?,?)',
        [no_notamasuk, tanggal, nama_distributor, id_barang, merk, kategori, nama_barang, jumlah, harga_persatuan],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Menambahkan Data!", res)
            }
        });
};


//menambahkan data barang keluar
exports.tambahBarangkeluar = function (req, res) {
    var no_notakeluar = req.body.no_notakeluar;
    var tanggal = req.body.tanggal;
    var id_barang = req.body.id_barang;
    var merk = req.body.merk;
    var nama_barang = req.body.nama_barang;
    var jumlah = req.body.jumlah;
    var harga_persatuan = req.body.harga_persatuan;

    connection.query('INSERT INTO barang_keluar (no_notakeluar, tanggal, id_barang, merk, nama_barang, jumlah, harga_persatuan) VALUES(?,?,?,?,?,?,?)',
        [no_notakeluar, tanggal, id_barang, merk, nama_barang, jumlah, harga_persatuan],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Menambahkan Data!", res)
            }
        });
};


//mengubah data barang
exports.ubahbarang = function (req, res) {
    var id = req.body.id_barang;
    var kode_barang = req.body.kode_barang;
    var merk = req.body.merk;
    var kategori = req.body.kategori;
    var nama_barang = req.body.nama_barang;
    var stock = req.body.stock;
    var harga_persatuan = req.body.harga_persatuan;

    connection.query('UPDATE barang SET kode_barang=?, merk=?, kategori=?, nama_barang=?, stock=?, harga_persatuan=? WHERE id_barang=?', [kode_barang, merk, kategori, nama_barang, stock, harga_persatuan, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Ubah Data", res)
            }
        });
}


//mengubah data distributor
exports.ubahdistributor = function (req, res) {
    var id = req.body.id_distributor;
    var kode_distributor = req.body.kode_distributor;
    var nama_distributor = req.body.nama_distributor;
    var no_telp = req.body.no_telp;
    var alamat = req.body.alamat;

    connection.query('UPDATE distributor SET kode_distributor=?, nama_distributor=?, no_telp=?, alamat=? WHERE id_distributor=?', [kode_distributor, nama_distributor, no_telp, alamat, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Ubah Data", res)
            }
        });
}

//mengubah data barang masuk
exports.ubahbarangmasuk = function (req, res) {
    var id = req.body.no_notamasuk;
    var tanggal= req.body.tanggal;
    var nama_distributor = req.body.nama_distributor;
    var id_barang = req.body.id_barang;
    var merk = req.body.merk;
    var kategori = req.body.kategori;
    var nama_barang= req.body.nama_barang;
    var jumlah = req.body.jumlah;
    var harga_persatuan = req.body.harga_persatuan;

    connection.query('UPDATE barang_masuk SET tanggal=?, nama_distributor=?, id_barang=?, merk=?, kategori=?, nama_barang=?, jumlah=?, harga_persatuan=? WHERE no_notamasuk=?', [tanggal, nama_distributor, id_barang, merk, kategori, nama_barang, jumlah, harga_persatuan, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Ubah Data", res)
            }
        });
}


//ubah data barang keluar
exports.ubahbarangkeluar = function (req, res) {
    var id = req.body.no_notakeluar;
    var tanggal= req.body.tanggal;
    var id_barang = req.body.id_barang;
    var merk = req.body.merk;
    var nama_barang= req.body.nama_barang;
    var jumlah = req.body.jumlah;
    var harga_persatuan = req.body.harga_persatuan;

    connection.query('UPDATE barang_keluar SET tanggal=?, id_barang=?, merk=?, nama_barang=?, jumlah=?, harga_persatuan=? WHERE no_notakeluar=?', [tanggal, id_barang, merk, nama_barang, jumlah, harga_persatuan, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Ubah Data", res)
            }
        });
}









//hapus data barang
exports.hapusBarang = function (req, res) {
    var id = req.body.id_barang;
    connection.query('DELETE FROM barang WHERE id_barang=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Hapus Data", res)
            }
        });
}
//hapus data distributor
exports.hapusdistributor = function (req, res) {
    var id = req.body.id_distributor;
    connection.query('DELETE FROM distributor WHERE id_distributor=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Hapus Data", res)
            }
        });
};

//hapus data barang masuk
exports.hapusBarangmasuk = function (req, res) {
    var id = req.body.no_notamasuk;
    connection.query('DELETE FROM barang_masuk WHERE no_notamasuk=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Hapus Data", res)
            }
        });
}

//hapus data barang keluar
exports.hapusBarangkeluar = function (req, res) {
    var id = req.body.no_notakeluar;
    connection.query('DELETE FROM barang_keluar WHERE no_notakeluar=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Hapus Data", res)
            }
        });
}






exports.tampilberdasarkanid = function (req, res) {
    let id = req.params.id;
    connection.query('SELECT * FROM barang WHERE merk = ?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok(rows, res);
            }
        });
};

exports.tampilkaryawan = function (req, res) {
    connection.query('SELECT * FROM karyawan', function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res)
        }
    });
};

exports.ubahkaryawan = function (req, res) {
    var id = req.body.id_karyawan;
    var nik = req.body.nik;
    var nama = req.body.nama;
    var email = req.body.email;
    var jenis_kelamin = req.body.jenis_kelamin;
    var jabatan = req.body.jabatan;
    var alamat = req.body.alamat;
    var password = req.body.password;

    connection.query('UPDATE karyawan SET nik=?, nama=?, email=?, jenis_kelamin=?, jabatan=?, alamat=?, password=? WHERE id_karyawan=?', [nik, nama, email, jenis_kelamin, jabatan, alamat, password, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Ubah Data", res)
            }
        });
}

exports.tambahkaryawan = function (req, res) {
    var nik = req.body.nik;
    var nama = req.body.nama;
    var email = req.body.email;
    var jenis_kelamin = req.body.jenis_kelamin;
    var jabatan = req.body.jabatan;
    var alamat = req.body.alamat;
    var password = req.body.password;

    connection.query('INSERT INTO karyawan (nik, nama, email, jenis_kelamin, jabatan, alamat, password) VALUES(?,?,?,?,?,?,?)',
        [nik, nama, email, jenis_kelamin, jabatan, alamat, password],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Menambahkan Data!", res)
            }
        });
};

exports.hapuskaryawan = function (req, res) {
    var id = req.body.id_karyawan;
    connection.query('DELETE FROM karyawan WHERE id_karyawan=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Hapus Data", res)
            }
        });
}


exports.tampilberdasarkannik= function (req, res) {
    let id = req.params.id;
    connection.query('SELECT * FROM karyawan WHERE nik = ?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok(rows, res);
            }
        });
};