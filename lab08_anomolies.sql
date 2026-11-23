-- one to one, each supplier beside its remittance profile where one exists
SELECT s.supplier_name, r.payment_method
FROM supplier s
LEFT JOIN supplier_remittance r ON r.supplier_id = s.supplier_id
ORDER BY s.supplier_id;

-- one to many, one supplier above its many ingredients
SELECT s.supplier_name, i.ingredient_name
FROM supplier s
JOIN ingredient i ON i.supplier_id = s.supplier_id
ORDER BY s.supplier_id, i.ingredient_id;

-- many to many, recipes and ingredients meet through the linking table
SELECT rc.recipe_name, i.ingredient_name, b.qty_used
FROM bakes b
JOIN recipe rc ON rc.recipe_id = b.recipe_id
JOIN ingredient i ON i.ingredient_id = b.ingredient_id
ORDER BY b.bake_id;
