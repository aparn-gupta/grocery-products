import { createClient } from "redis"


const redisUrl = process.env.REDIS_URL

console.log(redisUrl)

if (!redisUrl) {
    throw new Error("Redis url not found!")
}





const client = createClient({url: redisUrl})

if (!client.isOpen) {
    client.connect()
}

client.on("error", (err) => {console.log("error connecting to redis", err)})


export default client