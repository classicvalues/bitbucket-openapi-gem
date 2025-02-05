# Bitbucket::RepositoriesApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**repositories_get**](RepositoriesApi.md#repositories_get) | **GET** /repositories | List public repositories |
| [**repositories_workspace_get**](RepositoriesApi.md#repositories_workspace_get) | **GET** /repositories/{workspace} | List repositories in a workspace |
| [**repositories_workspace_repo_slug_delete**](RepositoriesApi.md#repositories_workspace_repo_slug_delete) | **DELETE** /repositories/{workspace}/{repo_slug} | Delete a repository |
| [**repositories_workspace_repo_slug_filehistory_commit_path_get**](RepositoriesApi.md#repositories_workspace_repo_slug_filehistory_commit_path_get) | **GET** /repositories/{workspace}/{repo_slug}/filehistory/{commit}/{path} | List commits that modified a file |
| [**repositories_workspace_repo_slug_forks_get**](RepositoriesApi.md#repositories_workspace_repo_slug_forks_get) | **GET** /repositories/{workspace}/{repo_slug}/forks | List repository forks |
| [**repositories_workspace_repo_slug_forks_post**](RepositoriesApi.md#repositories_workspace_repo_slug_forks_post) | **POST** /repositories/{workspace}/{repo_slug}/forks | Fork a repository |
| [**repositories_workspace_repo_slug_get**](RepositoriesApi.md#repositories_workspace_repo_slug_get) | **GET** /repositories/{workspace}/{repo_slug} | Get a repository |
| [**repositories_workspace_repo_slug_hooks_get**](RepositoriesApi.md#repositories_workspace_repo_slug_hooks_get) | **GET** /repositories/{workspace}/{repo_slug}/hooks | List webhooks for a repository |
| [**repositories_workspace_repo_slug_hooks_post**](RepositoriesApi.md#repositories_workspace_repo_slug_hooks_post) | **POST** /repositories/{workspace}/{repo_slug}/hooks | Create a webhook for a repository |
| [**repositories_workspace_repo_slug_hooks_uid_delete**](RepositoriesApi.md#repositories_workspace_repo_slug_hooks_uid_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/hooks/{uid} | Delete a webhook for a repository |
| [**repositories_workspace_repo_slug_hooks_uid_get**](RepositoriesApi.md#repositories_workspace_repo_slug_hooks_uid_get) | **GET** /repositories/{workspace}/{repo_slug}/hooks/{uid} | Get a webhook for a repository |
| [**repositories_workspace_repo_slug_hooks_uid_put**](RepositoriesApi.md#repositories_workspace_repo_slug_hooks_uid_put) | **PUT** /repositories/{workspace}/{repo_slug}/hooks/{uid} | Update a webhook for a repository |
| [**repositories_workspace_repo_slug_override_settings_get**](RepositoriesApi.md#repositories_workspace_repo_slug_override_settings_get) | **GET** /repositories/{workspace}/{repo_slug}/override-settings | Retrieve the inheritance state for repository settings |
| [**repositories_workspace_repo_slug_override_settings_put**](RepositoriesApi.md#repositories_workspace_repo_slug_override_settings_put) | **PUT** /repositories/{workspace}/{repo_slug}/override-settings | Set the inheritance state for repository settings                  |
| [**repositories_workspace_repo_slug_permissions_config_groups_get**](RepositoriesApi.md#repositories_workspace_repo_slug_permissions_config_groups_get) | **GET** /repositories/{workspace}/{repo_slug}/permissions-config/groups | List explicit group permissions for a repository |
| [**repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete**](RepositoriesApi.md#repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/permissions-config/groups/{group_slug} | Delete an explicit group permission for a repository |
| [**repositories_workspace_repo_slug_permissions_config_groups_group_slug_get**](RepositoriesApi.md#repositories_workspace_repo_slug_permissions_config_groups_group_slug_get) | **GET** /repositories/{workspace}/{repo_slug}/permissions-config/groups/{group_slug} | Get an explicit group permission for a repository |
| [**repositories_workspace_repo_slug_permissions_config_groups_group_slug_put**](RepositoriesApi.md#repositories_workspace_repo_slug_permissions_config_groups_group_slug_put) | **PUT** /repositories/{workspace}/{repo_slug}/permissions-config/groups/{group_slug} | Update an explicit group permission for a repository |
| [**repositories_workspace_repo_slug_permissions_config_users_get**](RepositoriesApi.md#repositories_workspace_repo_slug_permissions_config_users_get) | **GET** /repositories/{workspace}/{repo_slug}/permissions-config/users | List explicit user permissions for a repository |
| [**repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete**](RepositoriesApi.md#repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/permissions-config/users/{selected_user_id} | Delete an explicit user permission for a repository |
| [**repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get**](RepositoriesApi.md#repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get) | **GET** /repositories/{workspace}/{repo_slug}/permissions-config/users/{selected_user_id} | Get an explicit user permission for a repository |
| [**repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put**](RepositoriesApi.md#repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put) | **PUT** /repositories/{workspace}/{repo_slug}/permissions-config/users/{selected_user_id} | Update an explicit user permission for a repository |
| [**repositories_workspace_repo_slug_post**](RepositoriesApi.md#repositories_workspace_repo_slug_post) | **POST** /repositories/{workspace}/{repo_slug} | Create a repository |
| [**repositories_workspace_repo_slug_put**](RepositoriesApi.md#repositories_workspace_repo_slug_put) | **PUT** /repositories/{workspace}/{repo_slug} | Update a repository |
| [**repositories_workspace_repo_slug_src_commit_path_get**](RepositoriesApi.md#repositories_workspace_repo_slug_src_commit_path_get) | **GET** /repositories/{workspace}/{repo_slug}/src/{commit}/{path} | Get file or directory contents |
| [**repositories_workspace_repo_slug_src_get**](RepositoriesApi.md#repositories_workspace_repo_slug_src_get) | **GET** /repositories/{workspace}/{repo_slug}/src | Get the root directory of the main branch |
| [**repositories_workspace_repo_slug_src_post**](RepositoriesApi.md#repositories_workspace_repo_slug_src_post) | **POST** /repositories/{workspace}/{repo_slug}/src | Create a commit by uploading a file |
| [**repositories_workspace_repo_slug_watchers_get**](RepositoriesApi.md#repositories_workspace_repo_slug_watchers_get) | **GET** /repositories/{workspace}/{repo_slug}/watchers | List repositories watchers |
| [**user_permissions_repositories_get**](RepositoriesApi.md#user_permissions_repositories_get) | **GET** /user/permissions/repositories | List repository permissions for a user |


## repositories_get

> <PaginatedRepositories> repositories_get(opts)

List public repositories

Returns a paginated list of all public repositories.  This endpoint also supports filtering and sorting of the results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for more details.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
opts = {
  after: 'after_example', # String | Filter the results to include only repositories created on or after this [ISO-8601](https://en.wikipedia.org/wiki/ISO_8601)  timestamp. Example: `YYYY-MM-DDTHH:mm:ss.sssZ`
  role: 'admin', # String | Filters the result based on the authenticated user's role on each repository.  * **member**: returns repositories to which the user has explicit read access * **contributor**: returns repositories to which the user has explicit write access * **admin**: returns repositories to which the user has explicit administrator access * **owner**: returns all repositories owned by the current user 
  q: 'q_example', # String | Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). `role` parameter must also be specified. 
  sort: 'sort_example' # String | Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
}

begin
  # List public repositories
  result = api_instance.repositories_get(opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_get: #{e}"
end
```

#### Using the repositories_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRepositories>, Integer, Hash)> repositories_get_with_http_info(opts)

```ruby
begin
  # List public repositories
  data, status_code, headers = api_instance.repositories_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRepositories>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | Filter the results to include only repositories created on or after this [ISO-8601](https://en.wikipedia.org/wiki/ISO_8601)  timestamp. Example: &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60; | [optional] |
| **role** | **String** | Filters the result based on the authenticated user&#39;s role on each repository.  * **member**: returns repositories to which the user has explicit read access * **contributor**: returns repositories to which the user has explicit write access * **admin**: returns repositories to which the user has explicit administrator access * **owner**: returns all repositories owned by the current user  | [optional] |
| **q** | **String** | Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). &#x60;role&#x60; parameter must also be specified.  | [optional] |
| **sort** | **String** | Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).  | [optional] |

### Return type

[**PaginatedRepositories**](PaginatedRepositories.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_get

> <PaginatedRepositories> repositories_workspace_get(workspace, opts)

List repositories in a workspace

Returns a paginated list of all repositories owned by the specified workspace.  The result can be narrowed down based on the authenticated user's role.  E.g. with `?role=contributor`, only those repositories that the authenticated user has write access to are returned (this includes any repo the user is an admin on, as that implies write access).  This endpoint also supports filtering and sorting of the results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for more details.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  role: 'admin', # String |  Filters the result based on the authenticated user's role on each repository.  * **member**: returns repositories to which the user has explicit read access * **contributor**: returns repositories to which the user has explicit write access * **admin**: returns repositories to which the user has explicit administrator access * **owner**: returns all repositories owned by the current user 
  q: 'q_example', # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
  sort: 'sort_example' # String |  Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).         
}

begin
  # List repositories in a workspace
  result = api_instance.repositories_workspace_get(workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_get: #{e}"
end
```

#### Using the repositories_workspace_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRepositories>, Integer, Hash)> repositories_workspace_get_with_http_info(workspace, opts)

```ruby
begin
  # List repositories in a workspace
  data, status_code, headers = api_instance.repositories_workspace_get_with_http_info(workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRepositories>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **role** | **String** |  Filters the result based on the authenticated user&#39;s role on each repository.  * **member**: returns repositories to which the user has explicit read access * **contributor**: returns repositories to which the user has explicit write access * **admin**: returns repositories to which the user has explicit administrator access * **owner**: returns all repositories owned by the current user  | [optional] |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).  | [optional] |
| **sort** | **String** |  Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).          | [optional] |

### Return type

[**PaginatedRepositories**](PaginatedRepositories.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_delete

> repositories_workspace_repo_slug_delete(repo_slug, workspace, opts)

Delete a repository

Deletes the repository. This is an irreversible operation.  This does not affect its forks.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  redirect_to: 'redirect_to_example' # String | If a repository has been moved to a new location, use this parameter to show users a friendly message in the Bitbucket UI that the repository has moved to a new location. However, a GET to this endpoint will still return a 404. 
}

begin
  # Delete a repository
  api_instance.repositories_workspace_repo_slug_delete(repo_slug, workspace, opts)
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_delete_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # Delete a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_delete_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **redirect_to** | **String** | If a repository has been moved to a new location, use this parameter to show users a friendly message in the Bitbucket UI that the repository has moved to a new location. However, a GET to this endpoint will still return a 404.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_filehistory_commit_path_get

> <PaginatedFiles> repositories_workspace_repo_slug_filehistory_commit_path_get(commit, path, repo_slug, workspace, opts)

List commits that modified a file

Returns a paginated list of commits that modified the specified file.  Commits are returned in reverse chronological order. This is roughly equivalent to the following commands:      $ git log --follow --date-order <sha> <path>  By default, Bitbucket will follow renames and the path name in the returned entries reflects that. This can be turned off using the `?renames=false` query parameter.  Results are returned in descending chronological order by default, and like most endpoints you can [filter and sort](/cloud/bitbucket/rest/intro/#filtering) the response to only provide exactly the data you want.  For example, if you wanted to find commits made before 2011-05-18 against a file named `README.rst`, but you only wanted the path and date, your query would look like this:  ``` $ curl 'https://api.bitbucket.org/2.0/repositories/evzijst/dogslow/filehistory/master/README.rst'\\   '?fields=values.next,values.path,values.commit.date&q=commit.date<=2011-05-18' {   \"values\": [     {       \"commit\": {         \"date\": \"2011-05-17T07:32:09+00:00\"       },       \"path\": \"README.rst\"     },     {       \"commit\": {         \"date\": \"2011-05-16T06:33:28+00:00\"       },       \"path\": \"README.txt\"     },     {       \"commit\": {         \"date\": \"2011-05-16T06:15:39+00:00\"       },       \"path\": \"README.txt\"     }   ] } ```  In the response you can see that the file was renamed to `README.rst` by the commit made on 2011-05-16, and was previously named `README.txt`.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
commit = 'commit_example' # String | The commit's SHA1.
path = 'path_example' # String | Path to the file.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  renames: 'renames_example', # String |  When `true`, Bitbucket will follow the history of the file across renames (this is the default behavior). This can be turned off by specifying `false`.
  q: 'q_example', # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
  sort: 'sort_example' # String |  Name of a response property sort the result by as per [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results). 
}

begin
  # List commits that modified a file
  result = api_instance.repositories_workspace_repo_slug_filehistory_commit_path_get(commit, path, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_filehistory_commit_path_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_filehistory_commit_path_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedFiles>, Integer, Hash)> repositories_workspace_repo_slug_filehistory_commit_path_get_with_http_info(commit, path, repo_slug, workspace, opts)

```ruby
begin
  # List commits that modified a file
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_filehistory_commit_path_get_with_http_info(commit, path, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedFiles>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_filehistory_commit_path_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **path** | **String** | Path to the file. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **renames** | **String** |  When &#x60;true&#x60;, Bitbucket will follow the history of the file across renames (this is the default behavior). This can be turned off by specifying &#x60;false&#x60;. | [optional] |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |
| **sort** | **String** |  Name of a response property sort the result by as per [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results).  | [optional] |

### Return type

[**PaginatedFiles**](PaginatedFiles.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_forks_get

> <PaginatedRepositories> repositories_workspace_repo_slug_forks_get(repo_slug, workspace, opts)

List repository forks

Returns a paginated list of all the forks of the specified repository.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  role: 'admin', # String | Filters the result based on the authenticated user's role on each repository.  * **member**: returns repositories to which the user has explicit read access * **contributor**: returns repositories to which the user has explicit write access * **admin**: returns repositories to which the user has explicit administrator access * **owner**: returns all repositories owned by the current user 
  q: 'q_example', # String | Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
  sort: 'sort_example' # String | Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
}

begin
  # List repository forks
  result = api_instance.repositories_workspace_repo_slug_forks_get(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_forks_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_forks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRepositories>, Integer, Hash)> repositories_workspace_repo_slug_forks_get_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # List repository forks
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_forks_get_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRepositories>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_forks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **role** | **String** | Filters the result based on the authenticated user&#39;s role on each repository.  * **member**: returns repositories to which the user has explicit read access * **contributor**: returns repositories to which the user has explicit write access * **admin**: returns repositories to which the user has explicit administrator access * **owner**: returns all repositories owned by the current user  | [optional] |
| **q** | **String** | Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).  | [optional] |
| **sort** | **String** | Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).  | [optional] |

### Return type

[**PaginatedRepositories**](PaginatedRepositories.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_forks_post

> <Repository> repositories_workspace_repo_slug_forks_post(repo_slug, workspace, opts)

Fork a repository

Creates a new fork of the specified repository.  #### Forking a repository  To create a fork, specify the workspace explicitly as part of the request body:  ``` $ curl -X POST -u jdoe https://api.bitbucket.org/2.0/repositories/atlassian/bbql/forks \\   -H 'Content-Type: application/json' -d '{     \"name\": \"bbql_fork\",     \"workspace\": {       \"slug\": \"atlassian\"     } }' ```  To fork a repository into the same workspace, also specify a new `name`.  When you specify a value for `name`, it will also affect the `slug`. The `slug` is reflected in the repository URL of the new fork. It is derived from `name` by substituting non-ASCII characters, removes whitespace, and changes characters to lower case. For example, `My repo` would turn into `my_repo`.  You need contributor access to create new forks within a workspace.   #### Change the properties of a new fork  By default the fork inherits most of its properties from the parent. However, since the optional POST body document follows the normal `repository` JSON schema and you can override the new fork's properties.  Properties that can be overridden include:  * description * fork_policy * language * mainbranch * is_private (note that a private repo's fork_policy might prohibit   the creation of public forks, in which `is_private=False` would fail) * has_issues (to initialize or disable the new repo's issue tracker --   note that the actual contents of the parent repository's issue   tracker are not copied during forking) * has_wiki (to initialize or disable the new repo's wiki --   note that the actual contents of the parent repository's wiki are not   copied during forking) * project (when forking into a private project, the fork's `is_private`   must be `true`)  Properties that cannot be modified include:  * scm * parent * full_name

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  repository: Bitbucket::Repository.new # Repository | A repository object. This can be left blank.
}

begin
  # Fork a repository
  result = api_instance.repositories_workspace_repo_slug_forks_post(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_forks_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_forks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Repository>, Integer, Hash)> repositories_workspace_repo_slug_forks_post_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # Fork a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_forks_post_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Repository>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_forks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **repository** | [**Repository**](Repository.md) | A repository object. This can be left blank. | [optional] |

### Return type

[**Repository**](Repository.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_get

> <Repository> repositories_workspace_repo_slug_get(repo_slug, workspace)

Get a repository

Returns the object describing this repository.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a repository
  result = api_instance.repositories_workspace_repo_slug_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Repository>, Integer, Hash)> repositories_workspace_repo_slug_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # Get a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Repository>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Repository**](Repository.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_get

> <PaginatedWebhookSubscriptions> repositories_workspace_repo_slug_hooks_get(repo_slug, workspace)

List webhooks for a repository

Returns a paginated list of webhooks installed on this repository.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List webhooks for a repository
  result = api_instance.repositories_workspace_repo_slug_hooks_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWebhookSubscriptions>, Integer, Hash)> repositories_workspace_repo_slug_hooks_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List webhooks for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWebhookSubscriptions>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedWebhookSubscriptions**](PaginatedWebhookSubscriptions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_post

> <WebhookSubscription> repositories_workspace_repo_slug_hooks_post(repo_slug, workspace)

Create a webhook for a repository

Creates a new webhook on the specified repository.  Example:  ``` $ curl -X POST -u credentials -H 'Content-Type: application/json'   https://api.bitbucket.org/2.0/repositories/my-workspace/my-repo-slug/hooks   -d '     {       \"description\": \"Webhook Description\",       \"url\": \"https://example.com/\",       \"active\": true,       \"events\": [         \"repo:push\",         \"issue:created\",         \"issue:updated\"       ]     }' ```  Note that this call requires the webhook scope, as well as any scope that applies to the events that the webhook subscribes to. In the example above that means: `webhook`, `repository` and `issue`.  Also note that the `url` must properly resolve and cannot be an internal, non-routed address.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Create a webhook for a repository
  result = api_instance.repositories_workspace_repo_slug_hooks_post(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> repositories_workspace_repo_slug_hooks_post_with_http_info(repo_slug, workspace)

```ruby
begin
  # Create a webhook for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_post_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_uid_delete

> repositories_workspace_repo_slug_hooks_uid_delete(repo_slug, uid, workspace)

Delete a webhook for a repository

Deletes the specified webhook subscription from the given repository.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a webhook for a repository
  api_instance.repositories_workspace_repo_slug_hooks_uid_delete(repo_slug, uid, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_uid_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_uid_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_hooks_uid_delete_with_http_info(repo_slug, uid, workspace)

```ruby
begin
  # Delete a webhook for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_uid_delete_with_http_info(repo_slug, uid, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_uid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **uid** | **String** | Installed webhook&#39;s ID |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_uid_get

> <WebhookSubscription> repositories_workspace_repo_slug_hooks_uid_get(repo_slug, uid, workspace)

Get a webhook for a repository

Returns the webhook with the specified id installed on the specified repository.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a webhook for a repository
  result = api_instance.repositories_workspace_repo_slug_hooks_uid_get(repo_slug, uid, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_uid_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_uid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> repositories_workspace_repo_slug_hooks_uid_get_with_http_info(repo_slug, uid, workspace)

```ruby
begin
  # Get a webhook for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_uid_get_with_http_info(repo_slug, uid, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_uid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **uid** | **String** | Installed webhook&#39;s ID |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_uid_put

> <WebhookSubscription> repositories_workspace_repo_slug_hooks_uid_put(repo_slug, uid, workspace)

Update a webhook for a repository

Updates the specified webhook subscription.  The following properties can be mutated:  * `description` * `url` * `active` * `events`

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update a webhook for a repository
  result = api_instance.repositories_workspace_repo_slug_hooks_uid_put(repo_slug, uid, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_uid_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_uid_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> repositories_workspace_repo_slug_hooks_uid_put_with_http_info(repo_slug, uid, workspace)

```ruby
begin
  # Update a webhook for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_uid_put_with_http_info(repo_slug, uid, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_hooks_uid_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **uid** | **String** | Installed webhook&#39;s ID |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_override_settings_get

> <RepositoryInheritanceState> repositories_workspace_repo_slug_override_settings_get(repo_slug, workspace)

Retrieve the inheritance state for repository settings



### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Retrieve the inheritance state for repository settings
  result = api_instance.repositories_workspace_repo_slug_override_settings_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_override_settings_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_override_settings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryInheritanceState>, Integer, Hash)> repositories_workspace_repo_slug_override_settings_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # Retrieve the inheritance state for repository settings
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_override_settings_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryInheritanceState>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_override_settings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**RepositoryInheritanceState**](RepositoryInheritanceState.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_override_settings_put

> repositories_workspace_repo_slug_override_settings_put(repo_slug, workspace)

Set the inheritance state for repository settings                 



### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Set the inheritance state for repository settings                 
  api_instance.repositories_workspace_repo_slug_override_settings_put(repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_override_settings_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_override_settings_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_override_settings_put_with_http_info(repo_slug, workspace)

```ruby
begin
  # Set the inheritance state for repository settings                 
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_override_settings_put_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_override_settings_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_permissions_config_groups_get

> <PaginatedRepositoryGroupPermissions> repositories_workspace_repo_slug_permissions_config_groups_get(repo_slug, workspace)

List explicit group permissions for a repository

Returns a paginated list of explicit group permissions for the given repository. This endpoint does not support BBQL features.  Example:  ``` $ curl https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/permissions-config/groups  HTTP/1.1 200 Location: https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/permissions-config/groups  {   \"pagelen\": 10,   \"values\": [     {       \"type\": \"repository_group_permission\",       \"group\": {         \"type\": \"group\",         \"name\": \"Administrators\",         \"slug\": \"administrators\"       },       \"permission\": \"admin\",       \"links\": {         \"self\": {           \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/                    geordi/permissions-config/groups/administrators\"         }       }     },     {       \"type\": \"repository_group_permission\",       \"group\": {         \"type\": \"group\",         \"name\": \"Developers\",         \"slug\": \"developers\"       },       \"permission\": \"read\",       \"links\": {         \"self\": {           \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/                    geordi/permissions-config/groups/developers\"         }       }     }   ],   \"page\": 1,   \"size\": 2 } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List explicit group permissions for a repository
  result = api_instance.repositories_workspace_repo_slug_permissions_config_groups_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_groups_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_permissions_config_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRepositoryGroupPermissions>, Integer, Hash)> repositories_workspace_repo_slug_permissions_config_groups_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List explicit group permissions for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_permissions_config_groups_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRepositoryGroupPermissions>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedRepositoryGroupPermissions**](PaginatedRepositoryGroupPermissions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete

> repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete(group_slug, repo_slug, workspace)

Delete an explicit group permission for a repository

Deletes the repository group permission between the requested repository and group, if one exists.  Only users with admin permission for the repository may access this resource.  Example:  $ curl -X DELETE https://api.bitbucket.org/2.0/repositories/atlassian_tutorial /geordi/permissions-config/groups/developers   HTTP/1.1 204

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
group_slug = 'group_slug_example' # String | Slug of the requested group.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete an explicit group permission for a repository
  api_instance.repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete(group_slug, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete_with_http_info(group_slug, repo_slug, workspace)

```ruby
begin
  # Delete an explicit group permission for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete_with_http_info(group_slug, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_groups_group_slug_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_slug** | **String** | Slug of the requested group. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_permissions_config_groups_group_slug_get

> <RepositoryGroupPermission> repositories_workspace_repo_slug_permissions_config_groups_group_slug_get(group_slug, repo_slug, workspace)

Get an explicit group permission for a repository

Returns the group permission for a given group slug and repository  Only users with admin permission for the repository may access this resource.  Permissions can be:  * `admin` * `write` * `read` * `none`  Example:  ``` $ curl https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/permissions-config/groups/developers  HTTP/1.1 200 Location: https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/permissions-config/groups/developers  {     \"type\": \"repository_group_permission\",     \"group\": {         \"type\": \"group\",         \"name\": \"Developers\",         \"slug\": \"developers\"     },     \"repository\": {         \"type\": \"repository\",         \"name\": \"geordi\",         \"full_name\": \"atlassian_tutorial/geordi\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"     },     \"permission\": \"read\",     \"links\": {       \"self\": {         \"href\":         \"https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/permissions-config/groups/developers\"       }     } } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
group_slug = 'group_slug_example' # String | Slug of the requested group.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get an explicit group permission for a repository
  result = api_instance.repositories_workspace_repo_slug_permissions_config_groups_group_slug_get(group_slug, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_groups_group_slug_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_permissions_config_groups_group_slug_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryGroupPermission>, Integer, Hash)> repositories_workspace_repo_slug_permissions_config_groups_group_slug_get_with_http_info(group_slug, repo_slug, workspace)

```ruby
begin
  # Get an explicit group permission for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_permissions_config_groups_group_slug_get_with_http_info(group_slug, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryGroupPermission>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_groups_group_slug_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_slug** | **String** | Slug of the requested group. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**RepositoryGroupPermission**](RepositoryGroupPermission.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_permissions_config_groups_group_slug_put

> <RepositoryGroupPermission> repositories_workspace_repo_slug_permissions_config_groups_group_slug_put(group_slug, repo_slug, workspace)

Update an explicit group permission for a repository

Updates the group permission if it exists.  Only users with admin permission for the repository may access this resource.  The only authentication method supported for this endpoint is via app passwords.  Permissions can be:  * `admin` * `write` * `read`  Example: ``` $ curl -X PUT -H \"Content-Type: application/json\" https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/permissions-config/groups/developers -d '{     \"permission\": \"write\" }'  HTTP/1.1 200 Location: https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/permissions-config/groups/developers  {     \"type\": \"repository_group_permission\",     \"group\": {         \"type\": \"group\",         \"name\": \"Developers\",         \"slug\": \"developers\"     },     \"repository\": {         \"type\": \"repository\",         \"name\": \"geordi\",         \"full_name\": \"atlassian_tutorial/geordi\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"     },     \"permission\": \"write\",     \"links\": {       \"self\": {         \"href\":         \"https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/permissions-config/groups/developers\"       }     } } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
group_slug = 'group_slug_example' # String | Slug of the requested group.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update an explicit group permission for a repository
  result = api_instance.repositories_workspace_repo_slug_permissions_config_groups_group_slug_put(group_slug, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_groups_group_slug_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_permissions_config_groups_group_slug_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryGroupPermission>, Integer, Hash)> repositories_workspace_repo_slug_permissions_config_groups_group_slug_put_with_http_info(group_slug, repo_slug, workspace)

```ruby
begin
  # Update an explicit group permission for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_permissions_config_groups_group_slug_put_with_http_info(group_slug, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryGroupPermission>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_groups_group_slug_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_slug** | **String** | Slug of the requested group. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**RepositoryGroupPermission**](RepositoryGroupPermission.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_permissions_config_users_get

> <PaginatedRepositoryUserPermissions> repositories_workspace_repo_slug_permissions_config_users_get(repo_slug, workspace)

List explicit user permissions for a repository

Returns a paginated list of explicit user permissions for the given repository. This endpoint does not support BBQL features.  Example:  ``` $ curl https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/permissions-config/users  {   \"pagelen\": 10,   \"values\": [     {         \"type\": \"repository_user_permission\",         \"user\": {             \"type\": \"user\",             \"display_name\": \"Colin Cameron\",             \"uuid\": \"{d301aafa-d676-4ee0-88be-962be7417567}\",             \"account_id\": \"557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a\"         },         \"permission\": \"admin\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/                      permissions-config/users/557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a\"           }         }     },     {       \"type\": \"repository_user_permission\",       \"user\": {         \"type\": \"user\",         \"display_name\": \"Sean Conaty\",         \"uuid\": \"{504c3b62-8120-4f0c-a7bc-87800b9d6f70}\",         \"account_id\": \"557058:ba8948b2-49da-43a9-9e8b-e7249b8e324c\"       },       \"permission\": \"write\",       \"links\": {         \"self\": {           \"href\": \"https://api.bitbucket.org/2.0//repositories/atlassian_tutorial/geordi/                    permissions-config/users/557058:ba8948b2-49da-43a9-9e8b-e7249b8e324c\"         }       }     }   ],   \"page\": 1,   \"size\": 2 } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List explicit user permissions for a repository
  result = api_instance.repositories_workspace_repo_slug_permissions_config_users_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_users_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_permissions_config_users_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRepositoryUserPermissions>, Integer, Hash)> repositories_workspace_repo_slug_permissions_config_users_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List explicit user permissions for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_permissions_config_users_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRepositoryUserPermissions>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_users_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedRepositoryUserPermissions**](PaginatedRepositoryUserPermissions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete

> repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete(repo_slug, selected_user_id, workspace)

Delete an explicit user permission for a repository

Deletes the repository user permission between the requested repository and user, if one exists.  Only users with admin permission for the repository may access this resource.  The only authentication method for this endpoint is via app passwords.  ``` $ curl -X DELETE https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/ permissions-config/users/557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a   HTTP/1.1 204 ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
selected_user_id = 'selected_user_id_example' # String | This can either be the UUID of the account, surrounded by curly-braces, for example: `{account UUID}`, OR an Atlassian Account ID. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete an explicit user permission for a repository
  api_instance.repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete(repo_slug, selected_user_id, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete_with_http_info(repo_slug, selected_user_id, workspace)

```ruby
begin
  # Delete an explicit user permission for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete_with_http_info(repo_slug, selected_user_id, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_users_selected_user_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **selected_user_id** | **String** | This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get

> <RepositoryUserPermission> repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get(repo_slug, selected_user_id, workspace)

Get an explicit user permission for a repository

Returns the explicit user permission for a given user and repository.  Only users with admin permission for the repository may access this resource.  Permissions can be:  * `admin` * `write` * `read` * `none`  Example:  ``` $ curl 'https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/         permissions-config/users/557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a'  HTTP/1.1 200 Location: 'https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/            permissions-config/users/557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a'  {     \"type\": \"repository_user_permission\",     \"user\": {         \"type\": \"user\",         \"display_name\": \"Colin Cameron\",         \"uuid\": \"{d301aafa-d676-4ee0-88be-962be7417567}\",         \"account_id\": \"557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a\"     },     \"repository\": {         \"type\": \"repository\",         \"name\": \"geordi\",         \"full_name\": \"atlassian_tutorial/geordi\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"     },     \"permission\": \"admin\",     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/                      permissions-config/users/557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a\"         }     } } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
selected_user_id = 'selected_user_id_example' # String | This can either be the UUID of the account, surrounded by curly-braces, for example: `{account UUID}`, OR an Atlassian Account ID. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get an explicit user permission for a repository
  result = api_instance.repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get(repo_slug, selected_user_id, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryUserPermission>, Integer, Hash)> repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get_with_http_info(repo_slug, selected_user_id, workspace)

```ruby
begin
  # Get an explicit user permission for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get_with_http_info(repo_slug, selected_user_id, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryUserPermission>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_users_selected_user_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **selected_user_id** | **String** | This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**RepositoryUserPermission**](RepositoryUserPermission.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put

> <RepositoryUserPermission> repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put(repo_slug, selected_user_id, workspace)

Update an explicit user permission for a repository

Updates the explicit user permission for a given user and repository. The selected user must be a member of the workspace, and cannot be the workspace owner. Only users with admin permission for the repository may access this resource.  The only authentication method for this endpoint is via app passwords.  Permissions can be:  * `admin` * `write` * `read`  Example:  ``` $ curl -X PUT -H \"Content-Type: application/json\" 'https://api.bitbucket.org/2.0/repositories/ atlassian_tutorial/geordi/permissions-config/users/557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a' -d         '{     \"permission\": \"write\" }'  HTTP/1.1 200 Location: 'https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/ permissions-config/users/557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a'   {     \"type\": \"repository_user_permission\",     \"user\": {         \"type\": \"user\",         \"display_name\": \"Colin Cameron\",         \"uuid\": \"{d301aafa-d676-4ee0-88be-962be7417567}\",         \"account_id\": \"557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a\"     },     \"repository\": {         \"type\": \"repository\",         \"name\": \"geordi\",         \"full_name\": \"atlassian_tutorial/geordi\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"     },     \"permission\": \"write\",     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian_tutorial/geordi/                      permissions-config/users/557058:ba8948b2-49da-43a9-9e8b-e7249b8e324a\"         }     } } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
selected_user_id = 'selected_user_id_example' # String | This can either be the UUID of the account, surrounded by curly-braces, for example: `{account UUID}`, OR an Atlassian Account ID. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update an explicit user permission for a repository
  result = api_instance.repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put(repo_slug, selected_user_id, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryUserPermission>, Integer, Hash)> repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put_with_http_info(repo_slug, selected_user_id, workspace)

```ruby
begin
  # Update an explicit user permission for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put_with_http_info(repo_slug, selected_user_id, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryUserPermission>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_permissions_config_users_selected_user_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **selected_user_id** | **String** | This can either be the UUID of the account, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, OR an Atlassian Account ID.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**RepositoryUserPermission**](RepositoryUserPermission.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_post

> <Repository> repositories_workspace_repo_slug_post(repo_slug, workspace, opts)

Create a repository

Creates a new repository.  Note: In order to set the project for the newly created repository, pass in either the project key or the project UUID as part of the request body as shown in the examples below:  ``` $ curl -X POST -H \"Content-Type: application/json\" -d '{     \"scm\": \"git\",     \"project\": {         \"key\": \"MARS\"     } }' https://api.bitbucket.org/2.0/repositories/teamsinspace/hablanding ```  or  ``` $ curl -X POST -H \"Content-Type: application/json\" -d '{     \"scm\": \"git\",     \"project\": {         \"key\": \"{ba516952-992a-4c2d-acbd-17d502922f96}\"     } }' https://api.bitbucket.org/2.0/repositories/teamsinspace/hablanding ```  The project must be assigned for all repositories. If the project is not provided, the repository is automatically assigned to the oldest project in the workspace.  Note: In the examples above, the workspace ID `teamsinspace`, and/or the repository name `hablanding` can be replaced by UUIDs.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  repository: Bitbucket::Repository.new # Repository | The repository that is to be created. Note that most object elements are optional. Elements \"owner\" and \"full_name\" are ignored as the URL implies them.
}

begin
  # Create a repository
  result = api_instance.repositories_workspace_repo_slug_post(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Repository>, Integer, Hash)> repositories_workspace_repo_slug_post_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # Create a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_post_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Repository>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **repository** | [**Repository**](Repository.md) | The repository that is to be created. Note that most object elements are optional. Elements \&quot;owner\&quot; and \&quot;full_name\&quot; are ignored as the URL implies them. | [optional] |

### Return type

[**Repository**](Repository.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_put

> <Repository> repositories_workspace_repo_slug_put(repo_slug, workspace, opts)

Update a repository

Since this endpoint can be used to both update and to create a repository, the request body depends on the intent.  #### Creation  See the POST documentation for the repository endpoint for an example of the request body.  #### Update  Note: Changing the `name` of the repository will cause the location to be changed. This is because the URL of the repo is derived from the name (a process called slugification). In such a scenario, it is possible for the request to fail if the newly created slug conflicts with an existing repository's slug. But if there is no conflict, the new location will be returned in the `Location` header of the response.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  repository: Bitbucket::Repository.new # Repository | The repository that is to be updated.  Note that the elements \"owner\" and \"full_name\" are ignored since the URL implies them. 
}

begin
  # Update a repository
  result = api_instance.repositories_workspace_repo_slug_put(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Repository>, Integer, Hash)> repositories_workspace_repo_slug_put_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # Update a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_put_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Repository>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **repository** | [**Repository**](Repository.md) | The repository that is to be updated.  Note that the elements \&quot;owner\&quot; and \&quot;full_name\&quot; are ignored since the URL implies them.  | [optional] |

### Return type

[**Repository**](Repository.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_src_commit_path_get

> <PaginatedTreeentries> repositories_workspace_repo_slug_src_commit_path_get(commit, path, repo_slug, workspace, opts)

Get file or directory contents

This endpoints is used to retrieve the contents of a single file, or the contents of a directory at a specified revision.  #### Raw file contents  When `path` points to a file, this endpoint returns the raw contents. The response's Content-Type is derived from the filename extension (not from the contents). The file contents are not processed and no character encoding/recoding is performed and as a result no character encoding is included as part of the Content-Type.  The `Content-Disposition` header will be \"attachment\" to prevent browsers from running executable files.  If the file is managed by LFS, then a 301 redirect pointing to Atlassian's media services platform is returned.  The response includes an ETag that is based on the contents of the file and its attributes. This means that an empty `__init__.py` always returns the same ETag, regardless on the directory it lives in, or the commit it is on.  #### File meta data  When the request for a file path includes the query parameter `?format=meta`, instead of returning the file's raw contents, Bitbucket instead returns the JSON object describing the file's properties:  ```javascript $ curl https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef/tests/__init__.py?format=meta {   \"links\": {     \"self\": {       \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef5d3df01aed629f650959d6706d54cd335/tests/__init__.py\"     },     \"meta\": {       \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef5d3df01aed629f650959d6706d54cd335/tests/__init__.py?format=meta\"     }   },   \"path\": \"tests/__init__.py\",   \"commit\": {     \"type\": \"commit\",     \"hash\": \"eefd5ef5d3df01aed629f650959d6706d54cd335\",     \"links\": {       \"self\": {         \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/commit/eefd5ef5d3df01aed629f650959d6706d54cd335\"       },       \"html\": {         \"href\": \"https://bitbucket.org/atlassian/bbql/commits/eefd5ef5d3df01aed629f650959d6706d54cd335\"       }     }   },   \"attributes\": [],   \"type\": \"commit_file\",   \"size\": 0 } ```  File objects contain an `attributes` element that contains a list of possible modifiers. Currently defined values are:  * `link` -- indicates that the entry is a symbolic link. The contents     of the file represent the path the link points to. * `executable` -- indicates that the file has the executable bit set. * `subrepository` -- indicates that the entry points to a submodule or     subrepo. The contents of the file is the SHA1 of the repository     pointed to. * `binary` -- indicates whether Bitbucket thinks the file is binary.  This endpoint can provide an alternative to how a HEAD request can be used to check for the existence of a file, or a file's size without incurring the overhead of receiving its full contents.   #### Directory listings  When `path` points to a directory instead of a file, the response is a paginated list of directory and file objects in the same order as the underlying SCM system would return them.  For example:  ```javascript $ curl https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef/tests {   \"pagelen\": 10,   \"values\": [     {       \"path\": \"tests/test_project\",       \"type\": \"commit_directory\",       \"links\": {         \"self\": {           \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef5d3df01aed629f650959d6706d54cd335/tests/test_project/\"         },         \"meta\": {           \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef5d3df01aed629f650959d6706d54cd335/tests/test_project/?format=meta\"         }       },       \"commit\": {         \"type\": \"commit\",         \"hash\": \"eefd5ef5d3df01aed629f650959d6706d54cd335\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/commit/eefd5ef5d3df01aed629f650959d6706d54cd335\"           },           \"html\": {             \"href\": \"https://bitbucket.org/atlassian/bbql/commits/eefd5ef5d3df01aed629f650959d6706d54cd335\"           }         }       }     },     {       \"links\": {         \"self\": {           \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef5d3df01aed629f650959d6706d54cd335/tests/__init__.py\"         },         \"meta\": {           \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef5d3df01aed629f650959d6706d54cd335/tests/__init__.py?format=meta\"         }       },       \"path\": \"tests/__init__.py\",       \"commit\": {         \"type\": \"commit\",         \"hash\": \"eefd5ef5d3df01aed629f650959d6706d54cd335\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/commit/eefd5ef5d3df01aed629f650959d6706d54cd335\"           },           \"html\": {             \"href\": \"https://bitbucket.org/atlassian/bbql/commits/eefd5ef5d3df01aed629f650959d6706d54cd335\"           }         }       },       \"attributes\": [],       \"type\": \"commit_file\",       \"size\": 0     }   ],   \"page\": 1,   \"size\": 2 } ```  When listing the contents of the repo's root directory, the use of a trailing slash at the end of the URL is required.  The response by default is not recursive, meaning that only the direct contents of a path are returned. The response does not recurse down into subdirectories. In order to \"walk\" the entire directory tree, the client can either parse each response and follow the `self` links of each `commit_directory` object, or can specify a `max_depth` to recurse to.  The max_depth parameter will do a breadth-first search to return the contents of the subdirectories up to the depth specified. Breadth-first search was chosen as it leads to the least amount of file system operations for git. If the `max_depth` parameter is specified to be too large, the call will time out and return a 555.  Each returned object is either a `commit_file`, or a `commit_directory`, both of which contain a `path` element. This path is the absolute path from the root of the repository. Each object also contains a `commit` object which embeds the commit the file is on. Note that this is merely the commit that was used in the URL. It is *not* the commit that last modified the file.  Directory objects have 2 representations. Their `self` link returns the paginated contents of the directory. The `meta` link on the other hand returns the actual `directory` object itself, e.g.:  ```javascript {   \"path\": \"tests/test_project\",   \"type\": \"commit_directory\",   \"links\": {     \"self\": {       \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef5d3df01aed629f650959d6706d54cd335/tests/test_project/\"     },     \"meta\": {       \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src/eefd5ef5d3df01aed629f650959d6706d54cd335/tests/test_project/?format=meta\"     }   },   \"commit\": { ... } } ```  #### Querying, filtering and sorting  Like most API endpoints, this API supports the Bitbucket querying/filtering syntax and so you could filter a directory listing to only include entries that match certain criteria. For instance, to list all binary files over 1kb use the expression:  `size > 1024 and attributes = \"binary\"`  which after urlencoding yields the query string:  `?q=size%3E1024+and+attributes%3D%22binary%22`  To change the ordering of the response, use the `?sort` parameter:  `.../src/eefd5ef/?sort=-size`  See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for more details.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
commit = 'commit_example' # String | The commit's SHA1.
path = 'path_example' # String | Path to the file.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  format: 'meta', # String | If 'meta' is provided, returns the (json) meta data for the contents of the file.  If 'rendered' is provided, returns the contents of a non-binary file in HTML-formatted rendered markup. Since Git does not generally track what text encoding scheme is used, this endpoint attempts to detect the most appropriate character encoding. While usually correct, determining the character encoding can be ambiguous which in exceptional cases can lead to misinterpretation of the characters. As such, the raw element in the response object should not be treated as equivalent to the file's actual contents.
  q: 'q_example', # String | Optional filter expression as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
  sort: 'sort_example', # String | Optional sorting parameter as per [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results).
  max_depth: 56 # Integer | If provided, returns the contents of the repository and its subdirectories recursively until the specified max_depth of nested directories. When omitted, this defaults to 1.
}

begin
  # Get file or directory contents
  result = api_instance.repositories_workspace_repo_slug_src_commit_path_get(commit, path, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_src_commit_path_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_src_commit_path_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTreeentries>, Integer, Hash)> repositories_workspace_repo_slug_src_commit_path_get_with_http_info(commit, path, repo_slug, workspace, opts)

```ruby
begin
  # Get file or directory contents
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_src_commit_path_get_with_http_info(commit, path, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTreeentries>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_src_commit_path_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **path** | **String** | Path to the file. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **format** | **String** | If &#39;meta&#39; is provided, returns the (json) meta data for the contents of the file.  If &#39;rendered&#39; is provided, returns the contents of a non-binary file in HTML-formatted rendered markup. Since Git does not generally track what text encoding scheme is used, this endpoint attempts to detect the most appropriate character encoding. While usually correct, determining the character encoding can be ambiguous which in exceptional cases can lead to misinterpretation of the characters. As such, the raw element in the response object should not be treated as equivalent to the file&#39;s actual contents. | [optional] |
| **q** | **String** | Optional filter expression as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |
| **sort** | **String** | Optional sorting parameter as per [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results). | [optional] |
| **max_depth** | **Integer** | If provided, returns the contents of the repository and its subdirectories recursively until the specified max_depth of nested directories. When omitted, this defaults to 1. | [optional] |

### Return type

[**PaginatedTreeentries**](PaginatedTreeentries.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_src_get

> <PaginatedTreeentries> repositories_workspace_repo_slug_src_get(repo_slug, workspace, opts)

Get the root directory of the main branch

This endpoint redirects the client to the directory listing of the root directory on the main branch.  This is equivalent to directly hitting [/2.0/repositories/{username}/{repo_slug}/src/{commit}/{path}](src/%7Bcommit%7D/%7Bpath%7D) without having to know the name or SHA1 of the repo's main branch.  To create new commits, [POST to this endpoint](#post)

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  format: 'meta' # String | Instead of returning the file's contents, return the (json) meta data for it.
}

begin
  # Get the root directory of the main branch
  result = api_instance.repositories_workspace_repo_slug_src_get(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_src_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_src_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTreeentries>, Integer, Hash)> repositories_workspace_repo_slug_src_get_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # Get the root directory of the main branch
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_src_get_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTreeentries>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_src_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **format** | **String** | Instead of returning the file&#39;s contents, return the (json) meta data for it. | [optional] |

### Return type

[**PaginatedTreeentries**](PaginatedTreeentries.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_src_post

> repositories_workspace_repo_slug_src_post(repo_slug, workspace, opts)

Create a commit by uploading a file

This endpoint is used to create new commits in the repository by uploading files.  To add a new file to a repository:  ``` $ curl https://api.bitbucket.org/2.0/repositories/username/slug/src \\   -F /repo/path/to/image.png=@image.png ```  This will create a new commit on top of the main branch, inheriting the contents of the main branch, but adding (or overwriting) the `image.png` file to the repository in the `/repo/path/to` directory.  To create a commit that deletes files, use the `files` parameter:  ``` $ curl https://api.bitbucket.org/2.0/repositories/username/slug/src \\   -F files=/file/to/delete/1.txt \\   -F files=/file/to/delete/2.txt ```  You can add/modify/delete multiple files in a request. Rename/move a file by deleting the old path and adding the content at the new path.  This endpoint accepts `multipart/form-data` (as in the examples above), as well as `application/x-www-form-urlencoded`.  #### multipart/form-data  A `multipart/form-data` post contains a series of \"form fields\" that identify both the individual files that are being uploaded, as well as additional, optional meta data.  Files are uploaded in file form fields (those that have a `Content-Disposition` parameter) whose field names point to the remote path in the repository where the file should be stored. Path field names are always interpreted to be absolute from the root of the repository, regardless whether the client uses a leading slash (as the above `curl` example did).  File contents are treated as bytes and are not decoded as text.  The commit message, as well as other non-file meta data for the request, is sent along as normal form field elements. Meta data fields share the same namespace as the file objects. For `multipart/form-data` bodies that should not lead to any ambiguity, as the `Content-Disposition` header will contain the `filename` parameter to distinguish between a file named \"message\" and the commit message field.  #### application/x-www-form-urlencoded  It is also possible to upload new files using a simple `application/x-www-form-urlencoded` POST. This can be convenient when uploading pure text files:  ``` $ curl https://api.bitbucket.org/2.0/repositories/atlassian/bbql/src \\   --data-urlencode \"/path/to/me.txt=Lorem ipsum.\" \\   --data-urlencode \"message=Initial commit\" \\   --data-urlencode \"author=Erik van Zijst <erik.van.zijst@gmail.com>\" ```  There could be a field name clash if a client were to upload a file named \"message\", as this filename clashes with the meta data property for the commit message. To avoid this and to upload files whose names clash with the meta data properties, use a leading slash for the files, e.g. `curl --data-urlencode \"/message=file contents\"`.  When an explicit slash is omitted for a file whose path matches that of a meta data parameter, then it is interpreted as meta data, not as a file.  #### Executables and links  While this API aims to facilitate the most common use cases, it is possible to perform some more advanced operations like creating a new symlink in the repository, or creating an executable file.  Files can be supplied with a `x-attributes` value in the `Content-Disposition` header. For example, to upload an executable file, as well as create a symlink from `README.txt` to `README`:  ``` --===============1438169132528273974== Content-Type: text/plain; charset=\"us-ascii\" MIME-Version: 1.0 Content-Transfer-Encoding: 7bit Content-ID: \"bin/shutdown.sh\" Content-Disposition: attachment; filename=\"shutdown.sh\"; x-attributes:\"executable\"  #!/bin/sh halt  --===============1438169132528273974== Content-Type: text/plain; charset=\"us-ascii\" MIME-Version: 1.0 Content-Transfer-Encoding: 7bit Content-ID: \"/README.txt\" Content-Disposition: attachment; filename=\"README.txt\"; x-attributes:\"link\"  README --===============1438169132528273974==-- ```  Links are files that contain the target path and have `x-attributes:\"link\"` set.  When overwriting links with files, or vice versa, the newly uploaded file determines both the new contents, as well as the attributes. That means uploading a file without specifying `x-attributes=\"link\"` will create a regular file, even if the parent commit hosted a symlink at the same path.  The same applies to executables. When modifying an existing executable file, the form-data file element must include `x-attributes=\"executable\"` in order to preserve the executable status of the file.  Note that this API does not support the creation or manipulation of subrepos / submodules.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  message: 'message_example', # String | The commit message. When omitted, Bitbucket uses a canned string.
  author: 'author_example', # String |  The raw string to be used as the new commit's author. This string follows the format `Erik van Zijst <evzijst@atlassian.com>`.  When omitted, Bitbucket uses the authenticated user's full/display name and primary email address. Commits cannot be created anonymously.
  parents: 'parents_example', # String |  A comma-separated list of SHA1s of the commits that should be the parents of the newly created commit.  When omitted, the new commit will inherit from and become a child of the main branch's tip/HEAD commit.  When more than one SHA1 is provided, the first SHA1 identifies the commit from which the content will be inherited.\".
  files: 'files_example', # String |  Optional field that declares the files that the request is manipulating. When adding a new file to a repo, or when overwriting an existing file, the client can just upload the full contents of the file in a normal form field and the use of this `files` meta data field is redundant. However, when the `files` field contains a file path that does not have a corresponding, identically-named form field, then Bitbucket interprets that as the client wanting to replace the named file with the null set and the file is deleted instead.  Paths in the repo that are referenced in neither files nor an individual file field, remain unchanged and carry over from the parent to the new commit.  This API does not support renaming as an explicit feature. To rename a file, simply delete it and recreate it under the new name in the same commit. 
  branch: 'branch_example' # String |  The name of the branch that the new commit should be created on. When omitted, the commit will be created on top of the main branch and will become the main branch's new head.  When a branch name is provided that already exists in the repo, then the commit will be created on top of that branch. In this case, *if* a parent SHA1 was also provided, then it is asserted that the parent is the branch's tip/HEAD at the time the request is made. When this is not the case, a 409 is returned.  When a new branch name is specified (that does not already exist in the repo), and no parent SHA1s are provided, then the new commit will inherit from the current main branch's tip/HEAD commit, but not advance the main branch. The new commit will be the new branch. When the request *also* specifies a parent SHA1, then the new commit and branch are created directly on top of the parent commit, regardless of the state of the main branch.  When a branch name is not specified, but a parent SHA1 is provided, then Bitbucket asserts that it represents the main branch's current HEAD/tip, or a 409 is returned.  When a branch name is not specified and the repo is empty, the new commit will become the repo's root commit and will be on the main branch.  When a branch name is specified and the repo is empty, the new commit will become the repo's root commit and also define the repo's main branch going forward.  This API cannot be used to create additional root commits in non-empty repos.  The branch field cannot be repeated.  As a side effect, this API can be used to create a new branch without modifying any files, by specifying a new branch name in this field, together with `parents`, but omitting the `files` fields, while not sending any files. This will create a new commit and branch with the same contents as the first parent. The diff of this commit against its first parent will be empty. 
}

begin
  # Create a commit by uploading a file
  api_instance.repositories_workspace_repo_slug_src_post(repo_slug, workspace, opts)
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_src_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_src_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_src_post_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # Create a commit by uploading a file
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_src_post_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_src_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **message** | **String** | The commit message. When omitted, Bitbucket uses a canned string. | [optional] |
| **author** | **String** |  The raw string to be used as the new commit&#39;s author. This string follows the format &#x60;Erik van Zijst &lt;evzijst@atlassian.com&gt;&#x60;.  When omitted, Bitbucket uses the authenticated user&#39;s full/display name and primary email address. Commits cannot be created anonymously. | [optional] |
| **parents** | **String** |  A comma-separated list of SHA1s of the commits that should be the parents of the newly created commit.  When omitted, the new commit will inherit from and become a child of the main branch&#39;s tip/HEAD commit.  When more than one SHA1 is provided, the first SHA1 identifies the commit from which the content will be inherited.\&quot;. | [optional] |
| **files** | **String** |  Optional field that declares the files that the request is manipulating. When adding a new file to a repo, or when overwriting an existing file, the client can just upload the full contents of the file in a normal form field and the use of this &#x60;files&#x60; meta data field is redundant. However, when the &#x60;files&#x60; field contains a file path that does not have a corresponding, identically-named form field, then Bitbucket interprets that as the client wanting to replace the named file with the null set and the file is deleted instead.  Paths in the repo that are referenced in neither files nor an individual file field, remain unchanged and carry over from the parent to the new commit.  This API does not support renaming as an explicit feature. To rename a file, simply delete it and recreate it under the new name in the same commit.  | [optional] |
| **branch** | **String** |  The name of the branch that the new commit should be created on. When omitted, the commit will be created on top of the main branch and will become the main branch&#39;s new head.  When a branch name is provided that already exists in the repo, then the commit will be created on top of that branch. In this case, *if* a parent SHA1 was also provided, then it is asserted that the parent is the branch&#39;s tip/HEAD at the time the request is made. When this is not the case, a 409 is returned.  When a new branch name is specified (that does not already exist in the repo), and no parent SHA1s are provided, then the new commit will inherit from the current main branch&#39;s tip/HEAD commit, but not advance the main branch. The new commit will be the new branch. When the request *also* specifies a parent SHA1, then the new commit and branch are created directly on top of the parent commit, regardless of the state of the main branch.  When a branch name is not specified, but a parent SHA1 is provided, then Bitbucket asserts that it represents the main branch&#39;s current HEAD/tip, or a 409 is returned.  When a branch name is not specified and the repo is empty, the new commit will become the repo&#39;s root commit and will be on the main branch.  When a branch name is specified and the repo is empty, the new commit will become the repo&#39;s root commit and also define the repo&#39;s main branch going forward.  This API cannot be used to create additional root commits in non-empty repos.  The branch field cannot be repeated.  As a side effect, this API can be used to create a new branch without modifying any files, by specifying a new branch name in this field, together with &#x60;parents&#x60;, but omitting the &#x60;files&#x60; fields, while not sending any files. This will create a new commit and branch with the same contents as the first parent. The diff of this commit against its first parent will be empty.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_watchers_get

> <PaginatedAccounts> repositories_workspace_repo_slug_watchers_get(repo_slug, workspace)

List repositories watchers

Returns a paginated list of all the watchers on the specified repository.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List repositories watchers
  result = api_instance.repositories_workspace_repo_slug_watchers_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_watchers_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_watchers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAccounts>, Integer, Hash)> repositories_workspace_repo_slug_watchers_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List repositories watchers
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_watchers_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAccounts>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->repositories_workspace_repo_slug_watchers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedAccounts**](PaginatedAccounts.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_permissions_repositories_get

> <PaginatedRepositoryPermissions> user_permissions_repositories_get(opts)

List repository permissions for a user

Returns an object for each repository the caller has explicit access to and their effective permission — the highest level of permission the caller has. This does not return public repositories that the user was not granted any specific permission in, and does not distinguish between explicit and implicit privileges.  Permissions can be:  * `admin` * `write` * `read`  Example:  ``` $ curl https://api.bitbucket.org/2.0/user/permissions/repositories  {   \"pagelen\": 10,   \"values\": [     {       \"type\": \"repository_permission\",       \"user\": {         \"type\": \"user\",         \"nickname\": \"evzijst\",         \"display_name\": \"Erik van Zijst\",         \"uuid\": \"{d301aafa-d676-4ee0-88be-962be7417567}\"       },       \"repository\": {         \"type\": \"repository\",         \"name\": \"geordi\",         \"full_name\": \"bitbucket/geordi\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"       },       \"permission\": \"admin\"     }   ],   \"page\": 1,   \"size\": 1 } ```  Results may be further [filtered or sorted](/cloud/bitbucket/rest/intro/#filtering) by repository or permission by adding the following query string parameters:  * `q=repository.name=\"geordi\"` or `q=permission>\"read\"` * `sort=repository.name`  Note that the query parameter values need to be URL escaped so that `=` would become `%3D`.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::RepositoriesApi.new
opts = {
  q: 'q_example', # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
  sort: 'sort_example' # String |  Name of a response property sort the result by as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
}

begin
  # List repository permissions for a user
  result = api_instance.user_permissions_repositories_get(opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->user_permissions_repositories_get: #{e}"
end
```

#### Using the user_permissions_repositories_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRepositoryPermissions>, Integer, Hash)> user_permissions_repositories_get_with_http_info(opts)

```ruby
begin
  # List repository permissions for a user
  data, status_code, headers = api_instance.user_permissions_repositories_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRepositoryPermissions>
rescue Bitbucket::ApiError => e
  puts "Error when calling RepositoriesApi->user_permissions_repositories_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |
| **sort** | **String** |  Name of a response property sort the result by as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |

### Return type

[**PaginatedRepositoryPermissions**](PaginatedRepositoryPermissions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

