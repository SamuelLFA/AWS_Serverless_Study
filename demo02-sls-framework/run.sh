# intall
npm i -g serverless

# initialize sls
npx sls

# always deploy before everything in order to verify if the environment is ok
npx sls deploy 

# AWS invoke
npx sls invoke -f hello

# local invoke
npx sls invoke local -f hello -l

# dashboard 
sls

# logs
sls logs -f hello -t

# remove
sls remove