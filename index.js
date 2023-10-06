const express = require('express')
const app = express()

app.get('/', async (_, res) => {
    res.json("Node app is running")
})

app.listen(5000, () => {
    console.log(`App is running on port 5000`);
    return `App is running on port 5000`
});