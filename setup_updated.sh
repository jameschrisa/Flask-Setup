# Check if brew is installed
if ! command -v brew &> /dev/null; then
    echo "brew is not installed. Please install brew first."
    exit 1
fi

# Create a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip3 install Flask==2.2.2
pip3 install flask-cors==3.0.10
pip3 install flask-sqlalchemy==2.5.1
pip3 install flask-wtf==1.0.1

# Create a requirements file
pip3 freeze > requirements.txt

# Create a basic Flask app template
mkdir app
cd app
touch app.py
mkdir templates
mkdir static

echo "All dependencies are installed. A basic Flask app template has been created."