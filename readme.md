## Enable console
```
rabbitmq-plugins enable rabbitmq_management
rabbitmqctl add_user test testpassword
rabbitmqctl set_user_tags test administrator
rabbitmqctl set_permissions -p / test ".*" ".*" ".*"
```

## ToDo
Link Ansible

