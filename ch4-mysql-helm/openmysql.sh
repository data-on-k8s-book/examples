kubectl run -it --v=0 --rm --restart=Never --overrides='
{
  "spec": {
    "containers": [
      {
        "name": "mysql-client",
        "image": "mysql:8.0",
        "tty": true,
        "stdin": true,
        "command": ["mysql"],
        "args": ["-h", "wordpress-mysql", "-u", "root", "-p$(DB_PASSWORD)"],
        "env": [
          {
            "name": "DB_PASSWORD",
            "valueFrom": {
              "secretKeyRef": {
                "name": "db-secret",
                "key": "DB_PASSWORD"
              }
            }
          }
        ]
      }
    ]
  }
}
'  --image=mysql:8.0 mysql
