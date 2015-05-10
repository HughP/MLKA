function fitness = evaluate_fitness_penalty(kb, remove_ind,weight)

freq = build_freq();

const_weights = calc_const_weights();

const_weights(remove_ind,:) = weight;
const_weights(:,remove_ind) = weight;


current_freq = freq(kb,kb);

fitness = sum(sum(current_freq.* const_weights)); 
