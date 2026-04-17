//// File upload support for mochi GraphQL.
////
//// Implements the GraphQL multipart request specification.
////
//// ## Usage
////
//// ```gleam
//// import mochi_upload
//// import mochi_upload/upload
//// import mochi_upload/multipart
////
//// let config = mochi_upload.default_config()
////   |> mochi_upload.with_max_file_size(10 * 1024 * 1024)
////
//// case multipart.parse_multipart(body, boundary, config) {
////   Ok(request) -> execute_with_uploads(request)
////   Error(e) -> handle_error(e)
//// }
//// ```

import mochi/schema.{type ScalarType}
import mochi_upload/upload.{type UploadConfig, type UploadedFile}

pub fn default_config() -> UploadConfig {
  upload.default_config()
}

pub fn with_max_file_size(config: UploadConfig, size: Int) -> UploadConfig {
  upload.with_max_file_size(config, size)
}

pub fn with_max_files(config: UploadConfig, count: Int) -> UploadConfig {
  upload.with_max_files(config, count)
}

pub fn with_allowed_mime_types(
  config: UploadConfig,
  types: List(String),
) -> UploadConfig {
  upload.with_allowed_mime_types(config, types)
}

pub fn allow_images(config: UploadConfig) -> UploadConfig {
  upload.allow_images(config)
}

pub fn allow_documents(config: UploadConfig) -> UploadConfig {
  upload.allow_documents(config)
}

pub fn upload_scalar() -> ScalarType {
  upload.upload_scalar()
}

pub fn read_string(file: UploadedFile) -> Result(String, upload.UploadError) {
  upload.read_string(file)
}

pub fn cleanup(file: UploadedFile) -> Result(Nil, upload.UploadError) {
  upload.cleanup(file)
}
