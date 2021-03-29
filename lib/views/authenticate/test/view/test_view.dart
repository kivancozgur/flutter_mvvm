import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/base/state/base_state.dart';
import '../../../../core/base/widget/base_widget.dart';
import '../viewmodel/counter.dart';

class TestView extends StatefulWidget {
  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  Counter testViewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<Counter>(
      viewModel: Counter(),
      onModelReady: (model) {
        testViewModel = model;
      },
      onPageBuilder: (context, value) => scaffoldBody,
    );
  }

  Widget get scaffoldBody => Scaffold(floatingActionButton: floatingActionButtonIncrement, body: textNumber);

  FloatingActionButton get floatingActionButtonIncrement {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => testViewModel.increment(),
    );
  }

  Widget get textNumber {
    return Observer(
      builder: (_) => Center(
        child: Text(
          testViewModel.count.toString(),
        ),
      ),
    );
  }
}
