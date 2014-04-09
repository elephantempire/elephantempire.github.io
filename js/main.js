jQuery(function($){
  $("#tweeter").tweet({
    avatar_size: 64,
    count: 1,
    username: "nemodally",
    loading_text: "",
    template: "{avatar}{time}{join} {text}"
  });
});

