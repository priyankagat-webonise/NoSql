1>Create and drop collection
db.createCollection("profiles", {name:"abc",photo:"a.jpg"});
db.collection.drop();

2>Per page post count.
db.posts.find({page_id:1}).count();

3>upgdate single comment.
db.posts.update({post_id:1,"comment.comment_id":3},{$set:{"comment.$.title":"good"}});

4>Find in sub document.
db.posts.find({post_id:2},{comment:{$elemMatch:{comment_id:2}}}).pretty();

