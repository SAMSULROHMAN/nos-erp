@extends('home')
@section('content')
<div class="container">
  <div class="row">
    <div class="form-group col-md-4">
      <h1> P.O Dikirim </h1>
      <h1> PO-150700005 </h1>
      <h3>Supplier : Sumarni</h3>
      <h3>Gudang : Dinoyo</h3>
    </div>

    <div class="form-group col-md-4">
      <label class="control-label col-md-3">Nomer P.O</label>
      <div class="col-md-10">
        <select class="form-control">
          <option>PO-150700005 </option>
          <option></option>
        </select>
        <input type="text" class="form-control col-md-10" placeholder="">
      </div>
    </div>

    <div class="form-group col-md-4">
      <label class="control-label col-md-5">Tanggal</label>
      <div class="col-md-10">
        <input type="text" class="form-control" placeholder="">
      </div>
    </div>

    <div class="form-group col-md-4">
      <label class="control-label col-md-5">Keterangan</label>
      <div class="col-md-10">
        <textarea id="keterangan" class="form-control rounded-0"></textarea>
      </div>
    </div>
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
          <th scope="col">Status</th>
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
          <td>CLS</td>

        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Baja</td>
          <td>20</td>
          <td>Ro.2000</td>
          <td>Rp.0</td>
          <td>Rp.40.000</td>
          <td></td>
          <td>CLS</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Kayu</td>
          <td>30</td>
          <td>Ro.3000</td>
          <td>Rp.0</td>
          <td>Rp.9000</td>
          <td></td>
          <td>CLS</td>
        </tr>
      </tbody>
    </table>
    <div class="text-right col-md-10">
      <h1>Total : Rp.54.000 </h1>
    </div>

  </div>
</div>
@endsection