# README

## Steps to build and use this project
                               

### This example adds an example of a model (Post) and its CRUD in graphql 

```bash
rails server -p 3000
```

### As an example of queries it can be following:

```json
query FindPost {
    findPost(id: 1) {
        content
        title
    }
} 
```

```json
mutation CreatePost {
    createPost(input : {
        content: "my content",
        title: "my titke"
    }
    ) {
        content
        title
    }
}
```



## you're done!