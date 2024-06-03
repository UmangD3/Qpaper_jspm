from flask import Flask, render_template, request, flash, redirect, url_for
from werkzeug.utils import secure_filename
from PIL import Image
import pytesseract
import os

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'uploads'
app.secret_key = 'your_secret_key'

# Specify the Tesseract executable path
pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'  # Replace with your Tesseract path

def extract_text(image_path):
    # Use Tesseract OCR to extract text
    text = pytesseract.image_to_string(Image.open(image_path))
    return text

def create_upload_folder():
    # Create the 'uploads' folder if it doesn't exist
    if not os.path.exists(app.config['UPLOAD_FOLDER']):
        os.makedirs(app.config['UPLOAD_FOLDER'])

@app.route('/')
def index():
    return render_template('index2.html')

@app.route('/', methods=['POST'])
def upload_image():
    create_upload_folder()  # Ensure the 'uploads' folder exists

    if 'file' not in request.files:
        flash('No file part')
        return redirect(request.url)

    file = request.files['file']

    if file.filename == '':
        flash('No selected file')
        return redirect(request.url)

    if file:
        filename = secure_filename(file.filename)
        filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
        file.save(filepath)

        # Extract text from the uploaded image
        text = extract_text(filepath)

        return render_template('index2.html', text=text, image=filename)

if __name__ == '__main__':
    app.run(debug=True)

