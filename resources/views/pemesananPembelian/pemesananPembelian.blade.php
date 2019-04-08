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
<!-- page content -->
<br><br><br>
<div class="container">
  <div class="row">
    <h1>Sell Order  </h1>
    <h1> PO-150700005 </h1>

    <div class="form-group col-md-4">
      <label class="control-label col-md-3">Supplier :</label>
      <div class="col-md-10">
        <select class="form-control">
          <option>Sumarni</option>
          <option>Budi</option>
        </select>
      </div>
    </div>

    <div class="form-group col-md-4">
      <label class="control-label col-md-3">Gudang :</label>
      <div class="col-md-10">
        <select class="form-control">
          <option>Merjo Sari</option>
          <option>Dinoyo</option>
        </select>
      </div>
    </div>

    <div class="form-group col-md-4">
      <label class="control-label col-md-5">Masa berlaku</label>
      <div class="col-md-10">
        <input type="text" class="form-control" placeholder="/hari">
      </div>
    </div>

    <div class="form-group col-md-4">
      <label class="control-label col-md-3">Term</label>
      <div class="col-md-10">
        <input type="text" class="form-control" placeholder="/hari">
      </div>
    </div>

    <div class="form-group col-md-4">
      <label class="control-label col-md-3">Mata Uang</label>
      <div class="col-md-10">
        <select class="form-control">
          <option>Rp.</option>
          <option>$</option>
        </select>
        <input type="text" class="form-control col-md-10" placeholder="">
      </div>
    </div>

    <div class="form-group col-md-4">
      <label class="control-label col-md-5">Keterangan</label>
      <div class="col-md-10">
        <textarea id="keterangan" class="form-control rounded-0" ></textarea>
      </div>
    </div>

    <div class="form-group col-md-4">
      <label class="control-label col-md-5">Tanggal</label>
      <div class="col-md-10">
        <input type="text" class="form-control" placeholder="">
      </div>
    </div>

    <div class="form-group col-md-2">
      <label>
        <input type="checkbox" /> Non PPN
      </label>
    </div>

    <div class="form-group col-md-2">
      <label>
        <input type="checkbox" /> Include PPN
      </label>
    </div>

    <div class="form-group col-md-2">
      <label>
        <input type="checkbox" /> exclude PPN
      </label>
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
          <td><button class="btn"><i class="fa fa-trash"></i> Hapus</button></td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Baja</td>
          <td>20</td>
          <td>Ro.2000</td>
          <td>Rp.0</td>
          <td>Rp.40.000</td>
          <td><button class="btn"><i class="fa fa-trash"></i> Hapus</button></td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Kayu</td>
          <td>30</td>
          <td>Ro.3000</td>
          <td>Rp.0</td>
          <td>Rp.9000</td>
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
    <h1 >Total : Rp.54.000  </h1>
    </div>
    <button class=" btn btn-primary btn-sm btn-block"><i class="fa fa-save"></i> Simpan</button>
</div>
    <div>
  </div>
</div>
<!-- /page content -->
@endsection