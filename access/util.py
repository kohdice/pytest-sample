import re


def worng_type_guard_clause(correct_type: type):
    def _decorator(func):
        def _wrapper(arg):
            if arg is None:
                return None
            if not isinstance(arg, correct_type):
                raise UnexpectedArgException(f"{arg!r} is not {correct_type}")
            return func(arg)

        return _wrapper

    return _decorator


def adjust_connection_url(connection_url: str) -> str:
    prog = re.compile("(.*)(://.*)")
    result = prog.match(connection_url)
    protocol = "mysql+pymysql"
    if result:
        return f"{protocol}{result.group(2)}"
    else:
        return f"{protocol}://{connection_url}"


class UnexpectedArgException(Exception):
    pass
