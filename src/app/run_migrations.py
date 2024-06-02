from alembic.config import Config
from alembic import command

# Nastavení Alembic konfigurace
alembic_cfg = Config("src/alembic.ini")

# Provést migrace
command.upgrade(alembic_cfg, "head")
