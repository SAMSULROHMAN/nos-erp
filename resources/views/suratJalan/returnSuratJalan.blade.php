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
        <h2>return Surat Jalan</h2>
        <h1> RSJ-145123512345 </h1>
        <div class="col-sm-4">
            <label class="">Nomor Surat jalan :</label>
            <div class="">
                <input type="text" class="form-control" placeholder="RJB-145123512345">
            </div>
        </div>
        <div class="col-sm-4">
            <br>
            <label class="">Customer :</label>
            <label class=""> Musdalifah </label>.
            <br><br>
        </div>
        <div class="col-sm-4">
            <br>
            <label class="">Gudang :</label>
            <label class=""> Toko Widodo </label>
            <br><br>
        </div>
        <div class="col-sm-4">
            <br>
            <label class="">Supir :</label>
            <div class="">
                <input type="text" class="form-control" placeholder="">
            </div>
            <br>
        </div>

        <div class="col-sm-4">
            <br>
            <label class="">Tanggal :</label>
            <div class="">
                <input type="text" class="form-control" placeholder="12-12-2012">
            </div>
        </div>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Nama Barang</th>
                    <th scope="col">Satuan</th>
                    <th scope="col">Jumlah</th>
                    <th scope="col">Keterangan</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>23</td>
                    <td>123</td>
                    <td>555</td>
                    <td><button> Hapus</button></td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>23</td>
                    <td>123</td>
                    <td>123</td>
                    <td><button> Hapus</button></td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>23</td>
                    <td>123</td>
                    <td>123</td>
                    <td><button> Hapus</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    <button class=" btn btn-primary btn-sm btn-block"><i class="fa fa-save"></i> Simpan</button>
</div>


@endsection 