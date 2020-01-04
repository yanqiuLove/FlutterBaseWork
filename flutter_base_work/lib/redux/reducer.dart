// 第四步 创建reducer
//reducer是我们的状态生成器，它接收一个我们原来的状态，然后接收一个action，再匹配这个action生成一个新的状态。

import 'action_test.dart';
import 'count_state.dart';

/**
 * reducer会根据传进来的action生成新的CountState
 */
CountState reducer(CountState state,action){
  //匹配Action
  if(action == Action_test.increment){
    return CountState(state.count+1);
  }
  return state;
}
