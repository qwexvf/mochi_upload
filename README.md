# mochi_upload

File upload support for [mochi](https://github.com/qwexvf/mochi) GraphQL,
implementing the GraphQL multipart request spec.

## Installation

```sh
gleam add mochi_upload
```

## Usage

```gleam
import mochi/query
import mochi_upload/multipart
import mochi_upload/upload

// `form_parts` is the request body split into `multipart.FormPart`s
// by your HTTP server's form parser.
let request =
  multipart.parse_multipart_request(form_parts, multipart.default_config())

let schema =
  query.new()
  |> query.add_scalar(upload.upload_scalar())
  |> query.build
```

## License

Apache-2.0
