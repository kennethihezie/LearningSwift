//Use async to mark a function that runs asynchronously.
func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}

func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    return "Guest"
}

/*
Use async let to call an asynchronous function, 
letting it run in parallel with other asynchronous
code. When you use the value it returns, write 
await.
*/
func connectUser(to server: String) async {
    async let userID = fetchUserID(from: server)
    async let userName = fetchUsername(from: server)
    let greeting = await "Hello \(userName), userId \(userID)"
    print(greeting)
}

//call async function
Task {
    await connectUser(to: "primary")
}
