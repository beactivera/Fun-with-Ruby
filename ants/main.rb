def seedTrees(forest, count)
    for k in count do
        x = rand(forest.x)
        y = rand(forest.y)

        if forest.trees[y][x] == 1 
            k -=1
        else
            forest.trees[y][x] = 1
        end
    end
    
    return forest
end

def setFire(forest)
    for k in 0..1 do
        x = rand(forest.x)
        y = rand(forest.y)

        if forest.trees[y][x] == 1 
            forest.trees[y][x] = 5
        else
            k -= 1
        end
    end
    
    return forest
end

def fire(forest)
    burnt =  1
    while burnt > 0 do
        burnt = 0
        for i in forest.y do
            for j in forest.x do
                if forest.trees[i][j] == 2 || forest.trees[i][j] == 5
                    for x in -1..1 do
                        for y in -1..1 do
                            if x == 0 && y == 0
                                continue
                            end

                            sx = x + i
                            sy = y + j

                            if sx < forest.x && sy < forest.y && sx >= 0 && sy >= 0
                                if forest.trees[sx][sy] == 1
                                    forest.trees[sx][sy] = 2
                                    burnt += 1
                                end
                            end

                        end
                    end
                end
            end
        end
    end
end


def counter(forest, s)
    ret = 0
    for i in forest.y do
        for j in forest.x do
            if forest.trees[i][j] == s
                ret += 1
            end
        end
    end
    
    return ret
end

# main program
Forest = Struct.new(:x, :y, :trees)

forest50 = Forest.new(50, 50, Array.new(50){Array.new(50)})

max_count_trees = forest50.x * forest50.y


for i in 1..100 do
    count = (i * max_count_trees)/100

    forest_with_trees = seedTrees(forest50, count)
    forest_with_fire = setFire(forest_with_trees)
    firing_forest = fire(forest_with_fire)

    seeded_tress = count
    count_fired = counter(firing_forest, 2) + 1
    density_of_fired = (count_fired.to_f / seeded_tress.to_f) * 100
    puts "i: #{i}  density of fired: #{density_of_fired}"
end