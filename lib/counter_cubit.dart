import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() :super(0);
  void increament() => emit(state+1);
  void decreament() => emit(state-1);
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}

class SimpleBlocObserver extends BlocObserver{
 
 @override
  void onChange(BlocBase bloc, Change change){
    super.onChange(bloc, change);
    print('Cubit: ${bloc.runtimeType} $change');
  }
}
