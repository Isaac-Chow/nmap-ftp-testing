from flask import Flask, send_file, jsonify

app = Flask(__name__)

@app.route('/download/<filename>', methods=['GET'])
def download_file(filename):
    try:
        return send_file(f'files/{filename}', as_attachment=True)
    except Exception as e:
        return jsonify({"error": str(e)}), 404

