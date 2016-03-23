db.users.insert({
	_id: 1,
	name : "AaaBaaCaa",
	username : "ABC",
	password : "1234",
	address : "pune",
	phone_number : 9874586521,
	last_login : new Date(),
	role : "admin"
})

db.users.insert({
	_id: 2,
	name : "Tom",
	username : "tom123",
	password : "123445",
	address : "pune",
	phone_number : 9874586545,
	last_login : new Date(),
	role : "admin"
})

db.users.insert({
	_id: 3,
	name : "pqr",
	username : "pqr123",
	password : "123445",
	address : "pune",
	phone_number : 9874586545,
	last_login : new Date(),
	role : "super admin"
})



db.pages.insert({ 
	_id:'1',
	user_id:'1',
	title:'hi',
	slug:'abcd12',
	description:'page1',
	posts:[
		{
			_id:'1',
			user_id:'1', 
			description:'first post',

			comments:[
				 {
				_id:'1',
				user_id:'2',
				title:'nice',
				comment_time:new Date()
				 },
				 {
				_id:'2',
				user_id:'2',
				title:'good',
				comment_time:new Date()
				 }
			 ]
		},
		{
		_id:'2',
			user_id:'2', 
			description:'second post',

		comments:[
		{
			_id:'1',
			user_id:'1',
			title:'nice',
			comment_time:new Date()
			 },
			 {
			_id:'2',
			user_id:'2',
			title:'good',
			comment_time:new Date()
			 }]
		}
	 ]
})


db.pages.insert({ 
	_id:'2',
	user_id:'3',
	title:'hi',
	slug:'pqr12345',
	description:'my page',
	posts:[]
})


