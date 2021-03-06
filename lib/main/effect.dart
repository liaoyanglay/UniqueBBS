import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:unique_bbs/config/route.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.newPost: _newPage,
//    MainAction.selectPage: _selectPage
  });
}

void _newPage(Action action, Context<MainState> ctx) {
  Navigator.pushNamed(ctx.context, BBSRoute.posting);
}

void _selectPage(Action action, Context<MainState> ctx) {
  ctx.dispatch(MainActionCreator.selectPage(action.payload));
}
