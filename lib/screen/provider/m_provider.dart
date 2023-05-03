import 'package:flutter/widgets.dart';

import '../../utils/api_helper.dart';
import '../model/m_model.dart';


class MovieProvider extends ChangeNotifier {
  Future<MovieModel> getMovieData() async {
    Apihelper apihelper = Apihelper();
    MovieModel movieModel = await apihelper.getMovieApi();
    return movieModel;
  }
}
