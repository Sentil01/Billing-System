### Tech Stack
- Ruby - 3.1.2
- Rails - 6.1.5

### Initial Setup
1. Navigate to project root directory
2. Install bundler
```
gem install bundler
```
3. Install the required gems
```
bundle install
```
4. Create database, Load schema and initialize with data on `seeds.rb`
```
rails db:setup
```

### Connecting to remote repository
1. Create a new private repository in Bitbucket and fill the required fields:
   1. Project name: Choose Create new project and provide a name for the project (For example `ror-assessment-mini-projects`)
   2. Repository name: Provide a name for repository (For example `e-commerce-week-6`)
   3. Access level: Select **Private repository** 
   4. Include a README? - Choose `No` from the option
   5. Include .gitignore? - Choose `No` from the option
2. Navigate to project root directory in your machine
3. Connect your existing repository with Bitbucket
```
git remote add origin <replace-the-bitbucket-repository-endpoint-here>
```
