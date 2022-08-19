# API Wrapper Using RAWG 😎😎😎
###### Made by: Edcel Jake Aquino with ❤️

# Hello everyone! I'm Edcel, a Software Engineer and this is how I made my API Wrapper! ❤️

## To make an API wrapper, first you must choose an API to be passed on to your app 🤔
###### Some examples are: rawg.io, igb.com, or challonge.com 😀
 
In this app, I chose **rawg.io**. Here are the things that I did in order to make this API wrapper 👇👇👇

1. Make a rails app, and add **rest-client** as a gem! 😀
- Enter into terminal `rails new <name of app>`. 
- After creating the rails app, I have added this into my gem file `gem 'rest-client', '~> 2.1'` then run **bundle install**

2. Create an **api** folder
- After creating the new rails app, we have to make a folder in the **app** folder named as **api**. 

3. Create another folder inside **api** folder 
- Then we must create another folder inside **api** folder, this time using the name of the api that you chose. Mine was **rawg** 😀

4. Create a file for client and request 
- Inside my **rawg** folder, I have created a **client.rb** file. See the file to see how I initiated the client 😊
- Create another file named as **request.rb**. Kindly open also the said file to learn how I initiated the request 😊

5. Go to the API and generate tokens. 
- Before proceeding in the app, we need to get our personal tokens from the API, in my case [rawg](rawg.io).

6. Get your tokens, then configure the credentials. 
- In order to hide my credentials from anyone who might want to use my token in rawg, I followed this [link](https://www.freshworks.com/eng-blogs/managing-rails-application-secrets-with-encrypted-credentials-blog/) and it hid my credentials like a charm! I recommend you using it too! 😀

7. Follow this format in the **credentails.yml** file
- After following the link from **no. 6**, you will see a **credentials.yml** file, please follow this format: 

```

rawg: 
  production: 
    rawg_token: 'your token here
    base_url: "https://api.rawg.io/api"

```

8. Credentials are now hidden, no one can get your token and use it for their own benefit 🤫
- Hiding your credentials is a must, especially if the rails app is much bigger, it needs some keys to be accessed, so better take note of how to hide it. 

9. Make some tests to assure its' function 💪
- I made some tests using rspec, and it sure tested my API-wrapper if it's doing it's purpose 😀 

10. All done! And that is how I built my API-wrapper, so what is the purpose of this? 🤔
- Helps us call various API's without the need for their real-time interaction. 
- Can be used to automate API-reliant processes. 
- It halps us integrate multiple API calls into a single service. 



