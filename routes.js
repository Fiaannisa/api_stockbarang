'use strict';

module.exports = function (app) {
    var jsonku = require('./controller');

    app.route('/')
        .get(jsonku.index);

    app.route('/tampil')
        .get(jsonku.tampildatabarang);

    app.route('/tampildis')
        .get(jsonku.tampildistributor);
//menambahkan data barang
    app.route('/tambahbarang')
        .post(jsonku.tambahBarang);
//menambahkan data distributor
    app.route('/tambahdistributor')
        .post(jsonku.tambahDistributor);
//mengubah data barang
    app.route('/ubahbarang')
        .put(jsonku.ubahbarang)
//mengubah data distributor
    app.route('/ubahdistributor')
        .put(jsonku.ubahdistributor)
//hapus data barang
    app.route('/hapus')
        .delete(jsonku.hapusBarang)
//hapus data distributor
    app.route('/hapusdistributor')
        .delete(jsonku.hapusdistributor)

//menampilkan data barang masuk
    app.route('/tampilbarangmasuk')
        .get(jsonku.tampilbarangmasuk)

//menampilkan data barang keluar
    app.route('/tampilbarangkeluar')
        .get(jsonku.tampilbarangkeluar)

//menambahkan data barang masuk
    app.route('/tambahbarangmasuk')
        .post(jsonku.tambahBarangmasuk)

//menambahkan data barang keluar
    app.route('/tambahbarangkeluar')
        .post(jsonku.tambahBarangkeluar)

//mengubah data barangmasuk
    app.route('/ubahbarangmasuk')
        .put(jsonku.ubahbarangmasuk)

//ubah data barang keluar
    app.route('/ubahbarangkeluar')
        .put(jsonku.ubahbarangkeluar)
//hapus data barang masuk
    app.route('/hapusbarangmasuk')
        .delete(jsonku.hapusBarangmasuk)

//hapus data barang masuk
    app.route('/hapusbarangkeluar')
        .delete(jsonku.hapusBarangkeluar)
//tampil berdasarkan merk
    app.route('/tampil/:id')
        .get(jsonku.tampilberdasarkanid)
//tampil karyawan
    app.route('/tampilkaryawan')
        .get(jsonku.tampilkaryawan)
//ubah karyawan
    app.route('/ubahkaryawan')
        .put(jsonku.ubahkaryawan)
//tambah karyawan
    app.route('/tambahkaryawan')
        .post(jsonku.tambahkaryawan)
//hapus karyawan
    app.route('/hapuskaryawan')
        .delete(jsonku.hapuskaryawan)

        app.route('/tampil/:id')
        .get(jsonku.tampilberdasarkannik)
}
