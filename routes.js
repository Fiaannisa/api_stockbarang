'use strict';

module.exports = function (app) {
    var jsonku = require('./controller');

    app.route('/')
        .get(jsonku.index);

    app.route('/tampil')
        .get(jsonku.tampildatabarang);

    app.route('/tampildis')
        .get(jsonku.tampildistributor);

    app.route('/tambahbarang')
        .post(jsonku.tambahBarang);

    app.route('/tambahdistributor')
        .post(jsonku.tambahDistributor);

    app.route('/ubahbarang')
        .put(jsonku.ubahbarang)

    app.route('/ubahdistributor')
        .put(jsonku.ubahdistributor)

    app.route('/hapus')
        .delete(jsonku.hapusBarang)

    app.route('/hapusdistributor')
        .delete(jsonku.hapusdistributor)


    app.route('/tampilbarangmasuk')
        .get(jsonku.tampilbarangmasuk)


    app.route('/tampilbarangkeluar')
        .get(jsonku.tampilbarangkeluar)


    app.route('/tambahbarangmasuk')
        .post(jsonku.tambahBarangmasuk)


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