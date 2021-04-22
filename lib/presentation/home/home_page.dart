import 'package:another_flushbar/flushbar_helper.dart';
import 'package:congkir/application/cost/cost_cubit.dart';
import 'package:congkir/application/location/location_bloc.dart';
import 'package:congkir/presentation/widgets/dropdown_location_button.dart';
import 'package:congkir/presentation/widgets/weight_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:congkir/domain/location/location_data.dart';

import '../../injection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _errorMessage;

  List<DropdownMenuItem<LocationResultsData>> _listFromProvinceMenuItem;
  List<DropdownMenuItem<LocationResultsData>> _listFromCityMenuItem;

  List<DropdownMenuItem<LocationResultsData>> _listToProvinceMenuItem;
  List<DropdownMenuItem<LocationResultsData>> _listToCityMenuItem;

  LocationResultsData _selectedFromProvince;
  LocationResultsData _selectedFromCity;

  LocationResultsData _selectedToProvince;
  LocationResultsData _selectedToCity;

  TextEditingController _weightController;

  String _selectedCourier;

  @override
  void initState() {
    _errorMessage = "";
    initToLocation();
    initToLocation();
    _weightController = TextEditingController();
    _selectedCourier = null;
    super.initState();
  }

  void initFromLocation() {
    _listFromProvinceMenuItem = null;
    _selectedFromProvince = null;
    _listFromCityMenuItem = null;
    _selectedFromCity = null;
  }

  void initToLocation() {
    _listToProvinceMenuItem = null;
    _listToCityMenuItem = null;
    _selectedToProvince = null;
    _selectedToCity = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Congkir!'),
        ),
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Asal / Origin',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    BlocProvider(
                      create: (context) => getIt<LocationBloc>()
                        ..add(LocationEvent.getProvinceData()),
                      child: BlocConsumer<LocationBloc, LocationState>(
                          listener: listenerFromLocationBloc,
                          builder: (context, state) {
                            return Column(
                              children: [
                                DropdownLocationButton<LocationResultsData>(
                                  hintText: "Pilih Provinsi",
                                  listLocationMenuItem:
                                      _listFromProvinceMenuItem == null
                                          ? []
                                          : _listFromProvinceMenuItem,
                                  onChanged: (e) =>
                                      onFromProvinceChanged(context, e),
                                  value: _selectedFromProvince,
                                ),
                                DropdownLocationButton(
                                  hintText: "Pilih Kota",
                                  listLocationMenuItem:
                                      _listFromCityMenuItem == null
                                          ? []
                                          : _listFromCityMenuItem,
                                  onChanged: (e) => onFromCityChanged(e),
                                  value: _selectedFromCity,
                                ),
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Tujuan / Destination',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    BlocProvider(
                      create: (context) => getIt<LocationBloc>()
                        ..add(LocationEvent.getProvinceData()),
                      child: BlocConsumer<LocationBloc, LocationState>(
                          listener: listenerToLocationBloc,
                          builder: (context, state) {
                            return Column(
                              children: [
                                DropdownLocationButton<LocationResultsData>(
                                  hintText: "Pilih Provinsi",
                                  listLocationMenuItem:
                                      _listToProvinceMenuItem == null
                                          ? []
                                          : _listToProvinceMenuItem,
                                  onChanged: (e) =>
                                      onToProvinceChanged(context, e),
                                  value: _selectedToProvince,
                                ),
                                DropdownLocationButton(
                                  hintText: "Pilih Kota",
                                  listLocationMenuItem:
                                      _listToCityMenuItem == null
                                          ? []
                                          : _listToCityMenuItem,
                                  onChanged: (e) => onToCityChanged(e),
                                  value: _selectedToCity,
                                ),
                              ],
                            );
                          }),
                    ),
                    Container(
                      width: double.infinity,
                      child: Divider(),
                    ),
                    WeightFormWidget(weightController: _weightController),
                    SizedBox(
                      height: 20,
                    ),
                    // NOTE: Dropdown Choose Courier
                    Row(
                      children: [
                        Icon(Icons.motorcycle),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: DropdownLocationButton<String>(
                            hintText: "Pilih Kurir",
                            listLocationMenuItem: [
                              DropdownMenuItem(
                                  value: "jne", child: Text('JNE')),
                              DropdownMenuItem(
                                  value: "pos", child: Text('POS')),
                              DropdownMenuItem(
                                  value: "tiki", child: Text('TIKI')),
                            ],
                            onChanged: onCourierChanged,
                            value: _selectedCourier,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BlocProvider(
                      create: (context) => getIt<CostCubit>(),
                      child: BlocConsumer<CostCubit, CostState>(
                          listener: (context, state) {
                        state.maybeMap(
                            orElse: () {},
                            costDataOption: (e) {
                              e.dataCost.fold(
                                  () => print('loading cost'),
                                  (a) =>
                                      a.fold((l) => print(l.toString()), (r) {
                                        showDialog(
                                            context: context,
                                            builder: (context) => SimpleDialog(
                                                  title:
                                                      Text('Hasil Pencarian'),
                                                  children: r.results[0].costs
                                                      .map((e) => ListTile(
                                                            leading:
                                                                Text(e.service),
                                                            title: Text("Rp." +
                                                                e.cost[0].value
                                                                    .toString()),
                                                            subtitle: Text(
                                                                "Estimasi " +
                                                                    e.cost[0]
                                                                        .etd +
                                                                    " hari"),
                                                          ))
                                                      .toList(),
                                                ));
                                      }));
                            });
                      }, builder: (context, state) {
                        return Container(
                          width: double.infinity,
                          child: RaisedButton(
                            color: Colors.blue[100],
                            onPressed: () {
                              context.read<CostCubit>().getCost(
                                  origin: _selectedFromCity,
                                  destination: _selectedToCity,
                                  weight: int.parse(_weightController.text),
                                  courier: _selectedCourier);
                            },
                            child: Text('Cek Ongkir',
                                style: TextStyle(fontSize: 18)),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  void listenerFromLocationBloc(BuildContext context, LocationState state) {
    state.maybeMap(
        orElse: () {},
        provinceDataOptions: (e) {
          e.dataProvince.fold(
              () => print('loading'),
              (a) => a.fold((l) {
                    l.map(
                        badRequest: (e) => _errorMessage = e.badRequest,
                        notFound: (e) => _errorMessage = e.notFound,
                        serverError: (e) => _errorMessage = "Server Error");

                    FlushbarHelper.createError(
                            title: 'Error', message: _errorMessage)
                        .show(context);
                  }, (r) {
                    _listFromProvinceMenuItem = r.results
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text(e.province)))
                        .toList();
                  }));
        },
        cityDataOptions: (e) {
          e.dataCity.fold(
              () => print('loading'),
              (a) => a.fold((l) {
                    l.map(
                        badRequest: (e) => _errorMessage = e.badRequest,
                        notFound: (e) => _errorMessage = e.notFound,
                        serverError: (e) => _errorMessage = "Server Error");

                    FlushbarHelper.createError(
                            title: 'Error', message: _errorMessage)
                        .show(context);
                  }, (r) {
                    _listFromCityMenuItem = r.results
                        .map((e) => DropdownMenuItem(
                            value: e, child: Text(e.type + " " + e.cityName)))
                        .toList();
                  }));
        });
  }

  void listenerToLocationBloc(BuildContext context, LocationState state) {
    state.maybeMap(
        orElse: () {},
        provinceDataOptions: (e) {
          e.dataProvince.fold(
              () => print('loading'),
              (a) => a.fold((l) {
                    l.map(
                        badRequest: (e) => _errorMessage = e.badRequest,
                        notFound: (e) => _errorMessage = e.notFound,
                        serverError: (e) => _errorMessage = "Server Error");

                    FlushbarHelper.createError(
                            title: 'Error', message: _errorMessage)
                        .show(context);
                  }, (r) {
                    _listToProvinceMenuItem = r.results
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text(e.province)))
                        .toList();
                  }));
        },
        cityDataOptions: (e) {
          e.dataCity.fold(
              () => print('loading'),
              (a) => a.fold((l) {
                    l.map(
                        badRequest: (e) => _errorMessage = e.badRequest,
                        notFound: (e) => _errorMessage = e.notFound,
                        serverError: (e) => _errorMessage = "Server Error");

                    FlushbarHelper.createError(
                            title: 'Error', message: _errorMessage)
                        .show(context);
                  }, (r) {
                    _listToCityMenuItem = r.results
                        .map((e) => DropdownMenuItem(
                            value: e, child: Text(e.type + " " + e.cityName)))
                        .toList();
                  }));
        });
  }

  void onFromProvinceChanged(BuildContext context, LocationResultsData data) {
    setState(() {
      _selectedFromProvince = data;
      _selectedFromCity = null;
      _listFromCityMenuItem = null;
    });

    context
        .read<LocationBloc>()
        .add(LocationEvent.getCityData(provinceId: data.provinceId));
  }

  void onFromCityChanged(LocationResultsData data) {
    setState(() {
      _selectedFromCity = data;
    });
  }

  void onCourierChanged(String data) {
    setState(() {
      _selectedCourier = data;
    });
  }

  void onToProvinceChanged(BuildContext context, LocationResultsData data) {
    setState(() {
      _selectedToProvince = data;
      _selectedToCity = null;
      _listToCityMenuItem = null;
    });

    context
        .read<LocationBloc>()
        .add(LocationEvent.getCityData(provinceId: data.provinceId));
  }

  void onToCityChanged(LocationResultsData data) {
    setState(() {
      _selectedToCity = data;
    });
  }
}
