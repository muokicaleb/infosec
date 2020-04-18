H1 Thermostat

# H1 Thermostat
## Android ctf
![apk](../_resources/4a1cd8cab35d47d4a7070215fc4e88af.png)

## Flag 0/1, 1/1
First step was to install the app and find out how it works. For this I used Anbox emulator.



![appscreen.png](../_resources/1319b9aeb6af4f87bdc6a53cb3e5f6a7.png)

The app was 'plain' it didn't have any visible buttons apart from the minus and addition buttons.

Next step was to decompile the app. For this i used 
```
apktool d thermostat.apk
```


![decompile.png](../_resources/5355d2624e864053bd85be45145e3c0c.png)

This created a folder with the source code.
To easily look for the flags I used grep.


![flags.png](../_resources/97eaea3e5ef74a2bbe09e42da11797ee.png)




Using apktool and grep I was able to find the flags.

