# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# role.create name: 'event create'
# role.create name: 'event read'
# role.create name: 'event update'
# role.create name: 'event delete'
# role.create name: 'event staffing'

Permission.create name: 'feedback create'
Permission.create name: 'feedback read'
Permission.create name: 'feedback read published'
Permission.create name: 'feedback update'
Permission.create name: 'feedback delete'

Permission.create name: 'position create'
Permission.create name: 'position read'
Permission.create name: 'position update'
Permission.create name: 'position delete'

# Default Groups and permissions
Group.create name: 'public',
             permissions: [
                 Permission.find_by(name: 'feedback read published'),
                 Permission.find_by(name: 'position read')
             ]

Group.create name: 'guest',
             permissions: [
                 Permission.find_by(name: 'feedback create'),
                 Permission.find_by(name: 'feedback read published'),
             ]

Group.create name: 'visiting controller',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback create'),
                 Permission.find_by(name: 'feedback read published'),
             ]

Group.create name: 'controller',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback read published'),
             ]

Group.create name: 'mentor',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback read published'),
             ]

Group.create name: 'instructor',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback read published'),
             ]

Group.create name: 'webmaster',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback create'),
                 Permission.find_by(name: 'feedback read'),
                 Permission.find_by(name: 'feedback read published'),
                 Permission.find_by(name: 'feedback update'),
                 Permission.find_by(name: 'feedback delete')
             ]

Group.create name: 'facility engineer',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback read published')
             ]

Group.create name: 'events coordinator',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback create'),
                 Permission.find_by(name: 'feedback read'),
                 Permission.find_by(name: 'feedback read published'),
                 Permission.find_by(name: 'feedback update'),
                 Permission.find_by(name: 'feedback delete')
             ]

Group.create name: 'training administrator',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback read')
             ]

Group.create name: 'deputy air traffic manager',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback create'),
                 Permission.find_by(name: 'feedback read'),
                 Permission.find_by(name: 'feedback read published'),
                 Permission.find_by(name: 'feedback update'),
                 Permission.find_by(name: 'feedback delete')
             ]

Group.create name: 'air traffic manager',
             artcc_controllers: true,
             permissions: [
                 Permission.find_by(name: 'feedback create'),
                 Permission.find_by(name: 'feedback read'),
                 Permission.find_by(name: 'feedback read published'),
                 Permission.find_by(name: 'feedback update'),
                 Permission.find_by(name: 'feedback delete')
             ]
