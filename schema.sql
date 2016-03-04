db.user.insert({
	_id: 1,
	name : "AaaBaaCaa",
	username : "ABC",
	password : "1234",
	address : "pune",
	phon : 9874586521,
	timestamp : new Date(),
	role : "admin"
})

db.user.insert({
	_id: 2,
	name : "Tom",
	username : "tom123",
	password : "123445",
	address : "pune",
	phon : 9874586545,
	timestamp : new Date(),
	role : "admin"
})

db.user.createIndex({_id:1,username:1,phon:1},{unique :true})

db.pages.insert({page_id:1,title:"first page",content:"hello",slug:"www.fsdjks.com"})

db.pages.insert({page_id:2,title:"second page",content:"hello second",slug:"www.klhdjks.com"})

db.posts.insert({post_id:1,
			user_id:1,
			description:"first post",
			post_time:new Date(),
			page_id:1,
			comment:[{comment_id:1,owner:1,title:"hello",comment_time:new Date()},{comment_id:2,owner:1,title:"hello",comment_time:new Date()}]})

db.posts.insert({post_id:2,
			user_id:2,
			description:"This is tom",
			post_time:new Date(),
			page_id:1,
			comment:[{comment_id:1,owner:1,title:"Hi everyone",comment_time:new Date()},{comment_id:2,owner:2,title:"good",comment_time:new Date()}]})


db.pages.createIndex({_id:1,slug:1},{unique :true})

db.posts.createIndex({post_id:1,"posts.comment.comment_id":1},{unique :true})
