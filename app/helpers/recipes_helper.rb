module RecipesHelper
  def join_tags(recipe)
    recipe.tags.map { |t| t.name }.join(", ")
  end
end
