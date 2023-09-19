import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'searchbook_state.dart';

class SearchbookCubit extends Cubit<SearchbookState> {
  SearchbookCubit() : super(SearchbookInitial());
}
