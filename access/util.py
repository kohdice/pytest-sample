import re


def adjust_connection_url(connection_url: str) -> str:
    prog = re.compile("(.*)(://.*)")
    result = prog.match(connection_url)
    protocol = "mysql+pymysql"
    if result:
        return f"{protocol}{result.group(2)}"
    else:
        return f"{protocol}://{connection_url}"
