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

### Build
- `OUTPUT_DIRECTORY` - ipa output directory. Usually uses Gymfile output directory param. 
- `TEST_OUTPUT_DIRECTORY` - test artefact output directory. Usually uses Scanfile output directory param.
- `FASTLANE_XCODEBUILD_SETTINGS_RETRIES` - number of build retries. Usually 10 is enough.

### Certificates
- `MATCH_GIT_BASIC_AUTHORIZATION` -  a basic authorization header to access the git repo (e.g.: access via HTTPS, GitHub Actions, etc), usually a string in Base64
- `MATCH_PASSWORD` - Your encryption password as secret environment variable
- `KEYCHAIN_NAME` - Keychain name
- `KEYCHAIN_PASSWORD` - Keychain password
- `APP_STORE_CONNECT_API_KEY_ISSUER_ID` - The issuer ID
- `APP_STORE_CONNECT_API_KEY_KEY_ID` - The key ID
- `APP_STORE_CONNECT_API_KEY_KEY` - The content of the key p8 file

### Deploy

#### Firebase
- `FIREBASE_APP`
- `FIREBASE_TOKEN` - Auth token generated using the Firebase CLI's login:ci command
- `FIREBASEAPPDISTRO_APP` - Your app's Firebase App ID. You can find the App ID in the Firebase console, on the General Settings page
- `FIREBASEAPPDISTRO_GROUPS` - The group aliases used for distribution, separated by commas
- `FIREBASEAPPDISTRO_IPA_PATH` - Path to your IPA file. Optional if you use the _gym_ or _xcodebuild_ action
- `GOOGLE_SERVICES_INFO_PLIST_PATH` - Path to your GoogleService-Info.plist file, relative to the archived product path

#### Testflight
- `APP_STORE_CONNECT_API_KEY_ISSUER_ID` - The issuer ID
- `APP_STORE_CONNECT_API_KEY_KEY_ID` - The key ID
- `APP_STORE_CONNECT_API_KEY_KEY` - The content of the key p8 file
- `IPA_OUTPUT_PATH` - Path for ipa

#### Dsym
- `FL_UPLOAD_SYMBOLS_TO_CRASHLYTICS_DSYM_PATH` - Path to the DSYM file or zip to upload
- `FL_UPLOAD_SYMBOLS_TO_CRASHLYTICS_BINARY_PATH` - The path to the upload-symbols file of the Fabric app


# Awesome Actions
## Starters workflow
- https://github.com/actions/starter-workflows

## Utils
- https://github.com/webfactory/ssh-agent
- Google https://github.com/google-github-actions
- AWS https://github.com/aws-actions
- Github https://github.com/actions/

## Notifications
- Jira https://github.com/atlassian/gajira
- Slack https://github.com/slackapi/slack-github-action

## Code Review
- https://github.com/necojackarc/auto-request-review
- https://github.com/kentaro-m/auto-assign-action

## PR
- Stale https://github.com/actions/stale
- Labeler https://github.com/actions/labeler
- TODO Issue https://github.com/atlassian/gajira-todo

## Ecosystem
- Crowdin https://github.com/crowdin/github-action
