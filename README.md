# mochi_upload

File upload support for mochi GraphQL (multipart request spec).

## Installation

```sh
gleam add mochi_upload
```

## Usage

```gleam
import mochi_upload/upload
import mochi_upload/multipart

// Parse multipart upload request
let files = multipart.parse(request)

// Use Upload scalar in schema
let schema =
  query.new()
  |> query.add_scalar(upload.scalar())
  |> query.build
```

## License

Apache-2.0

