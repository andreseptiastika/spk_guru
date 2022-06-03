@extends('layouts.main')
@section('content')
    <x-breadcrumb title="Tambah Data Guru" link="{{ route('alternatif.index') }}" item="Guru" subItem="Tambah Data" />
    <div class="card mb-3">
      <div class="card-body">
        <form action="{{ route('alternatif.store') }}" method="post">
            {{ csrf_field() }}
            @include('alternatif.form', ['tombol' => 'Tambah'])
        </form>
      </div>
    </div>
@endsection
