@extends('home')
@section('content')
<style>
  .btn {
    background-color: DodgerBlue;
    border: none;
    color: white;
    padding: 12px 16px;
    font-size: 16px;
    cursor: pointer;
  }

  /* Darker background on mouse-over */
  .btn:hover {
    background-color: RoyalBlue;
  }
</style>
<div class="container">
  <div class="row">
    <h1> Kasir Pembayaran </h1>
    <h3>12-12-2012</h3>
    <h1>DJB-150700005</h1>
    <div class="col-sm-4">
      <label class="">Pelanggan :</label>
      <div class="">
        <input type="text" class="form-control" placeholder="Sumarni">
        <br>
      </div>
    </div>
    <br>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th scope="col">No.</th>
          <th scope="col">Nama Barang</th>
          <th scope="col">Jumlah</th>
          <th scope="col">Harga Satuan</th>
          <th scope="col">Diskon</th>
          <th scope="col">Total</th>
          <th scope="col">Keterangan</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Besi</td>
          <td>10</td>
          <td>Ro.1000</td>
          <td>Ro.5.000</td>
          <td>Rp.5.000</td>
          <td></td>
          <td><button class="btn"><i class="fa fa-trash"></i> Hapus</button></td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Baja</td>
          <td>20</td>
          <td>Ro.2000</td>
          <td>Rp.0</td>
          <td>Rp.40.000</td>
          <td></td>
          <td><button class="btn"><i class="fa fa-trash"></i> Hapus</button></td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Kayu</td>
          <td>30</td>
          <td>Ro.3000</td>
          <td>Rp.0</td>
          <td>Rp.9000</td>
          <td></td>
          <td><button class="btn"><i class="fa fa-trash"></i> Hapus</button></td>
        </tr>
        <tr>
          <th scope="row">4</th>
          <td><button class="fa fa-plus"></button></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>

        </tr>
      </tbody>
    </table>

    <div class="text-right col-md-10">
      <label>Metode Pembayaran : </label>
      <label class="checkbox-inline"><input type="checkbox" value="">Cash</label>
      <label class="checkbox-inline"><input type="checkbox" value="">Kartu Debit</label>
      <label class="checkbox-inline"><input type="checkbox" value="">Kartu Kredit</label>
      <h1>Total : Rp.54.000 </h1>
    </div>
    <button class=" btn btn-primary btn-sm btn-block"><i class="fa fa-save"></i> Simpan</button>
  </div>

</div>
@endsection