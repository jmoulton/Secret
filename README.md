# Secret

This gem in intended to determine whether a given function secret() is
additive for all combinations of prime numbers less than a given integer
such that secret(x) + secret(y) = secret(x + y) for all combinations of
x and y.

Currently the secret() function is hard-coded to be secret(x) => x.
Examples below show how outcome is affected when the function is
changed.

## Installation

#### Ruby Version 2.2.3p173

Clone this repository

`git clone git@github.com:jmoulton/Secret.git`

Change directory into secret

`cd secret`

Build the gem locally

`gem build secret.gemspec`

Install the gem locally

`gem install secret-0.0.1.gem`

## Usage

Use the `secret` command and pass in a single integer. You can also pass
in the `--help flag`

Example:

```
secret 40
Hoorah!! The function is additive!
```

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Example secret() functions

secret(x) = secret(x * 2)

```
secret 400
Hoorah!! The function is additive!
```
secret(x) = secret(x * 3)

```
secret 125
Hoorah!! The function is additive!
```
secret(x) = secret(x + 1)

```
secret 22
The function is NOT additive!
```
secret(x) = secret(x - 3)

```
secret 17
The function is NOT additive!
```


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

