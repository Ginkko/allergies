class Fixnum
  define_method(:allergies) do

    final_allergies = []
    allergy_types = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]
    if self.<(256)
      binary_score = self.to_s(2).split("").reverse()
      binary_score.each_index() do |index|
        if(binary_score[index] == "1")
          final_allergies.push(allergy_types[index])
        end
      end
      final_allergies
    else
      return ["Allergy score too high, you're probably dead."]
    end
  end
end
