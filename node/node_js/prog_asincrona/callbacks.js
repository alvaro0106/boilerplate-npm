const post = [
    { title: 'Post One', body: 'this is post one'},
    { title: 'Post Two', body: 'this is post two'},
    { title: 'Post One', body: 'this is post tree'}
];

function getPosts(){
    setTimeout(()=> {
        let output = '';
        post.forEach((post, index)=> {
            output += `<li>${post.title}</li>`;

        });
        document.body.innerHTML = output;

    },1000);
}

getPosts();