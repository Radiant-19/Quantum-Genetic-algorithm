function [child1, child2] = Geneticalgo(parent1, parent2,mutation_rate)
    % Perform crossover
    crossover_point = randi(numel(parent1)); % choose a random crossover point
    child1 = [parent1(1:crossover_point) parent2(crossover_point+1:end)];
    child2 = [parent2(1:crossover_point) parent1(crossover_point+1:end)];

    % Perform mutation
    % set mutation rate to 10%
    for i = 1:numel(child1)
        if rand < mutation_rate % randomly choose to mutate
            child1(i) = rand; % assign a random value to the gene
        end
        if rand < mutation_rate % randomly choose to mutate
            child2(i) = rand; % assign a random value to the gene
        end
    end

    % Evaluate fitness of the children and parents
    fitness = @(x) rastrigin(x); % define the Rastrigin's function as the fitness function
    val1 = fitness(child1);
    val2 = fitness(child2);
    parent_val1 = fitness(parent1);
    parent_val2 = fitness(parent2);

    % Combine chromosomes and function values
    chromosomes = [child1; child2; parent1; parent2];
    values = [val1, val2, parent_val1, parent_val2];

    % Sort chromosomes by function value
    [~, idx] = sort(values);
    chromosomes = chromosomes(idx, :);
    values = values(idx);
    % Return the two chromosomes with the least function values
    child1 = chromosomes(1,:);
    child2 = chromosomes(2,:);
    val1 = values(1);
    val2 = values(2);
    disp(child1)
    disp(val1)
    disp(child2)
    disp(val2)
end
