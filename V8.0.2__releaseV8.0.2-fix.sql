CREATE SEQUENCE data_id_seq;

ALTER TABLE public.data ALTER COLUMN id SET DEFAULT nextval('data_id_seq');

ALTER SEQUENCE data_id_seq OWNED BY public.data.id;

SELECT setval('data_id_seq', COALESCE(max(id), 1)) FROM public.data;

ALTER TABLE public.data ALTER COLUMN localdata_value TYPE TEXT;

CREATE SEQUENCE authentication_id_seq;

ALTER TABLE public.authentication ALTER COLUMN id SET DEFAULT nextval('authentication_id_seq');

ALTER SEQUENCE authentication_id_seq OWNED BY public.authentication.id;

SELECT setval('authentication_id_seq', COALESCE(max(id), 1)) FROM public.authentication;
