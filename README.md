# jekyll-post-create

Bash command script to create Jekyll post file with current date and time. 

Instalation
-----------

Just create folder you want to store this command (for example, your /opt/justCommands folder), clone this script to it, make this command runnable. 

```bash
sudo mkdir /opt/myCommands && git clone https://github.com/Lanskask/jekyll-post-create /opt/myCommands && chmod +x /opt/myCommands/jekyll-post-create
```
Then add these to your ~/.bashrc file to run it from anywhere: 
```bash
export MY_COMMANDS=/opt/myCommands
export PATH=$MY_COMMANDS:$PATH
```
