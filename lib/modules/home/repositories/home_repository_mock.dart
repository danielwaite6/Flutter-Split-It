import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(receive: 100, send: 50);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
        title: "Churrasco",
        created: DateTime.now(),
        value: 1500,
        people: 1,
      ),
      EventModel(
        title: "Churrasco 2",
        created: DateTime.now(),
        value: -500,
        people: 1,
      ),
      EventModel(
        title: "Churrasco 3",
        created: DateTime.now(),
        value: -500,
        people: 1,
      ),
      EventModel(
        title: "Churrasco 4",
        created: DateTime.now(),
        value: -500,
        people: 1,
      ),
      EventModel(
        title: "Churrasco 5",
        created: DateTime.now(),
        value: -500,
        people: 1,
      ),
      EventModel(
        title: "Churrasco 6",
        created: DateTime.now(),
        value: -500,
        people: 1,
      ),
    ];
  }
}
