const buildIAMPolicy = (userId, effect, resource, context) => {
    console.log('User id', userId);
    const policy = {
        principalId: userId,
        policyDocument: {
            Statement: [{
                Action: 'execute-api:Invoke',
                Effect: effect,
                Resource: resource
            }]
        },
        context
    }
    
    return policy
}

module.exports = {
    buildIAMPolicy
}