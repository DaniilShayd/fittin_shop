part of 'showcase_bloc.dart';

abstract class ShowCaseState {}

class ShowCaseInitial extends ShowCaseState {}

class ShowCaseLoading extends ShowCaseState {}

class ShowCaseLoaded extends ShowCaseState {
  ShowCaseLoaded({required this.bannersList});

  final List<BannerWindow> bannersList;
}

class ShowCase extends ShowCaseState {}
