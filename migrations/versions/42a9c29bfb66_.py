"""empty message

Revision ID: 42a9c29bfb66
Revises: 0ddf19535a25
Create Date: 2016-11-08 10:55:46.007971

"""

# revision identifiers, used by Alembic.
revision = '42a9c29bfb66'
down_revision = '0ddf19535a25'

from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

def upgrade():
    ### commands auto generated by Alembic - please adjust! ###
    op.alter_column('post', 'createdTime',
               existing_type=mysql.DATETIME(),
               nullable=True)
    op.alter_column('topics', 'createdTime',
               existing_type=mysql.DATETIME(),
               nullable=True)
    op.alter_column('topics', 'updatedTime',
               existing_type=mysql.DATETIME(),
               nullable=True)
    ### end Alembic commands ###


def downgrade():
    ### commands auto generated by Alembic - please adjust! ###
    op.alter_column('topics', 'updatedTime',
               existing_type=mysql.DATETIME(),
               nullable=False)
    op.alter_column('topics', 'createdTime',
               existing_type=mysql.DATETIME(),
               nullable=False)
    op.alter_column('post', 'createdTime',
               existing_type=mysql.DATETIME(),
               nullable=False)
    ### end Alembic commands ###