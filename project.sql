--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-06-23 11:36:23

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 98911)
-- Name: ForestSiteBD; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "ForestSiteBD";


ALTER SCHEMA "ForestSiteBD" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 98933)
-- Name: Comments; Type: TABLE; Schema: ForestSiteBD; Owner: postgres
--

CREATE TABLE "ForestSiteBD"."Comments" (
    "Comment_ID" bigint NOT NULL,
    "Owner_ID" bigint NOT NULL,
    "Comment_text" character varying NOT NULL,
    "Picture_1_ID" bigint,
    "Picture_2_ID" bigint,
    "Picture_3_ID" bigint,
    "Picture_4_ID" bigint,
    "Picture_5_ID" bigint
);


ALTER TABLE "ForestSiteBD"."Comments" OWNER TO postgres;

--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE "Comments"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON TABLE "ForestSiteBD"."Comments" IS 'Комментарии к постам пользователей';


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN "Comments"."Comment_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Comments"."Comment_ID" IS 'ID комментария в БД';


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN "Comments"."Owner_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Comments"."Owner_ID" IS 'ID пользователя, создашего комментарий';


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN "Comments"."Comment_text"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Comments"."Comment_text" IS 'Текст комментария';


--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN "Comments"."Picture_1_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Comments"."Picture_1_ID" IS 'ID 1-ой картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN "Comments"."Picture_2_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Comments"."Picture_2_ID" IS 'ID 2-ой картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN "Comments"."Picture_3_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Comments"."Picture_3_ID" IS 'ID 1-ей картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN "Comments"."Picture_4_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Comments"."Picture_4_ID" IS 'ID 4-ой картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN "Comments"."Picture_5_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Comments"."Picture_5_ID" IS 'ID 5-ой картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 220 (class 1259 OID 98965)
-- Name: Likes_Comments; Type: TABLE; Schema: ForestSiteBD; Owner: postgres
--

CREATE TABLE "ForestSiteBD"."Likes_Comments" (
    "Like_ID" bigint NOT NULL,
    "Owner_ID" bigint NOT NULL,
    "Comment_ID" bigint NOT NULL
);


ALTER TABLE "ForestSiteBD"."Likes_Comments" OWNER TO postgres;

--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN "Likes_Comments"."Like_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Likes_Comments"."Like_ID" IS 'ID лайка в БД';


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN "Likes_Comments"."Owner_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Likes_Comments"."Owner_ID" IS 'ID пользователя, поставившего лайк на комментарий';


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN "Likes_Comments"."Comment_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Likes_Comments"."Comment_ID" IS 'ID комментария, на который поставили лайк';


--
-- TOC entry 219 (class 1259 OID 98940)
-- Name: Likes_Posts; Type: TABLE; Schema: ForestSiteBD; Owner: postgres
--

CREATE TABLE "ForestSiteBD"."Likes_Posts" (
    "Like_ID" bigint NOT NULL,
    "Owner_ID" bigint NOT NULL,
    "Post_ID" bigint NOT NULL
);


ALTER TABLE "ForestSiteBD"."Likes_Posts" OWNER TO postgres;

--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN "Likes_Posts"."Like_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Likes_Posts"."Like_ID" IS 'ID лайка в БД';


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN "Likes_Posts"."Owner_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Likes_Posts"."Owner_ID" IS 'ID пользователя, поставившего лайк на пост';


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN "Likes_Posts"."Post_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Likes_Posts"."Post_ID" IS 'ID поста, на который поставили лайк';


--
-- TOC entry 217 (class 1259 OID 98926)
-- Name: Pictures; Type: TABLE; Schema: ForestSiteBD; Owner: postgres
--

CREATE TABLE "ForestSiteBD"."Pictures" (
    "Pic_ID" bigint NOT NULL,
    "Owner_ID" bigint NOT NULL,
    "Pic_link" character varying NOT NULL
);


ALTER TABLE "ForestSiteBD"."Pictures" OWNER TO postgres;

--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN "Pictures"."Pic_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Pictures"."Pic_ID" IS 'ID картинки в БД';


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN "Pictures"."Owner_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Pictures"."Owner_ID" IS 'ID пользователя, загрузившего картинку на сайт';


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN "Pictures"."Pic_link"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Pictures"."Pic_link" IS 'Ссылка на картинку';


--
-- TOC entry 216 (class 1259 OID 98919)
-- Name: Posts; Type: TABLE; Schema: ForestSiteBD; Owner: postgres
--

CREATE TABLE "ForestSiteBD"."Posts" (
    "Post_ID" bigint NOT NULL,
    "Owner_ID" bigint NOT NULL,
    "Post_text" character varying NOT NULL,
    "Picture_1_ID" bigint,
    "Picture_2_ID" bigint,
    "Picture_3_ID" bigint,
    "Picture_4_ID" bigint,
    "Picture_5_ID" bigint
);


ALTER TABLE "ForestSiteBD"."Posts" OWNER TO postgres;

--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN "Posts"."Post_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Posts"."Post_ID" IS 'ID поста в БД';


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN "Posts"."Owner_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Posts"."Owner_ID" IS 'ID пользователя, создавшего пост';


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN "Posts"."Post_text"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Posts"."Post_text" IS 'Текст поста';


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN "Posts"."Picture_1_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Posts"."Picture_1_ID" IS 'ID 1-ой картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN "Posts"."Picture_2_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Posts"."Picture_2_ID" IS 'ID 2-ой картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN "Posts"."Picture_3_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Posts"."Picture_3_ID" IS 'ID 3-ей картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN "Posts"."Picture_4_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Posts"."Picture_4_ID" IS 'ID 4-ой картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN "Posts"."Picture_5_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Posts"."Picture_5_ID" IS 'ID 5-ой картинки, приложенной к посту (может и не быть)';


--
-- TOC entry 215 (class 1259 OID 98912)
-- Name: Users; Type: TABLE; Schema: ForestSiteBD; Owner: postgres
--

CREATE TABLE "ForestSiteBD"."Users" (
    "User_ID" bigint NOT NULL,
    "Username" character varying NOT NULL,
    "Avatar" character varying,
    "Sex" character varying NOT NULL,
    "Password" character varying NOT NULL
);


ALTER TABLE "ForestSiteBD"."Users" OWNER TO postgres;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "Users"."User_ID"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Users"."User_ID" IS 'ID пользователя в БД';


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "Users"."Username"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Users"."Username" IS 'Имя, отображаемое на сайте';


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "Users"."Avatar"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Users"."Avatar" IS 'Ссылка на аватар пользователя, по умолчанию ссылка на стандартный аватар (пока нет)';


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "Users"."Sex"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Users"."Sex" IS 'Пол пользователя';


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN "Users"."Password"; Type: COMMENT; Schema: ForestSiteBD; Owner: postgres
--

COMMENT ON COLUMN "ForestSiteBD"."Users"."Password" IS 'Пароль пользователя';


--
-- TOC entry 3367 (class 0 OID 98933)
-- Dependencies: 218
-- Data for Name: Comments; Type: TABLE DATA; Schema: ForestSiteBD; Owner: postgres
--

COPY "ForestSiteBD"."Comments" ("Comment_ID", "Owner_ID", "Comment_text", "Picture_1_ID", "Picture_2_ID", "Picture_3_ID", "Picture_4_ID", "Picture_5_ID") FROM stdin;
\.


--
-- TOC entry 3369 (class 0 OID 98965)
-- Dependencies: 220
-- Data for Name: Likes_Comments; Type: TABLE DATA; Schema: ForestSiteBD; Owner: postgres
--

COPY "ForestSiteBD"."Likes_Comments" ("Like_ID", "Owner_ID", "Comment_ID") FROM stdin;
\.


--
-- TOC entry 3368 (class 0 OID 98940)
-- Dependencies: 219
-- Data for Name: Likes_Posts; Type: TABLE DATA; Schema: ForestSiteBD; Owner: postgres
--

COPY "ForestSiteBD"."Likes_Posts" ("Like_ID", "Owner_ID", "Post_ID") FROM stdin;
\.


--
-- TOC entry 3366 (class 0 OID 98926)
-- Dependencies: 217
-- Data for Name: Pictures; Type: TABLE DATA; Schema: ForestSiteBD; Owner: postgres
--

COPY "ForestSiteBD"."Pictures" ("Pic_ID", "Owner_ID", "Pic_link") FROM stdin;
\.


--
-- TOC entry 3365 (class 0 OID 98919)
-- Dependencies: 216
-- Data for Name: Posts; Type: TABLE DATA; Schema: ForestSiteBD; Owner: postgres
--

COPY "ForestSiteBD"."Posts" ("Post_ID", "Owner_ID", "Post_text", "Picture_1_ID", "Picture_2_ID", "Picture_3_ID", "Picture_4_ID", "Picture_5_ID") FROM stdin;
\.


--
-- TOC entry 3364 (class 0 OID 98912)
-- Dependencies: 215
-- Data for Name: Users; Type: TABLE DATA; Schema: ForestSiteBD; Owner: postgres
--

COPY "ForestSiteBD"."Users" ("User_ID", "Username", "Avatar", "Sex", "Password") FROM stdin;
1	Userok1111	\N	Male	goaway1
\.


--
-- TOC entry 3200 (class 2606 OID 98939)
-- Name: Comments Comments_pkey; Type: CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Comments"
    ADD CONSTRAINT "Comments_pkey" PRIMARY KEY ("Comment_ID");


--
-- TOC entry 3204 (class 2606 OID 98969)
-- Name: Likes_Comments Likes_Comments_pkey; Type: CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Likes_Comments"
    ADD CONSTRAINT "Likes_Comments_pkey" PRIMARY KEY ("Like_ID");


--
-- TOC entry 3202 (class 2606 OID 98944)
-- Name: Likes_Posts Likes_pkey; Type: CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Likes_Posts"
    ADD CONSTRAINT "Likes_pkey" PRIMARY KEY ("Like_ID");


--
-- TOC entry 3198 (class 2606 OID 98932)
-- Name: Pictures Pictures_pkey; Type: CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Pictures"
    ADD CONSTRAINT "Pictures_pkey" PRIMARY KEY ("Pic_ID");


--
-- TOC entry 3196 (class 2606 OID 98925)
-- Name: Posts Posts_pkey; Type: CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Posts"
    ADD CONSTRAINT "Posts_pkey" PRIMARY KEY ("Post_ID");


--
-- TOC entry 3194 (class 2606 OID 98918)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("User_ID");


--
-- TOC entry 3220 (class 2606 OID 98975)
-- Name: Likes_Comments Comment; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Likes_Comments"
    ADD CONSTRAINT "Comment" FOREIGN KEY ("Comment_ID") REFERENCES "ForestSiteBD"."Comments"("Comment_ID") NOT VALID;


--
-- TOC entry 3205 (class 2606 OID 98945)
-- Name: Posts Owner; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Posts"
    ADD CONSTRAINT "Owner" FOREIGN KEY ("Owner_ID") REFERENCES "ForestSiteBD"."Users"("User_ID") NOT VALID;


--
-- TOC entry 3211 (class 2606 OID 98950)
-- Name: Pictures Owner; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Pictures"
    ADD CONSTRAINT "Owner" FOREIGN KEY ("Owner_ID") REFERENCES "ForestSiteBD"."Users"("User_ID") NOT VALID;


--
-- TOC entry 3218 (class 2606 OID 98955)
-- Name: Likes_Posts Owner; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Likes_Posts"
    ADD CONSTRAINT "Owner" FOREIGN KEY ("Owner_ID") REFERENCES "ForestSiteBD"."Users"("User_ID") NOT VALID;


--
-- TOC entry 3221 (class 2606 OID 98970)
-- Name: Likes_Comments Owner; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Likes_Comments"
    ADD CONSTRAINT "Owner" FOREIGN KEY ("Owner_ID") REFERENCES "ForestSiteBD"."Users"("User_ID");


--
-- TOC entry 3212 (class 2606 OID 99005)
-- Name: Comments Owner; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Comments"
    ADD CONSTRAINT "Owner" FOREIGN KEY ("Owner_ID") REFERENCES "ForestSiteBD"."Users"("User_ID") NOT VALID;


--
-- TOC entry 3206 (class 2606 OID 98980)
-- Name: Posts Pic1; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Posts"
    ADD CONSTRAINT "Pic1" FOREIGN KEY ("Picture_1_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3213 (class 2606 OID 99010)
-- Name: Comments Pic1; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Comments"
    ADD CONSTRAINT "Pic1" FOREIGN KEY ("Picture_1_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3207 (class 2606 OID 98985)
-- Name: Posts Pic2; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Posts"
    ADD CONSTRAINT "Pic2" FOREIGN KEY ("Picture_3_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3214 (class 2606 OID 99015)
-- Name: Comments Pic2; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Comments"
    ADD CONSTRAINT "Pic2" FOREIGN KEY ("Picture_2_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3208 (class 2606 OID 98990)
-- Name: Posts Pic3; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Posts"
    ADD CONSTRAINT "Pic3" FOREIGN KEY ("Picture_3_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3215 (class 2606 OID 99020)
-- Name: Comments Pic3; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Comments"
    ADD CONSTRAINT "Pic3" FOREIGN KEY ("Picture_3_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3209 (class 2606 OID 98995)
-- Name: Posts Pic4; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Posts"
    ADD CONSTRAINT "Pic4" FOREIGN KEY ("Picture_4_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3216 (class 2606 OID 99025)
-- Name: Comments Pic4; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Comments"
    ADD CONSTRAINT "Pic4" FOREIGN KEY ("Picture_4_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3210 (class 2606 OID 99000)
-- Name: Posts Pic5; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Posts"
    ADD CONSTRAINT "Pic5" FOREIGN KEY ("Picture_5_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3217 (class 2606 OID 99030)
-- Name: Comments Pic5; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Comments"
    ADD CONSTRAINT "Pic5" FOREIGN KEY ("Picture_5_ID") REFERENCES "ForestSiteBD"."Pictures"("Pic_ID") NOT VALID;


--
-- TOC entry 3219 (class 2606 OID 98960)
-- Name: Likes_Posts Post; Type: FK CONSTRAINT; Schema: ForestSiteBD; Owner: postgres
--

ALTER TABLE ONLY "ForestSiteBD"."Likes_Posts"
    ADD CONSTRAINT "Post" FOREIGN KEY ("Post_ID") REFERENCES "ForestSiteBD"."Posts"("Post_ID") NOT VALID;


-- Completed on 2023-06-23 11:36:27

--
-- PostgreSQL database dump complete
--

