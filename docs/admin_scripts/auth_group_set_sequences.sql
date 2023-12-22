DO $$ 
DECLARE
    schema_name VARCHAR(10) := 't2';
BEGIN 
    
    -- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: t1; Owner: admin
    PERFORM pg_catalog.setval(schema_name || '.django_content_type_id_seq', 49, true);

    -- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: t1; Owner: admin
    PERFORM pg_catalog.setval(schema_name || '.auth_group_id_seq', 13, true);

    -- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: t1; Owner: admin
    PERFORM pg_catalog.setval(schema_name || '.auth_permission_id_seq', 200, true);

    -- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: t1; Owner: admin
    PERFORM pg_catalog.setval(schema_name || '.auth_group_permissions_id_seq', 498, true);

END $$