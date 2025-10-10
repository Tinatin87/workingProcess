import json

with open("numbers.json", "r", encoding="utf-8") as f:
     data=json.load(f)

numbers=data["numbers"]
positive = 0
negative = 0
zeros = 0

for num in numbers:
    if num > 0:
        positive += 1
    elif num < 0:
        negative += 1
    else:
        zeros += 1
print("positive numbers:", positive)
print("negative numbers:", negative)
print("zeros:", zeros)       