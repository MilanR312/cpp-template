# compilation

## system files  
```g++ -std=c++20 -fmodules-ts -x c++-system-header "filename"```  



## user files  
files saved in modules will be automatically compiled using  
`make all`
when saving in a different folder, add `DIR` to the `FILES` variable in the make file