import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class WeeklyWeeklyBarChartOfStepContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: WeeklyBarChartOfStep(),
    );
  }
}

class WeeklyBarChartOfStep extends StatelessWidget {
  const WeeklyBarChartOfStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("今週の歩数"),
        Container(
          height: 130.0, // Set the desired height
          child: charts.OrdinalComboChart(
            _createSampleData(),
            animate: true,
            defaultRenderer: charts.BarRendererConfig(
              groupingType: charts.BarGroupingType.grouped,
            ),
            customSeriesRenderers: [
              charts.LineRendererConfig(customRendererId: 'customLine'),
            ],
          ),
        ),
      ],
    );
  }
}

List<charts.Series<OrdinalSales, String>> _createSampleData() {
  final desktopSalesData = [
    OrdinalSales('月', 5700),
    OrdinalSales('火', 5200),
    OrdinalSales('水', 2000),
    OrdinalSales('木', 1500),
    OrdinalSales('金', 3500),
    OrdinalSales('土', 4150),
    OrdinalSales('日', 1150),
  ];

  return [
    charts.Series<OrdinalSales, String>(
      id: 'Desktop',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (OrdinalSales sales, _) => sales.year,
      measureFn: (OrdinalSales sales, _) => sales.sales,
      data: desktopSalesData,
    ),
  ];
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
