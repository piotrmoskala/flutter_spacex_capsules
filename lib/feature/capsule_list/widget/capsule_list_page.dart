import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_capsules/feature/base_page.dart';
import 'package:spacex_capsules/feature/capsule_list/bloc/capsule_list_cubit.dart';
import 'package:spacex_capsules/widget/capsule_details_widget.dart';
import 'package:spacex_capsules/widget/empty_widget.dart';
import 'package:spacex_capsules/widget/horizontal_content_item_list.dart';
import 'package:spacex_capsules/widget/loading_widget.dart';

class CapsuleListPage extends BasePage<CapsuleListCubit> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Capsules"),
        ),
        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              BlocConsumer<CapsuleListCubit, CapsuleListState>(
                buildWhen: (context, state) => state is CapsuleListSelected,
                builder: (context, state) => handleDetailsState(context, state),
                listener: (context, state) {},
              ),
              SizedBox(height: 16),
              BlocConsumer<CapsuleListCubit, CapsuleListState>(
                buildWhen: (context, state) => !(state is CapsuleListSelected),
                builder: (context, state) => handleState(context, state),
                listener: (context, state) {},
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget handleDetailsState(BuildContext context, CapsuleListState state) {
    if (state is CapsuleListSelected) {
      return Expanded(
        flex: 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70.0),
                bottomRight: Radius.circular(70.0)),
            color: Colors.indigo,
          ),
          width: double.maxFinite,
          child: CapsuleDetailsWidget(state.capsule),
        ),
      );
    }

    return Container();
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
      return HorizontalContentItemList(
        items: state.capsules,
        onItemTap: (value) => bloc.capsuleSelected(value),
      );
    }

    return Container();
  }
}
