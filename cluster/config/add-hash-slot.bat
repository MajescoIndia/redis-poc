FOR /L %%A IN (0,1,8192) DO (
  redis-cli -h 172.17.192.191 -p 6379 CLUSTER ADDSLOTS %%A
)

FOR /L %%A IN (8193,1,16387) DO (
  redis-cli -h 172.17.192.194 -p 6379 CLUSTER ADDSLOTS %%A
)