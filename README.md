# May 2021 Update:

I've decided to suspend work on a Rails-specific integration for Bridgetown until further notice. Bridgetown does currently have an [outstanding PR for switching to Puma/Rack/Roda](https://github.com/bridgetownrb/bridgetown/pull/281) for essential routes, and you absolutely can mount a Rails API right onto that however you wish. But [in light](https://solnic.codes/2021/05/01/whoops-thoughts-on-rails-forking-and-leadership/) of [recent events](https://www.theverge.com/2021/4/30/22412714/basecamp-employees-memo-policy-hansson-fried-controversy), I will not personally be working on a Rails integration solution.

----

# Example of a Bridgetown website with a "Rails Nano" backend API

More documentation and an official Bridgetown plugin coming soon!

Basically, run `bundle install` and `yarn install` and then `yarn start` and boom, you have a static website powered by Bridgetown
communicating with a Rails API all in one repo. Also cool: it's a single Rack app stack served by Puma, so you can deploy to a
Ruby-friendly host or use a Docker mesh like Fly.io and get the whole enchilada up and running in no time flat!

**LIVE DEMOS**:
* [https://rails-nano-api-test.fly.dev](https://rails-nano-api-test.fly.dev) ([Fly.io](https://fly.io))
* [https://rails-nano-demo.onrender.com](https://rails-nano-demo.onrender.com) ([Render](https://render.com))
* [https://rails-nano.vercel.app](https://rails-nano.vercel.app) ([Vercel](https://vercel.com) + [Heroku](https://www.heroku.com/)) (_Note: there may be a warmup delay at first due to the free Heroku dyno starting up_)
