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
<div class="form-group col-md-4">
  <h2> Konfirmasi return Surat Jalan </h2>
  <h1> RSJ-031900001 </h1>
  <h3>Supplier : Sumarni</h3>
  <h3>Gudang : Dinoyo</h3>
</div>

<div class="form-group col-md-4">
  <label class="control-label col-md-3">Nomer RSJ</label>
  <div class="col-md-10">
    <select class="form-control">
      <option> RSJ-031900001 </option>
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
      <th scope="col">Total</th>
      <th scope="col">Keterangan</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>23</td>
      <td>543</td>
      <td>555</td>
      <td>Done</td>

    </tr>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>23</td>
      <td>123</td>
      <td>123</td>
      <td>Done</td>

    </tr>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>23</td>
      <td>123</td>
      <td>123</td>
      <td>Done</td>

    </tr>
  </tbody>
</table>
@endsection