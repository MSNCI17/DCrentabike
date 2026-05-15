
# DC Rent-a-bike App 🚴‍♂️

A modern Ruby on Rails bike rental booking web application for Dublin City.

## 🌟 Features

### ✅ Core Functionality
- **Browse Bikes**: View carousel of 7 different bike types with pricing and availability
- **User Authentication**: Sign up, sign in, and sign out with Devise
- **Book Bikes**: Select bike type, quantity, and rental dates
- **View Bookings**: See all your bookings in a clean, dark-themed table
- **Cancel Bookings**: Cancel bookings with inventory restoration
- **Booking Details**: View detailed booking summaries with cost breakdowns

### ✅ Pages & Navigation
- **Home**: Bike carousel, booking form, and bike showcase
- **About**: Company information and mission statement
- **Contact**: Contact details and business hours
- **Bookings**: User dashboard with booking management
- **Bikes**: Complete bike inventory listing

### ✅ User Experience
- Responsive Bootstrap design
- Dark theme for better readability
- Intuitive navigation with About/Contact links
- Confirmation dialogs for destructive actions
- Real-time inventory management

## 🛠️ Tech Stack

- **Ruby**: 3.4.7
- **Rails**: 7.2.3
- **Database**: PostgreSQL 16
- **Web Server**: Puma
- **Authentication**: Devise
- **Frontend**: Bootstrap 4.1.3, jQuery
- **Deployment**: Ready for Heroku/AWS

## 📦 Gems

See `Gemfile` for complete list. Key dependencies:
- `rails` - Web framework
- `pg` - PostgreSQL adapter
- `devise` - Authentication
- `bootstrap` - Frontend framework
- `jquery-rails` - JavaScript library

## 🚀 Getting Started

### Prerequisites
- Ruby 3.4.7
- Rails 7.2.3
- PostgreSQL 16
- Node.js 18.19.1
- Bundler

### Installation

1. **Clone and navigate**:
   ```bash
   cd /path/to/DCrentabike-master
   ```

2. **Install dependencies**:
   ```bash
   bundle install
   ```

3. **Database setup**:
   ```bash
   bundle exec rails db:migrate
   bundle exec rails db:seed
   ```

4. **Start the server**:
   ```bash
   bundle exec rails server
   ```

5. **Access the app**:
   Open `http://localhost:3000`

## 🔐 Test Credentials

Use these credentials to test the application:
```
Email: test@example.com
Password: Password123!
```

## 📋 Available Routes

| Route | Description | Access |
|-------|-------------|---------|
| `/` | Home page with bike carousel | Public |
| `/about` | About page | Public |
| `/contact` | Contact information | Public |
| `/bikes` | Bike inventory | Public |
| `/users/sign_in` | Sign in | Public |
| `/users/sign_up` | Sign up | Public |
| `/bookings` | User bookings dashboard | Authenticated |
| `/bookings/:id` | Booking details & cancel | Authenticated |

## 🎨 Recent Improvements

- ✅ Added comprehensive About and Contact pages
- ✅ Improved text visibility with white text on dark backgrounds
- ✅ Added navigation links to About and Contact pages
- ✅ Enhanced bookings table with dark theme and green headers
- ✅ Improved booking summary page readability
- ✅ Added booking cancellation functionality with inventory restoration

## 🐛 Troubleshooting

### Port Issues
```bash
# Kill process on port 3000
lsof -i :3000 | grep -v COMMAND | awk '{print $2}' | xargs kill -9

# Use different port
bundle exec rails server -p 3001
```

### Database Issues
```bash
# Check PostgreSQL status
sudo service postgresql status

# Reset database
bundle exec rails db:reset
```

### Cache Issues
```bash
# Clear Rails cache
bundle exec rails db:schema:cache:clear
```

## 📊 Database Schema

### Key Models
- **User**: Authentication and user data
- **Bike**: Bike inventory with pricing
- **Booking**: Rental reservations

### Sample Data
The seed file creates 7 bike types with varying pricing and availability.

## 🚀 Deployment

Ready for deployment to Heroku or AWS. Update `config/database.yml` and `config/secrets.yml` for production.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is open source. Feel free to use and modify.

---

**Happy biking! 🚴‍♂️**
