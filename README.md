# Task18 readme file
## Model架構
### User
* username:string
* password_digest:password
* role:integer
### Task
* name:string
* priority:integer
* status:string
* begintime:time
* endtime:time
* user:references
* task:references
### Tag
* name:string