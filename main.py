from typing import List, Optional


def main(args: Optional[List[str]] = None) -> int:

    from pip._internal.utils.entrypoints import _wrapper

    return _wrapper(args)
