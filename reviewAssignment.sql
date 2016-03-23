
1>create collection and drop collection
db.createCollection("profiles);
db.profiles.insert({name:"abc",photo:"a.jpg"});
db.profiles.drop()

2>number of posts in pages
db.pages.aggregate({$match:{"_id":"1"}},{$project:{posts:{$size:"$posts"}}})

3>change title of comment
db.pages.update({_id:"1","posts._id":"1","posts.comments._id":"1"},{$set:{"posts.0.comments.0.title":"changed"}})

4>find in sub document
db.pages.find({_id:"1"},{posts:{$elemMatch:{"comments._id":"2"}}}).pretty()

5>pages that are not having posts
db.pages.find({ posts: { $exists: true, $lte:[0]}}).pretty()

