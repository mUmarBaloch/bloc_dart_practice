import 'package:bloc_dart_practice/counter_cubit.dart' ;

void main(List<String> arguments) async{
  final counterCubit = CounterCubit();
 // final subscribstion = counterCubit.stream.listen(print);
 for(int i = 0 ; i <=5; i++){
  counterCubit.increament();

  await Future.delayed(Duration(seconds: 1));
 }
await Future.delayed(Duration.zero);
//await subscribstion.cancel();
await counterCubit.close();
 
}
