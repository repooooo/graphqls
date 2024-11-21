# graphqls

```bash
go get -u github.com/repooooo/graphqls
```

## Project Structure

```bash
graphqls/
  ├── go/
  │   ├── gen/
  │   └── resolvers/
  └── graphql/
```

### GraphQL
- `graphql/`: This directory contains the GraphQL schemas used in the project. These schemas define the structure and types for the GraphQL API.

### Go
- `go/gen/`: This directory contains the generated files. These files are automatically created and should not be edited as they are meant to be regenerated as needed.
- `go/resolvers/`: This directory contains resolver files for handling the GraphQL queries and mutations. You will need to define your custom resolvers here for integration with the main project.
- `resolver.go`: This file is where you implement your resolvers for various queries and mutations. It should be used in the main project to handle the business logic.
- `schema.resolvers.go`: This file is where you need to modify the generated resolvers to suit your custom logic.
