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
        <h1>Surat Jalan</h1>
        <div class="col-md-2">
            <h2>Customer : Musdalifah<h2>
                    <h2>Gudang :Toko Widodo</h2>
                    <h2>Alamat : Jl. Buring</h2>
                    <h2>Tanggal : 12-12-2012 </h2>
        </div>
        <div class="col-md-4">
            <label class="">Nomor Surat jalan :</label>
            <div class="">
                <input type="text" class="form-control" placeholder="SJ-145123512345">
            </div>
        </div>
        <div class="col-md-4">
            <label class="">Sopir :</label>
            <div class="">
                <input type="text" class="form-control" placeholder="Suharjo">
            </div>
        </div>
        <div class="col-md-4">
            <label class="">Nomor Polisi :</label>
            <div class="">
                <input type="text" class="form-control" placeholder=" N 9098 MM">
            </div>
        </div>


        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Nama Barang</th>
                    <th scope="col">Jumlah</th>
                    <th scope="col">Keterangan</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Besi</td>
                    <td>10</td>
                    <td></td>

                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Baja</td>
                    <td>20</td>
                    <td> </td>

                </tr>
                <tr>
                    <td>3</td>
                    <td>Kayu</td>
                    <td>30</td>
                    <td> </td>

                </tr>
            </tbody>
        </table>

        <button class=" btn btn-primary btn-sm btn-block"><i class="fa fa-print"></i> Print</button>
    </div>
</div>
@endsection