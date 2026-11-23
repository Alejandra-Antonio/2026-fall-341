-- inner join, suppliers that supply at least one ingredient
SELECT s.supplier_name, i.ingredient_name
FROM supplier s
JOIN ingredient i ON i.supplier_id = s.supplier_id;

-- left outer join, every supplier, matched or not
SELECT s.supplier_name, i.ingredient_name
FROM supplier s
LEFT JOIN ingredient i ON i.supplier_id = s.supplier_id;

-- the unmatched alone, IS NULL keeps rows whose right side came back empty
SELECT s.supplier_name
FROM supplier s
LEFT JOIN ingredient i ON i.supplier_id = s.supplier_id
WHERE i.ingredient_id IS NULL;