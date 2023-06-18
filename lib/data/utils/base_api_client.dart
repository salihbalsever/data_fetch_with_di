import 'package:di_with_provider/data/models/base_model.dart';

abstract class  BaseApiClient {
    Future fetchData<T extends BaseModel> ({required String subUrl,
      required T objectModel});
}
