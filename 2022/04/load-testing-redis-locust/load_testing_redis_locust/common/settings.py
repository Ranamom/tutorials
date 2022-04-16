from common.support import getenv_or_raise_exception

REDIS_CONNECTION_STRING = getenv_or_raise_exception("REDIS_CONNECTION_STRING")
DATA_LOADER_REDIS_BASE_KEY = getenv_or_raise_exception("DATA_LOADER_REDIS_BASE_KEY")
DATA_LOADER_REDIS_ENTRIES_BY_KEY = int(getenv_or_raise_exception("DATA_LOADER_REDIS_ENTRIES_BY_KEY"))