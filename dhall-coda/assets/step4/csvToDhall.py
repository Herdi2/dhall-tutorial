
with open("users.csv") as f:
    csv = f.readlines()
    col_names = csv[0].split(',')
    output = []
    for line in csv[1:]:
        values=line.strip().split(',')
        output.append(
            "{name=\"" + values[0] + "\",\n" +
            "email=\"" + values[1] + "\",\n" +
            "role=\"" + values[2] + "\"}")
         
    print("[\n" + ",\n".join(output) + "\n]")

