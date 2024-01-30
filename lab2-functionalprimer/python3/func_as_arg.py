def listFunc(a, b):
    # return [i for i in range(1, 6)] #Create list of ints from 1 to 5, Haskell equivalent [1..5]
    return [i for i in range(a, b)]

# def applicatorFunc(inpFunc, s):
#     if s=='s':
#         return sum(inpFunc())
#     else:
#         return sum(inpFunc())/5

def applicatorFunc(inpFunc, a, b, s):
    if s=='s':
        return sum(inpFunc(a, b))
    else:
        return sum(inpFunc(a, b))/b

print(applicatorFunc(listFunc, 1, 6, 's'))