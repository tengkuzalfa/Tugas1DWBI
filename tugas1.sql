PGDMP         -                y            tugas1    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16503    tugas1    DATABASE     f   CREATE DATABASE tugas1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE tugas1;
                postgres    false            ?            1259    16504    customer    TABLE     ?  CREATE TABLE public.customer (
    custno character varying(8) NOT NULL,
    custname character varying(30) NOT NULL,
    address character varying(50) NOT NULL,
    internal character(1) NOT NULL,
    contact character varying(35) NOT NULL,
    phone character varying(11) NOT NULL,
    city character varying(30) NOT NULL,
    state character varying(2) NOT NULL,
    zip character varying(10) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            ?            1259    16507    facility    TABLE     v   CREATE TABLE public.facility (
    facno character varying(8) NOT NULL,
    facname character varying(30) NOT NULL
);
    DROP TABLE public.facility;
       public         heap    postgres    false            ?            1259    16510    location    TABLE     ?   CREATE TABLE public.location (
    locno character varying(8) NOT NULL,
    facno character varying(8) NOT NULL,
    locname character varying(30) NOT NULL
);
    DROP TABLE public.location;
       public         heap    postgres    false            ?          0    16504    customer 
   TABLE DATA           i   COPY public.customer (custno, custname, address, internal, contact, phone, city, state, zip) FROM stdin;
    public          postgres    false    200   I       ?          0    16507    facility 
   TABLE DATA           2   COPY public.facility (facno, facname) FROM stdin;
    public          postgres    false    201   f       ?          0    16510    location 
   TABLE DATA           9   COPY public.location (locno, facno, locname) FROM stdin;
    public          postgres    false    202   ?       )           2606    16514    customer pk_customer 
   CONSTRAINT     V   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT pk_customer PRIMARY KEY (custno);
 >   ALTER TABLE ONLY public.customer DROP CONSTRAINT pk_customer;
       public            postgres    false    200            +           2606    16516    facility pk_facility 
   CONSTRAINT     U   ALTER TABLE ONLY public.facility
    ADD CONSTRAINT pk_facility PRIMARY KEY (facno);
 >   ALTER TABLE ONLY public.facility DROP CONSTRAINT pk_facility;
       public            postgres    false    201            /           2606    16518    location pk_location 
   CONSTRAINT     U   ALTER TABLE ONLY public.location
    ADD CONSTRAINT pk_location PRIMARY KEY (locno);
 >   ALTER TABLE ONLY public.location DROP CONSTRAINT pk_location;
       public            postgres    false    202            -           2606    16520    facility unique_facname 
   CONSTRAINT     U   ALTER TABLE ONLY public.facility
    ADD CONSTRAINT unique_facname UNIQUE (facname);
 A   ALTER TABLE ONLY public.facility DROP CONSTRAINT unique_facname;
       public            postgres    false    201            0           2606    16521    location fk_facno    FK CONSTRAINT     t   ALTER TABLE ONLY public.location
    ADD CONSTRAINT fk_facno FOREIGN KEY (facno) REFERENCES public.facility(facno);
 ;   ALTER TABLE ONLY public.location DROP CONSTRAINT fk_facno;
       public          postgres    false    201    2859    202            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     