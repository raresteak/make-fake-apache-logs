# make-fake-apache-logs
Produce some fake apache log files for testing.

# Usage

1. Pull entire repo
```
https://github.com/raresteak/make-fake-apache-logs.git
```

2. cd into make-fake-apache-logs
```
cd make-fake-apache-logs
```

3. run script to create one log entry 
```
./generate_apache_access_logs.sh 
```

Outputs
```
10.197.221.247 - - [10/Feb/22:05:35:52 +0000] "GET /uploads/base.phtml HTTP/1.1" 200 13412 "-" "Mozilla/5.0 (Linux; U; Android-4.0.3; en-us; Galaxy Nexus Build/IML74K) AppleWebKit/535.7 (KHTML, like Gecko) CrMo/16.0.912.75 Mobile Safari/535.7"
```

4. Optionally create 10,000 logs.  Outputs to access.log
```
./make_10k_logs.sh
```
