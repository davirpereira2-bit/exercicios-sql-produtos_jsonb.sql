CREATE TABLE produto (
    id serial PRIMARY KEY ,
    nome text ,
    detalhes jsonb
);
INSERT INTO produto  (nome,detalhes)
 VALUES ('camisa','{"marca" : "lacoste", "cor" : "branca"}'),
  ('calça','{"marca" : "lacoste", "cor" : "azul"}'),
  ('camisa','{"marca" : "zara", "cor" : "preto"}');

---consultas
UPDATE produto SET detalhes = detalhes || '{"cor" : "roxo" }'
WHERE id = 2 ;

DELETE FROM produto
WHERE id = 2 ;

SELECT * FROM produto ;

SELECT nome , detalhes
FROM produto
WHERE detalhes ->> 'marca' = 'lacoste';
