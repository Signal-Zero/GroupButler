local redis = require 'redis'
local config = require 'config'
local db = redis.connect(config.redis.host, config.redis.port)
db:auth(config.redis.password)
db:select(config.redis.db) --select the redis db

return db
