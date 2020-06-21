import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';
import 'package:charts_flutter/src/text_element.dart' as TextElement;
import 'package:charts_flutter/src/text_style.dart' as style;

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      _createSampleData(),
      behaviors: [
        LinePointHighlighter(
            symbolRenderer: CustomCircleSymbolRenderer()
        )
      ],
      selectionModels: [
        SelectionModelConfig(
            changedListener: (SelectionModel model) {
              if(model.hasDatumSelection)
                print(model.selectedSeries[0].measureFn(model.selectedDatum[0].index));
            }
        )
      ],
    );
  }

  List<Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 78),
      new LinearSales(0, 73),
      new LinearSales(0, 70),
      new LinearSales(1, 76),
      new LinearSales(1, 77),
      new LinearSales(2, 78),
      new LinearSales(2, 79),
      new LinearSales(3, 78),
      new LinearSales(3, 77),
      new LinearSales(3, 66),
      new LinearSales(4, 75),
      new LinearSales(4, 75),
    ];
    return [
      new Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => MaterialPalette.white,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class CustomCircleSymbolRenderer extends CircleSymbolRenderer {
  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds, {List<int> dashPattern,
    Color fillColor, FillPatternType fillPattern, Color strokeColor, double strokeWidthPx}) {
    // TODO: implement paint
    super.paint(canvas, bounds,);
    canvas.drawRect(
        Rectangle(bounds.left - 5, bounds.top - 30, bounds.width + 10, bounds.height + 10),
        fill: Color.white
    );
    var textStyle = style.TextStyle();
    textStyle.color = Color.black;
    textStyle.fontSize = 15;
    canvas.drawText(
        TextElement.TextElement("2", style: textStyle),
    (bounds.left).round(),
    (bounds.top - 28).round()
    );

  }

}
class LinearSales {
  final int year;
  final int sales;
  LinearSales(this.year, this.sales);
}

//import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:flutter/material.dart';
//
//import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:flutter/material.dart';
//
//class PointsLineChart extends StatelessWidget {
//  final List<charts.Series> seriesList;
//  final bool animate;
//
//  PointsLineChart(this.seriesList, {this.animate});
//
//  /// Creates a [LineChart] with sample data and no transition.
//  factory PointsLineChart.withSampleData() {
//    return new PointsLineChart(
//      createSampleData(),
//      // Disable animations for image tests.
//      animate: false,
//    );
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return new charts.LineChart(
//        seriesList,
//        animate: animate,
//        defaultRenderer: new charts.LineRendererConfig(includePoints: true));
//  }
//
//  /// Create one series with sample hard coded data.
//  static List<charts.Series<LinearSales, int>> createSampleData() {
//    final data = [
//      new LinearSales(0, 75),
//      new LinearSales(1, 74),
//      new LinearSales(2, 76),
//      new LinearSales(3, 79),
//    ];
//
//    return [
//      new charts.Series<LinearSales, int>(
//        id: 'Sales',
//        colorFn: (_, __) => charts.MaterialPalette.white,
//        domainFn: (LinearSales sales, _) => sales.year,
//        measureFn: (LinearSales sales, _) => sales.sales,
//        data: data
//      )
//    ];
//  }
//}
//
///// Sample linear data type.
//class LinearSales {
//  final int year;
//  final int sales;
//
//  LinearSales(this.year, this.sales);
//}
//
