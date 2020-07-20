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

    app.route('/hapus')
        .delete(jsonku.hapusBarang)

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


    app.route('/ubahbarangmasuk')
        .put(jsonku.ubahbarangmasuk)


    app.route('/ubahbarangkeluar')
        .put(jsonku.ubahbarangkeluar)

    app.route('/hapusbarangmasuk')
        .delete(jsonku.hapusBarangmasuk)


    app.route('/hapusbarangkeluar')
        .delete(jsonku.hapusBarangkeluar)

    app.route('/tampil/:id')
        .get(jsonku.tampilberdasarkanid)

    app.route('/tampilkaryawan')
        .get(jsonku.tampilkaryawan)

    app.route('/ubahkaryawan')
        .put(jsonku.ubahkaryawan)

    app.route('/tambahkaryawan')
        .post(jsonku.tambahkaryawan)

    app.route('/hapuskaryawan')
        .delete(jsonku.hapuskaryawan)

        app.route('/tampil/:id')
        .get(jsonku.tampilberdasarkannik)
}
