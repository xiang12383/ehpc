"""empty message

Revision ID: 4f8631ac7016
Revises: 00f8da978ac1
Create Date: 2016-10-16 10:17:04.489283

"""

# revision identifiers, used by Alembic.
revision = '4f8631ac7016'
down_revision = '00f8da978ac1'

from alembic import op
import sqlalchemy as sa


def upgrade():
    ### commands auto generated by Alembic - please adjust! ###
    op.add_column('users', sa.Column('postsNum', sa.Integer(), nullable=False))
    op.add_column('users', sa.Column('topicNum', sa.Integer(), nullable=False))
    ### end Alembic commands ###


def downgrade():
    ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('users', 'topicNum')
    op.drop_column('users', 'postsNum')
    ### end Alembic commands ###
