# Example of a Bridgetown website with a "Rails Nano" backend API

More documentation and a Bridgetown automation coming soon!

Basically, run `bundle install` and `yarn install` and then `yarn start` and boom, you have a static website powered by Bridgetown
communicating with a Rails API all in one repo. Also cool: it's a single Rack app stack served by Puma, so you can deploy to a
Ruby-friendly host or use a Docker mesh like Fly.io and get the whole enchilada up and running in no time flat!

**LIVE DEMOS**:
* [https://rails-nano-api-test.fly.dev](https://rails-nano-api-test.fly.dev) ([Fly.io](https://fly.io))
* [https://rails-nano-demo.onrender.com](https://rails-nano-demo.onrender.com) ([Render](https://render.com))
* [https://rails-nano.vercel.app](https://rails-nano.vercel.app) ([Vercel](https://vercel.com) + [Heroku](https://www.heroku.com/)) (_Note: there may be a warmup delay at first due to the free Heroku dyno starting up_)
