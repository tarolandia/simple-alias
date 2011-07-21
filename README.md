# simple-alias - Very simple class to register aliases (Ruby)

## Description

My first steps using Ruby, nothing special.


## Example

```ruby

require "/path/to/alias.rb"
a = Alias.new
a.add_alias("p", "puts 'Vars: '")
a.p "hello", "bye"
Vars: hello
bye
 => nil

```
