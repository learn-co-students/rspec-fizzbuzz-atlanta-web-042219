p (1..100).map{|i|o="";o<<"Fizz" if i%3==0;o<<"Buzz" if i%5==0;o<<i.to_s if o=="";o}
