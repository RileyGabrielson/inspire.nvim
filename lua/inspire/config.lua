local config = {}

local inspirational = {
	{ 
    text = "Life before Death. Strenght before Weakness. Journey Before Destination.", 
    author = "Brandon Sanderson",
  },
	{
		text = "Does the destination matter? Or is it the path we take? I declare that no accomplishment has substance nearly as great as the road used to achieve it. We are not creatures of destinations. It is the journey that shapes us. Our callused feet, our backs strong from carrying the weight of our travels, our eyes open with the fresh delight of experiences lived.",
		author = "Brandon Sanderson",
	},
  {
    text = "The simple things are also the most extraordinary things, and only the wise can see them.",
    author = "Paulo Coelho",
  }
  {
    text = "There is a wisdom that is woe; but there is a woe that is madness. And there is a Catskill eagle in some souls that can alike dive down into the blackest gorges, and soar out of them again and become invisible in the sunny spaces. And even if he forever flies within the gorge, that gorge is in the mountains; so that even in his lowest swoop the mountain eagle is still higher than other birds upon the plain, even though they soar.",
    author = "Herman Melville",
  },
  {
    text = "I'll never know, and neither will you, of the life you don't choose. We'll only know that whatever that sister life was, it was important and beautiful and not ours. It was the ghost ship that didn't carry us. There's nothing to do but salute it from the shore.",
    author = "Cheryl Strayed",
  },
  {
    text = "When I visit the past now, it is for wisdom and experience, not for regret or shame. I don't attempt to erase it, only to accept it. Whatever my physical circumstances are today, I will deal with them and remain present. If I fall, I will rise up. As for the future, I haven't been there yet. I only know that I have one. Until I don't. The last thing we run out of is future.",
    author = "Michael J. Fox",
  },
  {
    text = "In spite of everything, I still believe people are really good at heart.",
    author = "Anne Frank",
  },
  {
    text = "I am not afraid of storms, for I am learning how to sail my ship.",
    author = "Louisa May Alcott",
  },
  {
    text = "I wanted you to see what real courage is, instead of getting the idea that courage is a man with a gun in his hand. It’s when you know you’re licked before you begin but you begin anyway and you see it through no matter what. You rarely win, but sometimes you do.",
    author = "Harper Lee",
  },
  {
    text = "The place where you made your stand never mattered. Only that you were there… and still on your feet",
    author = "Stephen King",
  },
  {
    text = "So many things are possible just as long as you don’t know they’re impossible",
    author = "Norton Juster",
  },
  {
    text = "The world is indeed full of peril, and in it there are many dark places; but still there is much that is fair, and though in all lands love is now mingled with grief, it grows perhaps the greater.",
    author = "J.R.R. Tolkien"
  },
  {
    text = "So do all who live to see such times. But that is not for them to decide. All we have to do is decide what to do with the time that is given to us.",
    author = "J.R.R. Tolkien"
  },
  {
    text = "A man is not called wise because he talks and talks again; but if he is peaceful, loving and fearless then he is in truth called wise.",
    author = "Gautama Buddha",
  },
  
}

function config.with_defaults(options)
	return {
		quotes = options.quotes or inspirational,
	}
end

return config
