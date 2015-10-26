Sequelize = require 'sequelize'


sequelize = new Sequelize process.env.DATABASE_URL, timestamps: false


@User = sequelize.define 'user',
  email:
    type: Sequelize.STRING
    field: 'email'


if require.main == module
  console.log 'Creating tables'
  sequelize.sync()
