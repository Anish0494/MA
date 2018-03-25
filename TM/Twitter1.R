#Twitter 1 - Working using my Keys
library("curl")
library("twitteR")
library("ROAuth")

download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")

#different for each account
consumerKey="UrC8C0EPXjDzDURhAMgOCvxak"
consumerSecret="ygt6AD8yOAvGdWHMLoBFKZFk1XXDXufAwkDxHg5FUUsZYObCsX"
AccessToken="867664789555658753-zJY6twR3epci8GHzeRrS9Q1uyEDxSRE"
AccessTokenSecret="buiyzFhkByxV1ZnRJUqgkQTeCKitqV1DtxIseyGsg6GNg"

#Commont for all accounts except the keys

cred <- OAuthFactory$new(consumerKey=consumerKey, consumerSecret=consumerSecret, requestURL='https://api.twitter.com/oauth/request_token', accessURL='https://api.twitter.com/oauth/access_token', authURL='https://api.twitter.com/oauth/authorize')


cred$handshake(cainfo="cacert.pem") # it will take browser
save(cred, file="twitter authentication.Rdata") # store this to avoid asking again


#Load saved authentication cert
load("twitter authentication.Rdata")
#registerTwitterOAuth(cred)

setup_twitter_oauth(consumerKey, consumerSecret, AccessToken, AccessTokenSecret)

search.string <- "#summeriscoming"
no.of.tweets <- 100

tweets <- searchTwitter(search.string, n=no.of.tweets,lang="en")
tweets
