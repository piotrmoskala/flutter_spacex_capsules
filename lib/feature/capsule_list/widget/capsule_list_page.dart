import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_capsules/feature/base_page.dart';
import 'package:spacex_capsules/feature/capsule_list/bloc/capsule_list_cubit.dart';
import 'package:spacex_capsules/widget/empty_widget.dart';
import 'package:spacex_capsules/widget/loading_widget.dart';

class CapsuleListPage extends BasePage<CapsuleListCubit> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Capsules"),
        ),
        body: BlocConsumer<CapsuleListCubit, CapsuleListState>(
          builder: (context, state) => handleState(context, state),
          listener: (context, state) {},
        ),
      ),
    );
  }

  Widget handleState(BuildContext context, CapsuleListState state) {
    if (state is CapsuleListLoading) {
      return LoadingWidget();
    }

    if (state is CapsuleListEmpty) {
      return EmptyWidget(
        text: "List is empty",
      );
    }

    if (state is CapsuleListError) {
      return EmptyWidget(
        text: state.message,
      );
    }

    if (state is CapsuleList) {
      return Text("Capsule list size ${state.capsules.length}");
    }

    return Container();
  }
}
