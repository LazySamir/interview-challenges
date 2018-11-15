# Interview Challenges

I am using this repo as a learning log for various software developer challenges.

### 1.0 Apple Trading (InterviewCake)

#### 1.1 Instructions

`stock_prices`

"The indices are the time (in minutes) past trade opening time, which was 9:30am local time.
The values are the price (in US dollars) of one share of Apple stock at that time.
So if the stock cost $500 at 10:30am, that means stock_prices[60] = 500.

Write an efficient function that takes stock_prices and returns the best profit I could have made from one purchase and one sale of one share of Apple stock yesterday."

For example:

```
stock_prices = [10, 7, 5, 8, 11, 9]

get_max_profit(stock_prices)
```
-  Returns 6 (buying for $5 and selling for $11)

"No "shorting"—you need to buy before you can sell. Also, you can't buy and sell in the same time step—at least 1 minute has to pass."

#### 1.2 Approach

My approach is to first solve the problem in any way and then make it more efficient.

The simplest solution I can see is to iterate over the array, comparing the current element with it's following elements. There needs to be a check to see if the difference between the two elements is higher than anything previously recorded (this can be saved as a variable) and if it is, assign the new value to the variable.

Update: added if statement to ensure elements were only compared with elements that come after.
