# 🚀 How to Run the DCrentabike App

## Prerequisites ✅
- Ruby 3.4.7 (installed)
- Rails 7.2.3 (installed)
- PostgreSQL 16 (installed and running)
- Node.js 18.19.1 (installed)
- All gems installed via Bundler

---

## Step 1: Navigate to Project Directory
```bash
cd /home/mick/Documents/Documents-MS/WebAppprojects/RonR/DCrentabike-master
```

---

## Step 2: Start the Rails Server

### Option A: Default (Localhost, Port 3000)
```bash
bundle exec rails server
```

### Option B: Specify Host and Port
```bash
bundle exec rails server -b 127.0.0.1 -p 3000
```

### Option C: Background Mode (with output)
```bash
bundle exec rails server -b 127.0.0.1 -p 3000 2>&1 &
```

---

## Step 3: Access the Application

Open your web browser and navigate to:
```
http://localhost:3000
```

---

## ✅ What You Should See

### Home Page (`http://localhost:3000/`)
- **Navbar** with navigation links and Sign In/Sign Up buttons
- **Booking Form** to select bike type and dates
- **Carousel** displaying all 7 bikes rotating automatically
- **Showcase Section** showing bike cards with details and pricing

### Available Pages
- **Home**: `http://localhost:3000/` 
- **About**: `http://localhost:3000/about`
- **Contact**: `http://localhost:3000/contact`
- **Sign In**: `http://localhost:3000/users/sign_in`
- **Sign Up**: `http://localhost:3000/users/sign_up`
- **Bookings**: `http://localhost:3000/bookings` (requires sign-in)
- **Bikes List**: `http://localhost:3000/bikes`

---

## 🔐 Test User Credentials

Use these credentials to sign in:
```
Email: test@example.com
Password: Password123!
```

---

## 📋 Common Rails Commands

### View Database
```bash
# Check Rails console
bundle exec rails console

# Inside console, you can run:
User.all
Bike.all
Booking.all
```

### Database Management
```bash
# View schema
bundle exec rails db:schema:dump

# Reset database
bundle exec rails db:reset

# Run migrations
bundle exec rails db:migrate

# Seed database
bundle exec rails db:seed
```

### Generate Test Data
```bash
# Create another test user via Rails console
bundle exec rails console
# Then type:
User.create!(email: 'user2@example.com', password: 'Password123!', password_confirmation: 'Password123!')
exit
```

### Stop the Server
```bash
# If running in foreground
Ctrl + C

# If running in background
pkill -f "rails server"
# or
lsof -i :3000 | grep -v COMMAND | awk '{print $2}' | xargs kill -9
```

---

## 🔧 Troubleshooting

### Port Already in Use
If port 3000 is already in use:
```bash
# Kill process on port 3000
lsof -i :3000 | grep -v COMMAND | awk '{print $2}' | xargs kill -9

# Use different port
bundle exec rails server -p 3001
```

### Database Connection Error
```bash
# Check if PostgreSQL is running
sudo service postgresql status

# Start PostgreSQL
sudo service postgresql start

# Verify database exists
sudo -u postgres psql -l | grep rent_a_bike
```

### Missing Gems
```bash
# Reinstall gems
bundle install

# Or clean and reinstall
bundle clean --force
bundle install
```

### Clear Cache
```bash
# Clear Rails cache
bundle exec rails db:schema:cache:clear

# Clear tmp files
rm -rf tmp/*
```

---

## 📊 Server Output Indicators

### ✅ Success (Server Running)
```
=> Booting Puma
=> Rails 7.2.3 application starting in development 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Listening on tcp://127.0.0.1:3000
Use Ctrl-C to stop
```

### When You Access http://localhost:3000
```
Started GET "/" for 127.0.0.1 at 2025-11-14 XX:XX:XX +0000
Processing by HomeController#index as HTML
  Rendering layout layouts/application.html.erb
  Rendering home/index.html.erb within layouts/application
  Bike Load (0.4ms)  SELECT "bikes".* FROM "bikes" WHERE "bikes"."avail" = $1
  Rendered home/index.html.erb within layouts/application (Duration: XX.Xms | GC: 0.0ms)
  Rendered layout layouts/application.html.erb (Duration: XX.Xms | GC: 0.0ms)
Completed 200 OK in XXms (Views: XX.Xms | ActiveRecord: X.Xms)
```

---

## 🎯 Quick Reference

| Task | Command |
|------|---------|
| Start app | `bundle exec rails server` |
| Start with specific port | `bundle exec rails server -p 3001` |
| Open Rails console | `bundle exec rails console` |
| Run migrations | `bundle exec rails db:migrate` |
| Seed database | `bundle exec rails db:seed` |
| View logs | `tail -f log/development.log` |
| Generate new migration | `bundle exec rails generate migration MigrationName` |
| Create model | `bundle exec rails generate model ModelName field:type` |
| Stop server (foreground) | `Ctrl + C` |
| Stop server (background) | `pkill -f "rails server"` |

---

## 📝 Application Features

✅ **Browse Bikes**
- View carousel of 7 bikes
- See detailed bike showcase cards
- Check pricing and locations

✅ **User Management**
- Sign up for new account
- Sign in with credentials
- Sign out from account
- View bookings (when logged in)

✅ **Book Bikes**
- Select bike type
- Choose quantity
- Set start and end dates
- View number of days/hours

---

## 🌐 Environment Information

- **Development Mode** (default)
- **Database**: rent_a_bike (PostgreSQL 16)
- **Default Port**: 3000
- **Default Host**: 127.0.0.1 (localhost)
- **Web Server**: Puma 3.12.6

---

## ✨ That's It!

You're all set! The DCrentabike application is fully configured and ready to use.

If you encounter any issues, check the troubleshooting section above or review the error messages in the Rails server output.

**Happy biking! 🚴‍♂️**
