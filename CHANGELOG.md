# 0.3.x (2015-01-20)

## Features

- Support the use of complex objects to define resource.
- Remove mongoose field: `__v`. ([#6](https://github.com/TossShinHwa/node-odata/issues/6))
- Edit field `_id` to `id`. ([#5](https://github.com/TossShinHwa/node-odata/issues/5))

## Bugs

- Build-in query function's keyword can't use in field of resource or get error when this field. ([#9](https://github.com/TossShinHwa/node-odata/issues/9))

# 0.2.x (2015-01-04)

## Features

- Improved regist resource's API.
- Wrap 'Express' module.

# 0.1.x (2014-10-16)

## Features

- OData query supported more keywords include: `$count`.
- $filter supported more keywords include: `indexof`, `year`.
- Added example.
- Added test case.

# 0.0.x (2014-10-05)

## Features

- Full CRUD supported.
- OData query supported keywords include: `$filter`, `$select`, `$top`, `$skip`, `$orderby`.
- $filter supported keywords include: `eq`, `ne`, `lt`, `le`, `gt`, `ge`, `and`.
