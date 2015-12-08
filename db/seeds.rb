# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create some users
    User.create(name:'joe bloggs', email:'jb@here.com', password: "secret", password_confirmation: "secret")
    User.create(name:'joe Cloggs', email:'jc@here.com', password: "secret", password_confirmation: "secret")
    User.create(name:'jim smith', email:'js@here.com', password: "secret", password_confirmation: "secret")

    # Associate some microposts with users
    user = User.find(1)
    user.microposts.create(content: "Ruby is the best")
    user.microposts.create(content: "Changed my mind, it's Java")
    user = User.find(2)
    user.microposts.create(content: "What Ruby lacks is ....")
    user = User.find(3)
    user.microposts.create(content: "I think Java and Ruby ....")

    It.create(name:'Sony', address:'Japan', employment:'3 Software Developers', telephone:'123456')
    It.create(name:'Apple', address:'America', employment:'2 Software Developers', telephone:'654321')
    Automotive.create(name:'BMW', address:'Waterford', employment:'2 Repairmen and 3 salesmen', telephone:'111111')
    Catering.create(name:'KFC', address:'Waterford', employment:'5 Waiters and 2 cleaners', telephone:'222222')
    Catering.create(name:'China Town', address:'Waterford', employment:'2 Cooks', telephone:'555555')
    Finance.create(name:'WIT', address:'Waterford', employment:'2 Accountants', telephone:'333333')