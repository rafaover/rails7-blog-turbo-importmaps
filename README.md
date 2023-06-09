# Rails 7 basic setup for a blog.

### Config

- Javascript ImportMaps (No node or webpack)
- Javascript packages using Pins (CDN)
- Email notifications using ActionMailer
- SimpleCSS (CDN)
- ActionText Rails' Rich Text Editor
- PostgreSQL
- Live updates using Websockets (Turbo + Redis)

When deploying, REDIS needs to be installed to use turbo and the live comment updates.
Ex: heroku addons:create heroku-redis:mini -a your-app-name

OBS: Any doubts, check first 2 commits for list of steps and commands.
