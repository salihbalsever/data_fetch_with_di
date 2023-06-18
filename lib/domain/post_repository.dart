import 'package:di_with_provider/data/dataSource/api_client.dart';
import 'package:di_with_provider/data/models/base_model.dart';
import 'package:di_with_provider/data/utils/bas_repository.dart';
import 'package:di_with_provider/data/utils/base_api_client.dart';

class PostRepository extends BaseRepository{
  PostRepository({BaseApiClient? baseApiClient}):_baseApiClient=baseApiClient ?? ApiClient();
    final BaseApiClient _baseApiClient;

  @override
  Future fetchData<T extends BaseModel>({required String subUrl, required T objectModel}) async {
    final result= await _baseApiClient.fetchData(subUrl: subUrl, objectModel: objectModel);
    return result;
  }
  
}