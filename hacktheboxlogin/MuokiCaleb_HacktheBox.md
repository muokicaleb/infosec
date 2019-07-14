---

author: Muoki Caleb

date:   15th July 2019

---
# Getting invite code https://www.hackthebox.eu



The first thing I tried was try a blank code and one with random values. they were both invalid this indicated that there was some form of validation happening.
<br/>

![invalid_](Invalid_.png)

<br/>

The next step was to go through the source code of the page.
I found a link to a .js file.
<br/>
<br/>
`<script defer src="/js/inviteapi.min.js"></script>`
<br/>
<br/>

![js_](Js_link.png)
<br/>
<br/>

I followed the link it took me to the js file.
Upon inspection of the code I found a `makeInviteCode()` function.
<br/>

Using Console from the developer tools I called the `makeInviteCode()`  function
<br/><br/>
![cons](cons.png)
<br/><br/>
The function returned a base 64 string. I then proceeded to decode it and got.
<br/><br/>
![msg](msg.png)
<br/><br/>
Using curl I made a post request.
<br/><br/>
![curl_](curl_.png)
<br/><br/>
The response was an encoded string
 `RFlNREctVENIUEgtQ0xIWU8tWUpJQVMtV0pERFY`
 <br/><br/>
After decoding it got the invite code.
<br/><br/>
`DYMDG-TCHPH-CLHYO-YJIAS-WJDDV`
<br/><br/>

After Entering the code I got in.
<br/><br/><br/>
![cod](con.png)
<br/><br/><br/>
![Alt text](in.png)
<br/><br/><br/>
