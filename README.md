# mochi_upload

File upload support for mochi GraphQL (multipart request spec).

## Installation

```toml
# gleam.toml
[dependencies]
mochi_upload = { git = "https://github.com/qwexvf/mochi_upload", ref = "main" }
```

## Usage

```gleam
import mochi_upload/upload
import mochi_upload/multipart

let files = multipart.parse(request)

let schema =
  query.new()
  |> query.add_scalar(upload.scalar())
  |> query.build
```

## License

Apache-2.0

