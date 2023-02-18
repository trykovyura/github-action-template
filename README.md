# github-action-template
Template for Github Actions. Examples


## Zero install

### <img src="https://www.ruby-lang.org/images/header-ruby-logo.png"  width="2%"> Ruby ecosystem

- install `ruby 3.1.2` or relevant

- `bundle init` - install Gemfile and gems
- `bundle install` - installs all gems
  - [Fastlane](https://docs.fastlane.tools/getting-started/ios/setup/)
  - [Danger](https://danger.systems/guides/getting_started.html)
  - [Fastlane Plugins](https://docs.fastlane.tools/plugins/using-plugins/)
  - `bundle lock --add-platform x86_64-linux` - just for ubuntu runs
  - `bundle lock --add-platform x86_64-darwin-19` - just for macos runs

### Danger install

-  `bundle exec danger init`
- CREATING A BOT ACCOUNT FOR DANGER TO USE
- SETTING UP AN ACCESS TOKEN
- `DANGER_GITHUB_API_TOKEN` - [Setup instructions](https://danger.systems/guides/getting_started.html#creating-a-bot-account-for-danger-to-use)
Make fine-grained tokens https://github.blog/2022-10-18-introducing-fine-grained-personal-access-tokens-for-github/
For open source in security reasons no token setup

Permissions for token: 
- PR - read/write
- Content - Read access to issues and metadata

Additional file `check.rb` added for logic purpose.
To run test `check_scpec.rb` use following code `bundle exec rspec ./danger`
> require rspec at Gemfile

####  Danger xcov
- [Plugin](https://github.com/fastlane-community/danger-xcov) 
- `gem 'danger-xcov'`
- 
## Enviroments 

- `SSH_PRIVATE_KEY` - secret with your private key for cloning private repos. [Instructions for creating key](https://github.com/webfactory/ssh-agent#usage).