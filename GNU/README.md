#GNU WC

##Options
* l: lines counter
* w: words counter
* m: bytes counter

##Examples
* `WC.wc("path/to/file.trololo")` returns `{:lines=>698, :words=>51351, :bytes=>418249}`
* `WC.wc("path/to/file.trololo")[:lines]` returns `698`
* `WC.wc("path/to/file.trololo", 'l')` returns `{:lines=>698, :words=>0, :bytes=>0}`