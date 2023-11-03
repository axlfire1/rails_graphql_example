# README

## Steps to build and run this example

### This example adds the model (Post) and the queries to create a CRUD example on this model in graphql

```bash
bundle install
```

```bash
rails db:migrate
```

```bash
rails server -p 3000
```

### Using postman or any other similar tool, you can execute following graphql queries as follows:

### List all existing post
```json
query FindPost {
    postList {
        content
        id
        title
    }
}
```

### Find an existing post
```json
query FindPost {
    findPost(id: 1) {
        id
        content
        title
    }
} 
```

### create a new post
```json
mutation CreatePost {
    createPost(input : {
        content: "my content",
        title: "my titke"
    }
    ) {
        id
        content
        title
    }
}
```

### update post
```json
mutation updatePost {
    updatePost(
        input: {
            content: "the content"
            id: 1,
            title: "hola",
        }
    ) {
        content
        id
        title
    }
}
```

### delete post
```json
mutation DeletePost {
    deletePost(input: {id: 2}) {
        content
        id
        title
    }
}
```

## you're done!