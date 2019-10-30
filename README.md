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
* begintime:datetime
* endtime:datetime
* user:references
* tag:references
### Tag
* name:string