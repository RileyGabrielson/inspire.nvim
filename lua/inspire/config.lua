local config = {}

local inspirational = {
	{ text = "Life before Death. Strenght before Weakness. Journey Before Destination.", author = "Brandon Sanderson" },
	{
		text = "Does the destination matter? Or is it the path we take? I declare that no accomplishment has substance nearly as great as the road used to achieve it. We are not creatures of destinations. It is the journey that shapes us. Our callused feet, our backs strong from carrying the weight of our travels, our eyes open with the fresh delight of experiences lived.",
		author = "Brandon Sanderson",
	},
}

function config.with_defaults(options)
	return {
		quotes = options.quotes or inspirational,
	}
end

return config
