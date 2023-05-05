<h1 align=center>fetch single-header cmake</h1>
<div align=center>fetch single-header func</div>

<br />

### Usage
Import
```cmake
include(<location>/fetch_single_header.cmake)
```

Use
```
fetch_single_header(
  https://raw.githubusercontent.com/doctest/doctest/master/doctest/doctest.h # single-header url
  doctest # target lib name
  deps # target folder
)
```
