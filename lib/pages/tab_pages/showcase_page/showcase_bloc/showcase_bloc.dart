import 'package:fittin_shop/data/service/banner_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/models/showcase_models/banner.dart';

part 'showcase_bloc_event.dart';
part 'showcase_bloc_state.dart';

class ShowCaseBloc extends Bloc<ShowCaseEvent, ShowCaseState> {
  ShowCaseBloc(this.bannersRepository) : super(ShowCaseInitial()) {
    on<LoadBunnerList>((event, emit) async{
      final bannersList = await bannersRepository.getBanners();
      emit(ShowCaseLoaded(bannersList: bannersList));
    });
  }
  final BannerClient bannersRepository;
}