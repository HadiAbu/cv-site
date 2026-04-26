from db import get_conn


def fetch_projects():
    conn = get_conn()
    cur = conn.cursor()

    #cur.execute("SELECT id, title, description, tech_stack, start_date, end_date FROM projects")
    cur.execute("SELECT id, title, description, tech_stack, start_date, end_date FROM projects ORDER BY start_date DESC")

    rows = cur.fetchall()

    cur.close()
    conn.close()

    return [
        {
            "id": r[0],
            "title": r[1],
            "description": r[2],
            "tech_stack": r[3]
        }
        for r in rows
    ]


def fetch_experience():
    conn = get_conn()
    cur = conn.cursor()

    #cur.execute("SELECT id, company, role, description, start_date, end_date FROM experience")
    cur.execute("SELECT id, company, role, description, start_date, end_date FROM experience ORDER BY start_date DESC")
    rows = cur.fetchall()

    cur.close()
    conn.close()

    return [
        {
            "id": r[0],
            "company": r[1],
            "role": r[2],
            "description": r[3]
        }
        for r in rows
    ]


def fetch_education():
    conn = get_conn()
    cur = conn.cursor()

    #cur.execute("SELECT id, institution, degree, field FROM education")
    cur.execute("SELECT id, institution, degree, field FROM education ORDER BY start_date DESC")
    rows = cur.fetchall()

    cur.close()
    conn.close()

    return [
        {
            "id": r[0],
            "institution": r[1],
            "degree": r[2],
            "field": r[3]
        }
        for r in rows
    ]