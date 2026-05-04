# mochi_upload

File upload support for [mochi](https://github.com/qwexvf/mochi) GraphQL,
implementing the GraphQL multipart request spec.

## Installation

```sh
gleam add mochi_upload
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
