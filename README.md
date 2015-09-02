# Application for close.io

Repository with JSON blob and various ways of submitting it to https://app.close.io/hackwithus/ URI.

# JSON Blob

Create a file called close.io.json and populate with required fields.

```
{
"first_name": "Micheal",
"last_name": "Waltz",
"email": "ecliptik@gmail.com",
"phone": "555-555-5555",
"cover_letter": "I like Github, Ruby, and beer",
"urls": [ "https://github.com/ecliptik",
          "https://www.linkedin.com/in/michealcwaltz",
          "https://twitter.com/junocake",
          "https://plus.google.com/+MichealWaltz" ]
}
```

# Posting the Blob
## Using curl

Use curl to post to the URI, make sure that the *--data-binary* argument points to the full path,

```
curl -XPOST -H 'Content-Type:application/json' -H 'Accept: application/json' --data-binary @/home/micheal/git/close.io/close.io.json https://app.close.io/hackwithus/ -v -s
```

## Other Languages
### Ruby

The [send2close.rb](send2close.rb) script uses the Ruby stdlib uri and net/http gems,

```
ruby send2close.rb
{"further_reading": "https://hack.close.io", "you_are_awesome": true, "id": "lead_BnShvdM1JQVoFf6fZNWNJxrsVaZDHPUKHe6kZOAj0IB"}
```
