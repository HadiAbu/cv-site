from http.server import BaseHTTPRequestHandler, HTTPServer
import json
import os
from queries import fetch_projects, fetch_experience, fetch_education


class Handler(BaseHTTPRequestHandler):

    def do_GET(self):
        if self.path == "/api/projects":
            return self.respond(fetch_projects())

        elif self.path == "/api/experience":
            return self.respond(fetch_experience())

        elif self.path == "/api/education":
            return self.respond(fetch_education())

        else:
            return self.serve_static()

    # ---------- STATIC FILE SERVER ----------
    def serve_static(self):
        # Map URL → file path
        if self.path == "/":
            filepath = "frontend/index.html"
        else:
            filepath = "frontend" + self.path  # e.g. /app.js → frontend/app.js

        # Normalize path (avoid weird ../ issues)
        filepath = os.path.normpath(filepath)

        try:
            with open(filepath, "rb") as f:
                self.send_response(200)
                self.send_header("Content-Type", self.get_content_type(filepath))
                self.end_headers()
                self.wfile.write(f.read())
        except FileNotFoundError:
            self.send_error(404, f"File not found: {self.path}")

    # ---------- CONTENT TYPE ----------
    def get_content_type(self, filepath):
        if filepath.endswith(".html"):
            return "text/html"
        elif filepath.endswith(".js"):
            return "application/javascript"
        elif filepath.endswith(".css"):
            return "text/css"
        elif filepath.endswith(".json"):
            return "application/json"
        else:
            return "application/octet-stream"

    # ---------- API RESPONSE ----------
    def respond(self, data):
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.end_headers()
        self.wfile.write(json.dumps(data).encode())


if __name__ == "__main__":
    server = HTTPServer(("0.0.0.0", 8000), Handler)
    print("Running on http://localhost:8000")
    server.serve_forever()