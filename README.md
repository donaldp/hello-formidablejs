# Hello Formidable

This is a formidablejs crud app example.

## Requirements

* Nodejs >=14.18.*
* [@formidablejs/craftsman](https://www.formidablejs.org/docs/) >= 0.6.*

## Getting started

Clone repo:

```
git clone https://github.com/donaldp/hello-formidablejs.git
```

Copy .env.example to .env:

```
cp .env.example .env
```

Install dependencies:

```
npm i --legacy-peer-deps
```

Set the application key:

```
craftsman key
```

Run the application:

```
craftsman serve --dev
```

Visit http://localhost:3000/posts

----

> Note: Routes are defined under the `routes/web.imba` file and Formidable Views stored under `resources/views/posts` and Imba Components (tags) are stored under `resources/components`

License
-------

The MIT License (MIT). Please see [License File](LICENSE) for more information.
