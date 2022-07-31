# README

Ruby version: `2.7.2`  
Rails version `6.1.6.1`

Install deps: `bundle`

Run server: `rails s`

Example for success:

```bash
curl -X POST http://localhost:3000/server -H "content-type:application/json" -d '{"seq":[4, 1, 7, 8, 7, 2]}'
```

Example for fail:

```bash
curl -X POST http://localhost:3000/server -H "content-type:application/json" -d '{"seq":[1, 2, 3]}'
```

Running tests:
