PGDMP     
    ,                x         	   postgres2    12.1    12.1 �   ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    18994 	   postgres2    DATABASE     �   CREATE DATABASE postgres2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE postgres2;
                postgres    false            �            1259    19026 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    19024    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            a           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    19036    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    19034    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            b           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    19018    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    19016    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            c           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    19044 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    19054    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    19052    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            d           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    19042    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            e           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    19062    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    19060 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            f           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216                       1259    24898    catalog_bindersolution    TABLE     r   CREATE TABLE public.catalog_bindersolution (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 *   DROP TABLE public.catalog_bindersolution;
       public         heap    postgres    false                       1259    24896    catalog_bindersolution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_bindersolution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.catalog_bindersolution_id_seq;
       public          postgres    false    270            g           0    0    catalog_bindersolution_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.catalog_bindersolution_id_seq OWNED BY public.catalog_bindersolution.id;
          public          postgres    false    269            �            1259    19175    catalog_city    TABLE     h   CREATE TABLE public.catalog_city (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
     DROP TABLE public.catalog_city;
       public         heap    postgres    false            �            1259    19173    catalog_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.catalog_city_id_seq;
       public          postgres    false    222            h           0    0    catalog_city_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.catalog_city_id_seq OWNED BY public.catalog_city.id;
          public          postgres    false    221            �            1259    19185    catalog_classblight    TABLE     �   CREATE TABLE public.catalog_classblight (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(5) NOT NULL
);
 '   DROP TABLE public.catalog_classblight;
       public         heap    postgres    false            �            1259    19183    catalog_classblight_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_classblight_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.catalog_classblight_id_seq;
       public          postgres    false    224            i           0    0    catalog_classblight_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.catalog_classblight_id_seq OWNED BY public.catalog_classblight.id;
          public          postgres    false    223                       1259    24800    catalog_classаveragedensity    TABLE     �   CREATE TABLE public."catalog_classаveragedensity" (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(5) NOT NULL
);
 2   DROP TABLE public."catalog_classаveragedensity";
       public         heap    postgres    false                       1259    24798 #   catalog_classаveragedensity_id_seq    SEQUENCE     �   CREATE SEQUENCE public."catalog_classаveragedensity_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."catalog_classаveragedensity_id_seq";
       public          postgres    false    264            j           0    0 #   catalog_classаveragedensity_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."catalog_classаveragedensity_id_seq" OWNED BY public."catalog_classаveragedensity".id;
          public          postgres    false    263            �            1259    19195    catalog_customization    TABLE     �   CREATE TABLE public.catalog_customization (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    owner_id integer
);
 )   DROP TABLE public.catalog_customization;
       public         heap    postgres    false            �            1259    19193    catalog_customization_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_customization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.catalog_customization_id_seq;
       public          postgres    false    226            k           0    0    catalog_customization_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.catalog_customization_id_seq OWNED BY public.catalog_customization.id;
          public          postgres    false    225            �            1259    19203    catalog_producer    TABLE     l   CREATE TABLE public.catalog_producer (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 $   DROP TABLE public.catalog_producer;
       public         heap    postgres    false            �            1259    19201    catalog_directproducer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_directproducer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.catalog_directproducer_id_seq;
       public          postgres    false    228            l           0    0    catalog_directproducer_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.catalog_directproducer_id_seq OWNED BY public.catalog_producer.id;
          public          postgres    false    227                       1259    24906    catalog_grid    TABLE     ~   CREATE TABLE public.catalog_grid (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    brand_id integer
);
     DROP TABLE public.catalog_grid;
       public         heap    postgres    false                       1259    24904    catalog_grid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_grid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.catalog_grid_id_seq;
       public          postgres    false    272            m           0    0    catalog_grid_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.catalog_grid_id_seq OWNED BY public.catalog_grid.id;
          public          postgres    false    271                       1259    24961    catalog_grid_usage    TABLE     �   CREATE TABLE public.catalog_grid_usage (
    id integer NOT NULL,
    grid_id integer NOT NULL,
    gridusage_id integer NOT NULL
);
 &   DROP TABLE public.catalog_grid_usage;
       public         heap    postgres    false                       1259    24959    catalog_grid_usage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_grid_usage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.catalog_grid_usage_id_seq;
       public          postgres    false    278            n           0    0    catalog_grid_usage_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.catalog_grid_usage_id_seq OWNED BY public.catalog_grid_usage.id;
          public          postgres    false    277                       1259    24914    catalog_gridusage    TABLE     �   CREATE TABLE public.catalog_gridusage (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 %   DROP TABLE public.catalog_gridusage;
       public         heap    postgres    false                       1259    24912    catalog_gridusage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_gridusage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.catalog_gridusage_id_seq;
       public          postgres    false    274            o           0    0    catalog_gridusage_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.catalog_gridusage_id_seq OWNED BY public.catalog_gridusage.id;
          public          postgres    false    273            �            1259    19213    catalog_markd    TABLE     �   CREATE TABLE public.catalog_markd (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(5) NOT NULL
);
 !   DROP TABLE public.catalog_markd;
       public         heap    postgres    false            �            1259    19211    catalog_markd_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_markd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.catalog_markd_id_seq;
       public          postgres    false    230            p           0    0    catalog_markd_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.catalog_markd_id_seq OWNED BY public.catalog_markd.id;
          public          postgres    false    229            
           1259    24810    catalog_markf    TABLE     �   CREATE TABLE public.catalog_markf (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(5) NOT NULL
);
 !   DROP TABLE public.catalog_markf;
       public         heap    postgres    false            	           1259    24808    catalog_markf_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_markf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.catalog_markf_id_seq;
       public          postgres    false    266            q           0    0    catalog_markf_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.catalog_markf_id_seq OWNED BY public.catalog_markf.id;
          public          postgres    false    265            �            1259    19223    catalog_markm    TABLE     �   CREATE TABLE public.catalog_markm (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(5) NOT NULL
);
 !   DROP TABLE public.catalog_markm;
       public         heap    postgres    false            �            1259    19221    catalog_markm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_markm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.catalog_markm_id_seq;
       public          postgres    false    232            r           0    0    catalog_markm_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.catalog_markm_id_seq OWNED BY public.catalog_markm.id;
          public          postgres    false    231                       1259    24701    catalog_masonrybonding    TABLE     6  CREATE TABLE public.catalog_masonrybonding (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    mortar character varying(6) NOT NULL,
    reinforcement character varying(8) NOT NULL,
    reinforcing_belt character varying(3) NOT NULL,
    load_distribution character varying(3) NOT NULL
);
 *   DROP TABLE public.catalog_masonrybonding;
       public         heap    postgres    false                       1259    24699    catalog_masonrybonding_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_masonrybonding_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.catalog_masonrybonding_id_seq;
       public          postgres    false    260            s           0    0    catalog_masonrybonding_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.catalog_masonrybonding_id_seq OWNED BY public.catalog_masonrybonding.id;
          public          postgres    false    259                       1259    24820    catalog_nfsize    TABLE     �   CREATE TABLE public.catalog_nfsize (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    greater_bed_size integer,
    minor_bed_size integer,
    height integer,
    identifier character varying(200) NOT NULL
);
 "   DROP TABLE public.catalog_nfsize;
       public         heap    postgres    false                       1259    24818    catalog_nfsize_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_nfsize_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.catalog_nfsize_id_seq;
       public          postgres    false    268            t           0    0    catalog_nfsize_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.catalog_nfsize_id_seq OWNED BY public.catalog_nfsize.id;
          public          postgres    false    267            �            1259    19233 (   catalog_pilegrillagefoundationworkprices    TABLE     �  CREATE TABLE public.catalog_pilegrillagefoundationworkprices (
    id integer NOT NULL,
    const_expenditure double precision NOT NULL,
    transportation_procurement_cost double precision NOT NULL,
    reinforcement_binding double precision NOT NULL,
    clamp double precision NOT NULL,
    pile_frame double precision NOT NULL,
    formwork double precision NOT NULL,
    length_costs double precision NOT NULL,
    square_costs double precision NOT NULL,
    volume_costs double precision NOT NULL,
    pile_pour double precision NOT NULL,
    man_hours_cost integer NOT NULL,
    man_hours_profit integer NOT NULL,
    owner_id integer
);
 <   DROP TABLE public.catalog_pilegrillagefoundationworkprices;
       public         heap    postgres    false            �            1259    19231 /   catalog_pilegrillagefoundationworkprices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_pilegrillagefoundationworkprices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.catalog_pilegrillagefoundationworkprices_id_seq;
       public          postgres    false    234            u           0    0 /   catalog_pilegrillagefoundationworkprices_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.catalog_pilegrillagefoundationworkprices_id_seq OWNED BY public.catalog_pilegrillagefoundationworkprices.id;
          public          postgres    false    233            �            1259    19241    catalog_plan    TABLE     �   CREATE TABLE public.catalog_plan (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    scheme_scale double precision,
    author_id integer,
    customization_id integer
);
     DROP TABLE public.catalog_plan;
       public         heap    postgres    false            �            1259    19239    catalog_plan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.catalog_plan_id_seq;
       public          postgres    false    236            v           0    0    catalog_plan_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.catalog_plan_id_seq OWNED BY public.catalog_plan.id;
          public          postgres    false    235                       1259    24924    catalog_porothermsystem    TABLE     �   CREATE TABLE public.catalog_porothermsystem (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 +   DROP TABLE public.catalog_porothermsystem;
       public         heap    postgres    false                       1259    24922    catalog_porothermsystem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_porothermsystem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.catalog_porothermsystem_id_seq;
       public          postgres    false    276            w           0    0    catalog_porothermsystem_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.catalog_porothermsystem_id_seq OWNED BY public.catalog_porothermsystem.id;
          public          postgres    false    275            �            1259    19249    catalog_productbrand    TABLE     p   CREATE TABLE public.catalog_productbrand (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 (   DROP TABLE public.catalog_productbrand;
       public         heap    postgres    false            �            1259    19247    catalog_productbrand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_productbrand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.catalog_productbrand_id_seq;
       public          postgres    false    238            x           0    0    catalog_productbrand_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.catalog_productbrand_id_seq OWNED BY public.catalog_productbrand.id;
          public          postgres    false    237            �            1259    19259    catalog_profile    TABLE     y   CREATE TABLE public.catalog_profile (
    id integer NOT NULL,
    scheme_scale integer,
    user_id integer NOT NULL
);
 #   DROP TABLE public.catalog_profile;
       public         heap    postgres    false            �            1259    19257    catalog_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.catalog_profile_id_seq;
       public          postgres    false    240            y           0    0    catalog_profile_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.catalog_profile_id_seq OWNED BY public.catalog_profile.id;
          public          postgres    false    239            �            1259    19269    catalog_provider    TABLE     �   CREATE TABLE public.catalog_provider (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    ownership_form character varying(1) NOT NULL,
    primary_activity_id integer
);
 $   DROP TABLE public.catalog_provider;
       public         heap    postgres    false            �            1259    19267    catalog_provider_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.catalog_provider_id_seq;
       public          postgres    false    242            z           0    0    catalog_provider_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.catalog_provider_id_seq OWNED BY public.catalog_provider.id;
          public          postgres    false    241            �            1259    19429 #   catalog_provider_secondary_activity    TABLE     �   CREATE TABLE public.catalog_provider_secondary_activity (
    id integer NOT NULL,
    provider_id integer NOT NULL,
    provideractivitytype_id integer NOT NULL
);
 7   DROP TABLE public.catalog_provider_secondary_activity;
       public         heap    postgres    false            �            1259    19427 *   catalog_provider_secondary_activity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provider_secondary_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.catalog_provider_secondary_activity_id_seq;
       public          postgres    false    254            {           0    0 *   catalog_provider_secondary_activity_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.catalog_provider_secondary_activity_id_seq OWNED BY public.catalog_provider_secondary_activity.id;
          public          postgres    false    253                        1259    19437    catalog_provider_tax_system    TABLE     �   CREATE TABLE public.catalog_provider_tax_system (
    id integer NOT NULL,
    provider_id integer NOT NULL,
    taxsystemtype_id integer NOT NULL
);
 /   DROP TABLE public.catalog_provider_tax_system;
       public         heap    postgres    false            �            1259    19435 "   catalog_provider_tax_system_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provider_tax_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.catalog_provider_tax_system_id_seq;
       public          postgres    false    256            |           0    0 "   catalog_provider_tax_system_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.catalog_provider_tax_system_id_seq OWNED BY public.catalog_provider_tax_system.id;
          public          postgres    false    255            �            1259    19279    catalog_provideractivitytype    TABLE     �   CREATE TABLE public.catalog_provideractivitytype (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 0   DROP TABLE public.catalog_provideractivitytype;
       public         heap    postgres    false            �            1259    19277 #   catalog_provideractivitytype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provideractivitytype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.catalog_provideractivitytype_id_seq;
       public          postgres    false    244            }           0    0 #   catalog_provideractivitytype_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.catalog_provideractivitytype_id_seq OWNED BY public.catalog_provideractivitytype.id;
          public          postgres    false    243            �            1259    19289    catalog_provideroutlet    TABLE     �   CREATE TABLE public.catalog_provideroutlet (
    id integer NOT NULL,
    local_name character varying(200) NOT NULL,
    information text NOT NULL,
    city_id integer NOT NULL,
    name_id integer NOT NULL,
    owner_id integer
);
 *   DROP TABLE public.catalog_provideroutlet;
       public         heap    postgres    false            �            1259    19287    catalog_provideroutlet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provideroutlet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.catalog_provideroutlet_id_seq;
       public          postgres    false    246            ~           0    0    catalog_provideroutlet_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.catalog_provideroutlet_id_seq OWNED BY public.catalog_provideroutlet.id;
          public          postgres    false    245            �            1259    19300 %   catalog_rockwallmaterialpriceposition    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialpriceposition (
    id integer NOT NULL,
    price double precision NOT NULL,
    name_id integer NOT NULL,
    owner_id integer
);
 9   DROP TABLE public.catalog_rockwallmaterialpriceposition;
       public         heap    postgres    false            �            1259    19298 ,   catalog_rockwallmaterialpriceposition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialpriceposition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.catalog_rockwallmaterialpriceposition_id_seq;
       public          postgres    false    248                       0    0 ,   catalog_rockwallmaterialpriceposition_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.catalog_rockwallmaterialpriceposition_id_seq OWNED BY public.catalog_rockwallmaterialpriceposition.id;
          public          postgres    false    247            �            1259    19318    catalog_rockwallmaterialunit    TABLE     �  CREATE TABLE public.catalog_rockwallmaterialunit (
    id integer NOT NULL,
    thermal_conductivity integer,
    primary_or_additional character varying(10) NOT NULL,
    body_type character varying(6) NOT NULL,
    purpose character varying(10) NOT NULL,
    double_install character varying(3) NOT NULL,
    height integer,
    greater_bed_size integer,
    minor_bed_size integer,
    name character varying(5) NOT NULL,
    mark_m_id integer,
    brand_id integer,
    class_b_id integer,
    mark_d_id integer,
    producer_id integer,
    work_size character varying(7) NOT NULL,
    class_average_density_id integer,
    mark_f_id integer,
    nf_size_id integer,
    thickness_calc character varying(4) NOT NULL,
    blind_hollow character varying(3) NOT NULL,
    clinker character varying(3) NOT NULL,
    material character varying(18) NOT NULL,
    polish character varying(3) NOT NULL,
    quantity_per_pallet integer,
    tongue_and_groove character varying(3) NOT NULL
);
 0   DROP TABLE public.catalog_rockwallmaterialunit;
       public         heap    postgres    false                       1259    24977 -   catalog_rockwallmaterialunit_binding_solution    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_binding_solution (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    bindersolution_id integer NOT NULL
);
 A   DROP TABLE public.catalog_rockwallmaterialunit_binding_solution;
       public         heap    postgres    false                       1259    24975 4   catalog_rockwallmaterialunit_binding_solution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_binding_solution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.catalog_rockwallmaterialunit_binding_solution_id_seq;
       public          postgres    false    282            �           0    0 4   catalog_rockwallmaterialunit_binding_solution_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.catalog_rockwallmaterialunit_binding_solution_id_seq OWNED BY public.catalog_rockwallmaterialunit_binding_solution.id;
          public          postgres    false    281                       1259    24749 %   catalog_rockwallmaterialunit_bounding    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_bounding (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    masonrybonding_id integer NOT NULL
);
 9   DROP TABLE public.catalog_rockwallmaterialunit_bounding;
       public         heap    postgres    false                       1259    24747 ,   catalog_rockwallmaterialunit_bounding_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_bounding_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.catalog_rockwallmaterialunit_bounding_id_seq;
       public          postgres    false    262            �           0    0 ,   catalog_rockwallmaterialunit_bounding_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.catalog_rockwallmaterialunit_bounding_id_seq OWNED BY public.catalog_rockwallmaterialunit_bounding.id;
          public          postgres    false    261            �            1259    19316 #   catalog_rockwallmaterialunit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.catalog_rockwallmaterialunit_id_seq;
       public          postgres    false    250            �           0    0 #   catalog_rockwallmaterialunit_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.catalog_rockwallmaterialunit_id_seq OWNED BY public.catalog_rockwallmaterialunit.id;
          public          postgres    false    249                       1259    24969 -   catalog_rockwallmaterialunit_porotherm_system    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_porotherm_system (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    porothermsystem_id integer NOT NULL
);
 A   DROP TABLE public.catalog_rockwallmaterialunit_porotherm_system;
       public         heap    postgres    false                       1259    24967 4   catalog_rockwallmaterialunit_porotherm_system_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_porotherm_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.catalog_rockwallmaterialunit_porotherm_system_id_seq;
       public          postgres    false    280            �           0    0 4   catalog_rockwallmaterialunit_porotherm_system_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.catalog_rockwallmaterialunit_porotherm_system_id_seq OWNED BY public.catalog_rockwallmaterialunit_porotherm_system.id;
          public          postgres    false    279            �            1259    19366    catalog_taxsystemtype    TABLE     �   CREATE TABLE public.catalog_taxsystemtype (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 )   DROP TABLE public.catalog_taxsystemtype;
       public         heap    postgres    false            �            1259    19364    catalog_taxsystemtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_taxsystemtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.catalog_taxsystemtype_id_seq;
       public          postgres    false    252            �           0    0    catalog_taxsystemtype_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.catalog_taxsystemtype_id_seq OWNED BY public.catalog_taxsystemtype.id;
          public          postgres    false    251                       1259    24598    catalog_wallreinforcementtype    TABLE     �   CREATE TABLE public.catalog_wallreinforcementtype (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 1   DROP TABLE public.catalog_wallreinforcementtype;
       public         heap    postgres    false                       1259    24596 $   catalog_wallreinforcementtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_wallreinforcementtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.catalog_wallreinforcementtype_id_seq;
       public          postgres    false    258            �           0    0 $   catalog_wallreinforcementtype_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.catalog_wallreinforcementtype_id_seq OWNED BY public.catalog_wallreinforcementtype.id;
          public          postgres    false    257            �            1259    19122    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    19120    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    19008    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    19006    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    18997    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    18995    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    19153    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            v           2604    19029    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            w           2604    19039    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            u           2604    19021    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            x           2604    19047    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            y           2604    19057    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            z           2604    19065    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    24901    catalog_bindersolution id    DEFAULT     �   ALTER TABLE ONLY public.catalog_bindersolution ALTER COLUMN id SET DEFAULT nextval('public.catalog_bindersolution_id_seq'::regclass);
 H   ALTER TABLE public.catalog_bindersolution ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269    270            }           2604    19178    catalog_city id    DEFAULT     r   ALTER TABLE ONLY public.catalog_city ALTER COLUMN id SET DEFAULT nextval('public.catalog_city_id_seq'::regclass);
 >   ALTER TABLE public.catalog_city ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            ~           2604    19188    catalog_classblight id    DEFAULT     �   ALTER TABLE ONLY public.catalog_classblight ALTER COLUMN id SET DEFAULT nextval('public.catalog_classblight_id_seq'::regclass);
 E   ALTER TABLE public.catalog_classblight ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    24803    catalog_classаveragedensity id    DEFAULT     �   ALTER TABLE ONLY public."catalog_classаveragedensity" ALTER COLUMN id SET DEFAULT nextval('public."catalog_classаveragedensity_id_seq"'::regclass);
 P   ALTER TABLE public."catalog_classаveragedensity" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264                       2604    19198    catalog_customization id    DEFAULT     �   ALTER TABLE ONLY public.catalog_customization ALTER COLUMN id SET DEFAULT nextval('public.catalog_customization_id_seq'::regclass);
 G   ALTER TABLE public.catalog_customization ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    24909    catalog_grid id    DEFAULT     r   ALTER TABLE ONLY public.catalog_grid ALTER COLUMN id SET DEFAULT nextval('public.catalog_grid_id_seq'::regclass);
 >   ALTER TABLE public.catalog_grid ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            �           2604    24964    catalog_grid_usage id    DEFAULT     ~   ALTER TABLE ONLY public.catalog_grid_usage ALTER COLUMN id SET DEFAULT nextval('public.catalog_grid_usage_id_seq'::regclass);
 D   ALTER TABLE public.catalog_grid_usage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    278    278            �           2604    24917    catalog_gridusage id    DEFAULT     |   ALTER TABLE ONLY public.catalog_gridusage ALTER COLUMN id SET DEFAULT nextval('public.catalog_gridusage_id_seq'::regclass);
 C   ALTER TABLE public.catalog_gridusage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            �           2604    19216    catalog_markd id    DEFAULT     t   ALTER TABLE ONLY public.catalog_markd ALTER COLUMN id SET DEFAULT nextval('public.catalog_markd_id_seq'::regclass);
 ?   ALTER TABLE public.catalog_markd ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    24813    catalog_markf id    DEFAULT     t   ALTER TABLE ONLY public.catalog_markf ALTER COLUMN id SET DEFAULT nextval('public.catalog_markf_id_seq'::regclass);
 ?   ALTER TABLE public.catalog_markf ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266            �           2604    19226    catalog_markm id    DEFAULT     t   ALTER TABLE ONLY public.catalog_markm ALTER COLUMN id SET DEFAULT nextval('public.catalog_markm_id_seq'::regclass);
 ?   ALTER TABLE public.catalog_markm ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    24704    catalog_masonrybonding id    DEFAULT     �   ALTER TABLE ONLY public.catalog_masonrybonding ALTER COLUMN id SET DEFAULT nextval('public.catalog_masonrybonding_id_seq'::regclass);
 H   ALTER TABLE public.catalog_masonrybonding ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            �           2604    24823    catalog_nfsize id    DEFAULT     v   ALTER TABLE ONLY public.catalog_nfsize ALTER COLUMN id SET DEFAULT nextval('public.catalog_nfsize_id_seq'::regclass);
 @   ALTER TABLE public.catalog_nfsize ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            �           2604    19236 +   catalog_pilegrillagefoundationworkprices id    DEFAULT     �   ALTER TABLE ONLY public.catalog_pilegrillagefoundationworkprices ALTER COLUMN id SET DEFAULT nextval('public.catalog_pilegrillagefoundationworkprices_id_seq'::regclass);
 Z   ALTER TABLE public.catalog_pilegrillagefoundationworkprices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    19244    catalog_plan id    DEFAULT     r   ALTER TABLE ONLY public.catalog_plan ALTER COLUMN id SET DEFAULT nextval('public.catalog_plan_id_seq'::regclass);
 >   ALTER TABLE public.catalog_plan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    24927    catalog_porothermsystem id    DEFAULT     �   ALTER TABLE ONLY public.catalog_porothermsystem ALTER COLUMN id SET DEFAULT nextval('public.catalog_porothermsystem_id_seq'::regclass);
 I   ALTER TABLE public.catalog_porothermsystem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276            �           2604    19206    catalog_producer id    DEFAULT     �   ALTER TABLE ONLY public.catalog_producer ALTER COLUMN id SET DEFAULT nextval('public.catalog_directproducer_id_seq'::regclass);
 B   ALTER TABLE public.catalog_producer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    19252    catalog_productbrand id    DEFAULT     �   ALTER TABLE ONLY public.catalog_productbrand ALTER COLUMN id SET DEFAULT nextval('public.catalog_productbrand_id_seq'::regclass);
 F   ALTER TABLE public.catalog_productbrand ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    19262    catalog_profile id    DEFAULT     x   ALTER TABLE ONLY public.catalog_profile ALTER COLUMN id SET DEFAULT nextval('public.catalog_profile_id_seq'::regclass);
 A   ALTER TABLE public.catalog_profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    19272    catalog_provider id    DEFAULT     z   ALTER TABLE ONLY public.catalog_provider ALTER COLUMN id SET DEFAULT nextval('public.catalog_provider_id_seq'::regclass);
 B   ALTER TABLE public.catalog_provider ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    19432 &   catalog_provider_secondary_activity id    DEFAULT     �   ALTER TABLE ONLY public.catalog_provider_secondary_activity ALTER COLUMN id SET DEFAULT nextval('public.catalog_provider_secondary_activity_id_seq'::regclass);
 U   ALTER TABLE public.catalog_provider_secondary_activity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            �           2604    19440    catalog_provider_tax_system id    DEFAULT     �   ALTER TABLE ONLY public.catalog_provider_tax_system ALTER COLUMN id SET DEFAULT nextval('public.catalog_provider_tax_system_id_seq'::regclass);
 M   ALTER TABLE public.catalog_provider_tax_system ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256            �           2604    19282    catalog_provideractivitytype id    DEFAULT     �   ALTER TABLE ONLY public.catalog_provideractivitytype ALTER COLUMN id SET DEFAULT nextval('public.catalog_provideractivitytype_id_seq'::regclass);
 N   ALTER TABLE public.catalog_provideractivitytype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            �           2604    19292    catalog_provideroutlet id    DEFAULT     �   ALTER TABLE ONLY public.catalog_provideroutlet ALTER COLUMN id SET DEFAULT nextval('public.catalog_provideroutlet_id_seq'::regclass);
 H   ALTER TABLE public.catalog_provideroutlet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            �           2604    19303 (   catalog_rockwallmaterialpriceposition id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialpriceposition_id_seq'::regclass);
 W   ALTER TABLE public.catalog_rockwallmaterialpriceposition ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            �           2604    19321    catalog_rockwallmaterialunit id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_id_seq'::regclass);
 N   ALTER TABLE public.catalog_rockwallmaterialunit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            �           2604    24980 0   catalog_rockwallmaterialunit_binding_solution id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_binding_solution_id_seq'::regclass);
 _   ALTER TABLE public.catalog_rockwallmaterialunit_binding_solution ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    282    282            �           2604    24752 (   catalog_rockwallmaterialunit_bounding id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_bounding ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_bounding_id_seq'::regclass);
 W   ALTER TABLE public.catalog_rockwallmaterialunit_bounding ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            �           2604    24972 0   catalog_rockwallmaterialunit_porotherm_system id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_porotherm_system ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_porotherm_system_id_seq'::regclass);
 _   ALTER TABLE public.catalog_rockwallmaterialunit_porotherm_system ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    280    280            �           2604    19369    catalog_taxsystemtype id    DEFAULT     �   ALTER TABLE ONLY public.catalog_taxsystemtype ALTER COLUMN id SET DEFAULT nextval('public.catalog_taxsystemtype_id_seq'::regclass);
 G   ALTER TABLE public.catalog_taxsystemtype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            �           2604    24601     catalog_wallreinforcementtype id    DEFAULT     �   ALTER TABLE ONLY public.catalog_wallreinforcementtype ALTER COLUMN id SET DEFAULT nextval('public.catalog_wallreinforcementtype_id_seq'::regclass);
 O   ALTER TABLE public.catalog_wallreinforcementtype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            {           2604    19125    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            t           2604    19011    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            s           2604    19000    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                      0    19026 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ^M                0    19036    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   {M                0    19018    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   �M                0    19044 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �V                0    19054    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   �W                0    19062    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   �W      N          0    24898    catalog_bindersolution 
   TABLE DATA           :   COPY public.catalog_bindersolution (id, name) FROM stdin;
    public          postgres    false    270   �W                0    19175    catalog_city 
   TABLE DATA           0   COPY public.catalog_city (id, name) FROM stdin;
    public          postgres    false    222   �W                 0    19185    catalog_classblight 
   TABLE DATA           C   COPY public.catalog_classblight (id, identifier, name) FROM stdin;
    public          postgres    false    224   �W      H          0    24800    catalog_classаveragedensity 
   TABLE DATA           N   COPY public."catalog_classаveragedensity" (id, identifier, name) FROM stdin;
    public          postgres    false    264   X      "          0    19195    catalog_customization 
   TABLE DATA           C   COPY public.catalog_customization (id, name, owner_id) FROM stdin;
    public          postgres    false    226   1X      P          0    24906    catalog_grid 
   TABLE DATA           :   COPY public.catalog_grid (id, name, brand_id) FROM stdin;
    public          postgres    false    272   NX      V          0    24961    catalog_grid_usage 
   TABLE DATA           G   COPY public.catalog_grid_usage (id, grid_id, gridusage_id) FROM stdin;
    public          postgres    false    278   kX      R          0    24914    catalog_gridusage 
   TABLE DATA           A   COPY public.catalog_gridusage (id, identifier, name) FROM stdin;
    public          postgres    false    274   �X      &          0    19213    catalog_markd 
   TABLE DATA           =   COPY public.catalog_markd (id, identifier, name) FROM stdin;
    public          postgres    false    230   �X      J          0    24810    catalog_markf 
   TABLE DATA           =   COPY public.catalog_markf (id, identifier, name) FROM stdin;
    public          postgres    false    266   �X      (          0    19223    catalog_markm 
   TABLE DATA           =   COPY public.catalog_markm (id, identifier, name) FROM stdin;
    public          postgres    false    232   �X      D          0    24701    catalog_masonrybonding 
   TABLE DATA           v   COPY public.catalog_masonrybonding (id, name, mortar, reinforcement, reinforcing_belt, load_distribution) FROM stdin;
    public          postgres    false    260   �X      L          0    24820    catalog_nfsize 
   TABLE DATA           h   COPY public.catalog_nfsize (id, name, greater_bed_size, minor_bed_size, height, identifier) FROM stdin;
    public          postgres    false    268   XY      *          0    19233 (   catalog_pilegrillagefoundationworkprices 
   TABLE DATA             COPY public.catalog_pilegrillagefoundationworkprices (id, const_expenditure, transportation_procurement_cost, reinforcement_binding, clamp, pile_frame, formwork, length_costs, square_costs, volume_costs, pile_pour, man_hours_cost, man_hours_profit, owner_id) FROM stdin;
    public          postgres    false    234   �Y      ,          0    19241    catalog_plan 
   TABLE DATA           \   COPY public.catalog_plan (id, title, scheme_scale, author_id, customization_id) FROM stdin;
    public          postgres    false    236   �Y      T          0    24924    catalog_porothermsystem 
   TABLE DATA           G   COPY public.catalog_porothermsystem (id, identifier, name) FROM stdin;
    public          postgres    false    276   �Y      $          0    19203    catalog_producer 
   TABLE DATA           4   COPY public.catalog_producer (id, name) FROM stdin;
    public          postgres    false    228   �Y      .          0    19249    catalog_productbrand 
   TABLE DATA           8   COPY public.catalog_productbrand (id, name) FROM stdin;
    public          postgres    false    238   Z      0          0    19259    catalog_profile 
   TABLE DATA           D   COPY public.catalog_profile (id, scheme_scale, user_id) FROM stdin;
    public          postgres    false    240   .Z      2          0    19269    catalog_provider 
   TABLE DATA           Y   COPY public.catalog_provider (id, name, ownership_form, primary_activity_id) FROM stdin;
    public          postgres    false    242   KZ      >          0    19429 #   catalog_provider_secondary_activity 
   TABLE DATA           g   COPY public.catalog_provider_secondary_activity (id, provider_id, provideractivitytype_id) FROM stdin;
    public          postgres    false    254   hZ      @          0    19437    catalog_provider_tax_system 
   TABLE DATA           X   COPY public.catalog_provider_tax_system (id, provider_id, taxsystemtype_id) FROM stdin;
    public          postgres    false    256   �Z      4          0    19279    catalog_provideractivitytype 
   TABLE DATA           L   COPY public.catalog_provideractivitytype (id, identifier, name) FROM stdin;
    public          postgres    false    244   �Z      6          0    19289    catalog_provideroutlet 
   TABLE DATA           i   COPY public.catalog_provideroutlet (id, local_name, information, city_id, name_id, owner_id) FROM stdin;
    public          postgres    false    246   �Z      8          0    19300 %   catalog_rockwallmaterialpriceposition 
   TABLE DATA           ]   COPY public.catalog_rockwallmaterialpriceposition (id, price, name_id, owner_id) FROM stdin;
    public          postgres    false    248   �Z      :          0    19318    catalog_rockwallmaterialunit 
   TABLE DATA           �  COPY public.catalog_rockwallmaterialunit (id, thermal_conductivity, primary_or_additional, body_type, purpose, double_install, height, greater_bed_size, minor_bed_size, name, mark_m_id, brand_id, class_b_id, mark_d_id, producer_id, work_size, class_average_density_id, mark_f_id, nf_size_id, thickness_calc, blind_hollow, clinker, material, polish, quantity_per_pallet, tongue_and_groove) FROM stdin;
    public          postgres    false    250   �Z      Z          0    24977 -   catalog_rockwallmaterialunit_binding_solution 
   TABLE DATA           w   COPY public.catalog_rockwallmaterialunit_binding_solution (id, rockwallmaterialunit_id, bindersolution_id) FROM stdin;
    public          postgres    false    282   [      F          0    24749 %   catalog_rockwallmaterialunit_bounding 
   TABLE DATA           o   COPY public.catalog_rockwallmaterialunit_bounding (id, rockwallmaterialunit_id, masonrybonding_id) FROM stdin;
    public          postgres    false    262   3[      X          0    24969 -   catalog_rockwallmaterialunit_porotherm_system 
   TABLE DATA           x   COPY public.catalog_rockwallmaterialunit_porotherm_system (id, rockwallmaterialunit_id, porothermsystem_id) FROM stdin;
    public          postgres    false    280   P[      <          0    19366    catalog_taxsystemtype 
   TABLE DATA           E   COPY public.catalog_taxsystemtype (id, identifier, name) FROM stdin;
    public          postgres    false    252   m[      B          0    24598    catalog_wallreinforcementtype 
   TABLE DATA           M   COPY public.catalog_wallreinforcementtype (id, identifier, name) FROM stdin;
    public          postgres    false    258   �[                0    19122    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �[                0    19008    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   P^                0    18997    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �_                0    19153    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   Tc      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 160, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    catalog_bindersolution_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.catalog_bindersolution_id_seq', 1, false);
          public          postgres    false    269            �           0    0    catalog_city_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.catalog_city_id_seq', 1, false);
          public          postgres    false    221            �           0    0    catalog_classblight_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.catalog_classblight_id_seq', 1, false);
          public          postgres    false    223            �           0    0 #   catalog_classаveragedensity_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."catalog_classаveragedensity_id_seq"', 1, false);
          public          postgres    false    263            �           0    0    catalog_customization_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.catalog_customization_id_seq', 1, false);
          public          postgres    false    225            �           0    0    catalog_directproducer_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.catalog_directproducer_id_seq', 1, false);
          public          postgres    false    227            �           0    0    catalog_grid_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.catalog_grid_id_seq', 1, false);
          public          postgres    false    271            �           0    0    catalog_grid_usage_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.catalog_grid_usage_id_seq', 1, false);
          public          postgres    false    277            �           0    0    catalog_gridusage_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.catalog_gridusage_id_seq', 1, false);
          public          postgres    false    273            �           0    0    catalog_markd_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.catalog_markd_id_seq', 1, false);
          public          postgres    false    229            �           0    0    catalog_markf_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.catalog_markf_id_seq', 1, false);
          public          postgres    false    265            �           0    0    catalog_markm_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.catalog_markm_id_seq', 1, false);
          public          postgres    false    231            �           0    0    catalog_masonrybonding_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.catalog_masonrybonding_id_seq', 1, true);
          public          postgres    false    259            �           0    0    catalog_nfsize_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.catalog_nfsize_id_seq', 1, true);
          public          postgres    false    267            �           0    0 /   catalog_pilegrillagefoundationworkprices_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.catalog_pilegrillagefoundationworkprices_id_seq', 1, false);
          public          postgres    false    233            �           0    0    catalog_plan_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.catalog_plan_id_seq', 1, true);
          public          postgres    false    235            �           0    0    catalog_porothermsystem_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.catalog_porothermsystem_id_seq', 1, false);
          public          postgres    false    275            �           0    0    catalog_productbrand_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.catalog_productbrand_id_seq', 1, false);
          public          postgres    false    237            �           0    0    catalog_profile_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.catalog_profile_id_seq', 1, false);
          public          postgres    false    239            �           0    0    catalog_provider_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.catalog_provider_id_seq', 1, false);
          public          postgres    false    241            �           0    0 *   catalog_provider_secondary_activity_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.catalog_provider_secondary_activity_id_seq', 1, false);
          public          postgres    false    253            �           0    0 "   catalog_provider_tax_system_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.catalog_provider_tax_system_id_seq', 1, false);
          public          postgres    false    255            �           0    0 #   catalog_provideractivitytype_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.catalog_provideractivitytype_id_seq', 1, false);
          public          postgres    false    243            �           0    0    catalog_provideroutlet_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.catalog_provideroutlet_id_seq', 1, false);
          public          postgres    false    245            �           0    0 ,   catalog_rockwallmaterialpriceposition_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.catalog_rockwallmaterialpriceposition_id_seq', 1, false);
          public          postgres    false    247            �           0    0 4   catalog_rockwallmaterialunit_binding_solution_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_binding_solution_id_seq', 1, false);
          public          postgres    false    281            �           0    0 ,   catalog_rockwallmaterialunit_bounding_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_bounding_id_seq', 1, true);
          public          postgres    false    261            �           0    0 #   catalog_rockwallmaterialunit_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_id_seq', 7, true);
          public          postgres    false    249            �           0    0 4   catalog_rockwallmaterialunit_porotherm_system_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_porotherm_system_id_seq', 1, false);
          public          postgres    false    279            �           0    0    catalog_taxsystemtype_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.catalog_taxsystemtype_id_seq', 1, false);
          public          postgres    false    251            �           0    0 $   catalog_wallreinforcementtype_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.catalog_wallreinforcementtype_id_seq', 1, false);
          public          postgres    false    257            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 19, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 39, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);
          public          postgres    false    202            �           2606    19151    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �           2606    19078 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �           2606    19041 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �           2606    19031    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �           2606    19069 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �           2606    19023 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �           2606    19059 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �           2606    19093 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �           2606    19049    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            �           2606    19067 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �           2606    19107 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �           2606    19145     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            C           2606    24903 2   catalog_bindersolution catalog_bindersolution_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.catalog_bindersolution
    ADD CONSTRAINT catalog_bindersolution_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.catalog_bindersolution DROP CONSTRAINT catalog_bindersolution_pkey;
       public            postgres    false    270            �           2606    19182 "   catalog_city catalog_city_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.catalog_city
    ADD CONSTRAINT catalog_city_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.catalog_city DROP CONSTRAINT catalog_city_name_key;
       public            postgres    false    222            �           2606    19180    catalog_city catalog_city_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.catalog_city
    ADD CONSTRAINT catalog_city_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.catalog_city DROP CONSTRAINT catalog_city_pkey;
       public            postgres    false    222            �           2606    19192 6   catalog_classblight catalog_classblight_identifier_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.catalog_classblight
    ADD CONSTRAINT catalog_classblight_identifier_key UNIQUE (identifier);
 `   ALTER TABLE ONLY public.catalog_classblight DROP CONSTRAINT catalog_classblight_identifier_key;
       public            postgres    false    224            �           2606    19190 ,   catalog_classblight catalog_classblight_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.catalog_classblight
    ADD CONSTRAINT catalog_classblight_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.catalog_classblight DROP CONSTRAINT catalog_classblight_pkey;
       public            postgres    false    224            5           2606    24807 H   catalog_classаveragedensity catalog_classаveragedensity_identifier_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."catalog_classаveragedensity"
    ADD CONSTRAINT "catalog_classаveragedensity_identifier_key" UNIQUE (identifier);
 v   ALTER TABLE ONLY public."catalog_classаveragedensity" DROP CONSTRAINT "catalog_classаveragedensity_identifier_key";
       public            postgres    false    264            7           2606    24805 >   catalog_classаveragedensity catalog_classаveragedensity_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."catalog_classаveragedensity"
    ADD CONSTRAINT "catalog_classаveragedensity_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."catalog_classаveragedensity" DROP CONSTRAINT "catalog_classаveragedensity_pkey";
       public            postgres    false    264            �           2606    19200 0   catalog_customization catalog_customization_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.catalog_customization
    ADD CONSTRAINT catalog_customization_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.catalog_customization DROP CONSTRAINT catalog_customization_pkey;
       public            postgres    false    226            �           2606    19210 0   catalog_producer catalog_directproducer_name_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.catalog_producer
    ADD CONSTRAINT catalog_directproducer_name_key UNIQUE (name);
 Z   ALTER TABLE ONLY public.catalog_producer DROP CONSTRAINT catalog_directproducer_name_key;
       public            postgres    false    228            �           2606    19208 ,   catalog_producer catalog_directproducer_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.catalog_producer
    ADD CONSTRAINT catalog_directproducer_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.catalog_producer DROP CONSTRAINT catalog_directproducer_pkey;
       public            postgres    false    228            F           2606    24911    catalog_grid catalog_grid_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.catalog_grid
    ADD CONSTRAINT catalog_grid_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.catalog_grid DROP CONSTRAINT catalog_grid_pkey;
       public            postgres    false    272            S           2606    24992 H   catalog_grid_usage catalog_grid_usage_grid_id_gridusage_id_2b046575_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_grid_usage
    ADD CONSTRAINT catalog_grid_usage_grid_id_gridusage_id_2b046575_uniq UNIQUE (grid_id, gridusage_id);
 r   ALTER TABLE ONLY public.catalog_grid_usage DROP CONSTRAINT catalog_grid_usage_grid_id_gridusage_id_2b046575_uniq;
       public            postgres    false    278    278            V           2606    24966 *   catalog_grid_usage catalog_grid_usage_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.catalog_grid_usage
    ADD CONSTRAINT catalog_grid_usage_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.catalog_grid_usage DROP CONSTRAINT catalog_grid_usage_pkey;
       public            postgres    false    278            I           2606    24921 2   catalog_gridusage catalog_gridusage_identifier_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.catalog_gridusage
    ADD CONSTRAINT catalog_gridusage_identifier_key UNIQUE (identifier);
 \   ALTER TABLE ONLY public.catalog_gridusage DROP CONSTRAINT catalog_gridusage_identifier_key;
       public            postgres    false    274            K           2606    24919 (   catalog_gridusage catalog_gridusage_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.catalog_gridusage
    ADD CONSTRAINT catalog_gridusage_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.catalog_gridusage DROP CONSTRAINT catalog_gridusage_pkey;
       public            postgres    false    274            �           2606    19220 *   catalog_markd catalog_markd_identifier_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.catalog_markd
    ADD CONSTRAINT catalog_markd_identifier_key UNIQUE (identifier);
 T   ALTER TABLE ONLY public.catalog_markd DROP CONSTRAINT catalog_markd_identifier_key;
       public            postgres    false    230            �           2606    19218     catalog_markd catalog_markd_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.catalog_markd
    ADD CONSTRAINT catalog_markd_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.catalog_markd DROP CONSTRAINT catalog_markd_pkey;
       public            postgres    false    230            :           2606    24817 *   catalog_markf catalog_markf_identifier_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.catalog_markf
    ADD CONSTRAINT catalog_markf_identifier_key UNIQUE (identifier);
 T   ALTER TABLE ONLY public.catalog_markf DROP CONSTRAINT catalog_markf_identifier_key;
       public            postgres    false    266            <           2606    24815     catalog_markf catalog_markf_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.catalog_markf
    ADD CONSTRAINT catalog_markf_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.catalog_markf DROP CONSTRAINT catalog_markf_pkey;
       public            postgres    false    266            �           2606    19230 *   catalog_markm catalog_markm_identifier_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.catalog_markm
    ADD CONSTRAINT catalog_markm_identifier_key UNIQUE (identifier);
 T   ALTER TABLE ONLY public.catalog_markm DROP CONSTRAINT catalog_markm_identifier_key;
       public            postgres    false    232            �           2606    19228     catalog_markm catalog_markm_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.catalog_markm
    ADD CONSTRAINT catalog_markm_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.catalog_markm DROP CONSTRAINT catalog_markm_pkey;
       public            postgres    false    232            ,           2606    24709 2   catalog_masonrybonding catalog_masonrybonding_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.catalog_masonrybonding
    ADD CONSTRAINT catalog_masonrybonding_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.catalog_masonrybonding DROP CONSTRAINT catalog_masonrybonding_pkey;
       public            postgres    false    260            ?           2606    24890 ,   catalog_nfsize catalog_nfsize_identifier_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.catalog_nfsize
    ADD CONSTRAINT catalog_nfsize_identifier_key UNIQUE (identifier);
 V   ALTER TABLE ONLY public.catalog_nfsize DROP CONSTRAINT catalog_nfsize_identifier_key;
       public            postgres    false    268            A           2606    24825 "   catalog_nfsize catalog_nfsize_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.catalog_nfsize
    ADD CONSTRAINT catalog_nfsize_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.catalog_nfsize DROP CONSTRAINT catalog_nfsize_pkey;
       public            postgres    false    268            �           2606    19238 V   catalog_pilegrillagefoundationworkprices catalog_pilegrillagefoundationworkprices_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_pilegrillagefoundationworkprices
    ADD CONSTRAINT catalog_pilegrillagefoundationworkprices_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.catalog_pilegrillagefoundationworkprices DROP CONSTRAINT catalog_pilegrillagefoundationworkprices_pkey;
       public            postgres    false    234            �           2606    19246    catalog_plan catalog_plan_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.catalog_plan
    ADD CONSTRAINT catalog_plan_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.catalog_plan DROP CONSTRAINT catalog_plan_pkey;
       public            postgres    false    236            N           2606    24931 >   catalog_porothermsystem catalog_porothermsystem_identifier_key 
   CONSTRAINT        ALTER TABLE ONLY public.catalog_porothermsystem
    ADD CONSTRAINT catalog_porothermsystem_identifier_key UNIQUE (identifier);
 h   ALTER TABLE ONLY public.catalog_porothermsystem DROP CONSTRAINT catalog_porothermsystem_identifier_key;
       public            postgres    false    276            P           2606    24929 4   catalog_porothermsystem catalog_porothermsystem_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.catalog_porothermsystem
    ADD CONSTRAINT catalog_porothermsystem_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.catalog_porothermsystem DROP CONSTRAINT catalog_porothermsystem_pkey;
       public            postgres    false    276            �           2606    19256 2   catalog_productbrand catalog_productbrand_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.catalog_productbrand
    ADD CONSTRAINT catalog_productbrand_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.catalog_productbrand DROP CONSTRAINT catalog_productbrand_name_key;
       public            postgres    false    238            �           2606    19254 .   catalog_productbrand catalog_productbrand_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.catalog_productbrand
    ADD CONSTRAINT catalog_productbrand_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.catalog_productbrand DROP CONSTRAINT catalog_productbrand_pkey;
       public            postgres    false    238            �           2606    19264 $   catalog_profile catalog_profile_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.catalog_profile
    ADD CONSTRAINT catalog_profile_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.catalog_profile DROP CONSTRAINT catalog_profile_pkey;
       public            postgres    false    240            �           2606    19266 +   catalog_profile catalog_profile_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.catalog_profile
    ADD CONSTRAINT catalog_profile_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.catalog_profile DROP CONSTRAINT catalog_profile_user_id_key;
       public            postgres    false    240            �           2606    19276 *   catalog_provider catalog_provider_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.catalog_provider
    ADD CONSTRAINT catalog_provider_name_key UNIQUE (name);
 T   ALTER TABLE ONLY public.catalog_provider DROP CONSTRAINT catalog_provider_name_key;
       public            postgres    false    242            �           2606    19274 &   catalog_provider catalog_provider_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.catalog_provider
    ADD CONSTRAINT catalog_provider_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.catalog_provider DROP CONSTRAINT catalog_provider_pkey;
       public            postgres    false    242                       2606    19610 c   catalog_provider_secondary_activity catalog_provider_seconda_provider_id_provideracti_2a5631df_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_secondary_activity
    ADD CONSTRAINT catalog_provider_seconda_provider_id_provideracti_2a5631df_uniq UNIQUE (provider_id, provideractivitytype_id);
 �   ALTER TABLE ONLY public.catalog_provider_secondary_activity DROP CONSTRAINT catalog_provider_seconda_provider_id_provideracti_2a5631df_uniq;
       public            postgres    false    254    254                       2606    19434 L   catalog_provider_secondary_activity catalog_provider_secondary_activity_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_secondary_activity
    ADD CONSTRAINT catalog_provider_secondary_activity_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.catalog_provider_secondary_activity DROP CONSTRAINT catalog_provider_secondary_activity_pkey;
       public            postgres    false    254            !           2606    19624 [   catalog_provider_tax_system catalog_provider_tax_sys_provider_id_taxsystemtyp_84bf5152_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_tax_system
    ADD CONSTRAINT catalog_provider_tax_sys_provider_id_taxsystemtyp_84bf5152_uniq UNIQUE (provider_id, taxsystemtype_id);
 �   ALTER TABLE ONLY public.catalog_provider_tax_system DROP CONSTRAINT catalog_provider_tax_sys_provider_id_taxsystemtyp_84bf5152_uniq;
       public            postgres    false    256    256            #           2606    19442 <   catalog_provider_tax_system catalog_provider_tax_system_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.catalog_provider_tax_system
    ADD CONSTRAINT catalog_provider_tax_system_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.catalog_provider_tax_system DROP CONSTRAINT catalog_provider_tax_system_pkey;
       public            postgres    false    256            �           2606    19286 H   catalog_provideractivitytype catalog_provideractivitytype_identifier_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provideractivitytype
    ADD CONSTRAINT catalog_provideractivitytype_identifier_key UNIQUE (identifier);
 r   ALTER TABLE ONLY public.catalog_provideractivitytype DROP CONSTRAINT catalog_provideractivitytype_identifier_key;
       public            postgres    false    244                       2606    19284 >   catalog_provideractivitytype catalog_provideractivitytype_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.catalog_provideractivitytype
    ADD CONSTRAINT catalog_provideractivitytype_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.catalog_provideractivitytype DROP CONSTRAINT catalog_provideractivitytype_pkey;
       public            postgres    false    244                       2606    19297 2   catalog_provideroutlet catalog_provideroutlet_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.catalog_provideroutlet
    ADD CONSTRAINT catalog_provideroutlet_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.catalog_provideroutlet DROP CONSTRAINT catalog_provideroutlet_pkey;
       public            postgres    false    246            ^           2606    25020 m   catalog_rockwallmaterialunit_binding_solution catalog_rockwallmaterial_rockwallmaterialunit_id__59632fb9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__59632fb9_uniq UNIQUE (rockwallmaterialunit_id, bindersolution_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__59632fb9_uniq;
       public            postgres    false    282    282            X           2606    25006 m   catalog_rockwallmaterialunit_porotherm_system catalog_rockwallmaterial_rockwallmaterialunit_id__9dae06b4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_porotherm_system
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__9dae06b4_uniq UNIQUE (rockwallmaterialunit_id, porothermsystem_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_porotherm_system DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__9dae06b4_uniq;
       public            postgres    false    280    280            .           2606    24764 e   catalog_rockwallmaterialunit_bounding catalog_rockwallmaterial_rockwallmaterialunit_id__b255f1f5_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_bounding
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__b255f1f5_uniq UNIQUE (rockwallmaterialunit_id, masonrybonding_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_bounding DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__b255f1f5_uniq;
       public            postgres    false    262    262            
           2606    19305 P   catalog_rockwallmaterialpriceposition catalog_rockwallmaterialpriceposition_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition
    ADD CONSTRAINT catalog_rockwallmaterialpriceposition_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition DROP CONSTRAINT catalog_rockwallmaterialpriceposition_pkey;
       public            postgres    false    248            b           2606    24982 `   catalog_rockwallmaterialunit_binding_solution catalog_rockwallmaterialunit_binding_solution_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution
    ADD CONSTRAINT catalog_rockwallmaterialunit_binding_solution_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution DROP CONSTRAINT catalog_rockwallmaterialunit_binding_solution_pkey;
       public            postgres    false    282            2           2606    24754 P   catalog_rockwallmaterialunit_bounding catalog_rockwallmaterialunit_bounding_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_bounding
    ADD CONSTRAINT catalog_rockwallmaterialunit_bounding_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_bounding DROP CONSTRAINT catalog_rockwallmaterialunit_bounding_pkey;
       public            postgres    false    262                       2606    19323 >   catalog_rockwallmaterialunit catalog_rockwallmaterialunit_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmaterialunit_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmaterialunit_pkey;
       public            postgres    false    250            \           2606    24974 `   catalog_rockwallmaterialunit_porotherm_system catalog_rockwallmaterialunit_porotherm_system_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_porotherm_system
    ADD CONSTRAINT catalog_rockwallmaterialunit_porotherm_system_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_porotherm_system DROP CONSTRAINT catalog_rockwallmaterialunit_porotherm_system_pkey;
       public            postgres    false    280                       2606    19373 :   catalog_taxsystemtype catalog_taxsystemtype_identifier_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.catalog_taxsystemtype
    ADD CONSTRAINT catalog_taxsystemtype_identifier_key UNIQUE (identifier);
 d   ALTER TABLE ONLY public.catalog_taxsystemtype DROP CONSTRAINT catalog_taxsystemtype_identifier_key;
       public            postgres    false    252                       2606    19371 0   catalog_taxsystemtype catalog_taxsystemtype_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.catalog_taxsystemtype
    ADD CONSTRAINT catalog_taxsystemtype_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.catalog_taxsystemtype DROP CONSTRAINT catalog_taxsystemtype_pkey;
       public            postgres    false    252            (           2606    24605 J   catalog_wallreinforcementtype catalog_wallreinforcementtype_identifier_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_wallreinforcementtype
    ADD CONSTRAINT catalog_wallreinforcementtype_identifier_key UNIQUE (identifier);
 t   ALTER TABLE ONLY public.catalog_wallreinforcementtype DROP CONSTRAINT catalog_wallreinforcementtype_identifier_key;
       public            postgres    false    258            *           2606    24603 @   catalog_wallreinforcementtype catalog_wallreinforcementtype_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.catalog_wallreinforcementtype
    ADD CONSTRAINT catalog_wallreinforcementtype_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.catalog_wallreinforcementtype DROP CONSTRAINT catalog_wallreinforcementtype_pkey;
       public            postgres    false    258            �           2606    19131 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �           2606    19015 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �           2606    19013 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �           2606    19005 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    19160 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            �           1259    19152    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �           1259    19089 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �           1259    19090 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �           1259    19075 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �           1259    19105 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            �           1259    19104 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �           1259    19119 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �           1259    19118 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �           1259    19146     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �           1259    19444    catalog_city_name_cafc1586_like    INDEX     l   CREATE INDEX catalog_city_name_cafc1586_like ON public.catalog_city USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.catalog_city_name_cafc1586_like;
       public            postgres    false    222            �           1259    19445 ,   catalog_classblight_identifier_c38e210c_like    INDEX     �   CREATE INDEX catalog_classblight_identifier_c38e210c_like ON public.catalog_classblight USING btree (identifier varchar_pattern_ops);
 @   DROP INDEX public.catalog_classblight_identifier_c38e210c_like;
       public            postgres    false    224            3           1259    24880 5   catalog_classаveragedensity_identifier_54c2b78d_like    INDEX     �   CREATE INDEX "catalog_classаveragedensity_identifier_54c2b78d_like" ON public."catalog_classаveragedensity" USING btree (identifier varchar_pattern_ops);
 K   DROP INDEX public."catalog_classаveragedensity_identifier_54c2b78d_like";
       public            postgres    false    264            �           1259    19451 '   catalog_customization_owner_id_a013684f    INDEX     m   CREATE INDEX catalog_customization_owner_id_a013684f ON public.catalog_customization USING btree (owner_id);
 ;   DROP INDEX public.catalog_customization_owner_id_a013684f;
       public            postgres    false    226            �           1259    19452 )   catalog_directproducer_name_2ecaec12_like    INDEX     z   CREATE INDEX catalog_directproducer_name_2ecaec12_like ON public.catalog_producer USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.catalog_directproducer_name_2ecaec12_like;
       public            postgres    false    228            D           1259    24988    catalog_grid_brand_id_15c96e2a    INDEX     [   CREATE INDEX catalog_grid_brand_id_15c96e2a ON public.catalog_grid USING btree (brand_id);
 2   DROP INDEX public.catalog_grid_brand_id_15c96e2a;
       public            postgres    false    272            Q           1259    25003 #   catalog_grid_usage_grid_id_ff5305cd    INDEX     e   CREATE INDEX catalog_grid_usage_grid_id_ff5305cd ON public.catalog_grid_usage USING btree (grid_id);
 7   DROP INDEX public.catalog_grid_usage_grid_id_ff5305cd;
       public            postgres    false    278            T           1259    25004 (   catalog_grid_usage_gridusage_id_d149f593    INDEX     o   CREATE INDEX catalog_grid_usage_gridusage_id_d149f593 ON public.catalog_grid_usage USING btree (gridusage_id);
 <   DROP INDEX public.catalog_grid_usage_gridusage_id_d149f593;
       public            postgres    false    278            G           1259    24989 *   catalog_gridusage_identifier_8b1a73df_like    INDEX     �   CREATE INDEX catalog_gridusage_identifier_8b1a73df_like ON public.catalog_gridusage USING btree (identifier varchar_pattern_ops);
 >   DROP INDEX public.catalog_gridusage_identifier_8b1a73df_like;
       public            postgres    false    274            �           1259    19453 &   catalog_markd_identifier_94610a4e_like    INDEX     z   CREATE INDEX catalog_markd_identifier_94610a4e_like ON public.catalog_markd USING btree (identifier varchar_pattern_ops);
 :   DROP INDEX public.catalog_markd_identifier_94610a4e_like;
       public            postgres    false    230            8           1259    24881 &   catalog_markf_identifier_82d307d0_like    INDEX     z   CREATE INDEX catalog_markf_identifier_82d307d0_like ON public.catalog_markf USING btree (identifier varchar_pattern_ops);
 :   DROP INDEX public.catalog_markf_identifier_82d307d0_like;
       public            postgres    false    266            �           1259    19454 &   catalog_markm_identifier_43ab376a_like    INDEX     z   CREATE INDEX catalog_markm_identifier_43ab376a_like ON public.catalog_markm USING btree (identifier varchar_pattern_ops);
 :   DROP INDEX public.catalog_markm_identifier_43ab376a_like;
       public            postgres    false    232            =           1259    24891 '   catalog_nfsize_identifier_1e4f6bf7_like    INDEX     |   CREATE INDEX catalog_nfsize_identifier_1e4f6bf7_like ON public.catalog_nfsize USING btree (identifier varchar_pattern_ops);
 ;   DROP INDEX public.catalog_nfsize_identifier_1e4f6bf7_like;
       public            postgres    false    268            �           1259    19460 :   catalog_pilegrillagefoundationworkprices_owner_id_a82c33db    INDEX     �   CREATE INDEX catalog_pilegrillagefoundationworkprices_owner_id_a82c33db ON public.catalog_pilegrillagefoundationworkprices USING btree (owner_id);
 N   DROP INDEX public.catalog_pilegrillagefoundationworkprices_owner_id_a82c33db;
       public            postgres    false    234            �           1259    19471    catalog_plan_author_id_19443bad    INDEX     ]   CREATE INDEX catalog_plan_author_id_19443bad ON public.catalog_plan USING btree (author_id);
 3   DROP INDEX public.catalog_plan_author_id_19443bad;
       public            postgres    false    236            �           1259    19472 &   catalog_plan_customization_id_edec0801    INDEX     k   CREATE INDEX catalog_plan_customization_id_edec0801 ON public.catalog_plan USING btree (customization_id);
 :   DROP INDEX public.catalog_plan_customization_id_edec0801;
       public            postgres    false    236            L           1259    24990 0   catalog_porothermsystem_identifier_4df45155_like    INDEX     �   CREATE INDEX catalog_porothermsystem_identifier_4df45155_like ON public.catalog_porothermsystem USING btree (identifier varchar_pattern_ops);
 D   DROP INDEX public.catalog_porothermsystem_identifier_4df45155_like;
       public            postgres    false    276            �           1259    19473 '   catalog_productbrand_name_00dd2380_like    INDEX     |   CREATE INDEX catalog_productbrand_name_00dd2380_like ON public.catalog_productbrand USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.catalog_productbrand_name_00dd2380_like;
       public            postgres    false    238            �           1259    19479 #   catalog_provider_name_23080848_like    INDEX     t   CREATE INDEX catalog_provider_name_23080848_like ON public.catalog_provider USING btree (name varchar_pattern_ops);
 7   DROP INDEX public.catalog_provider_name_23080848_like;
       public            postgres    false    242            �           1259    19608 -   catalog_provider_primary_activity_id_5ff3703d    INDEX     y   CREATE INDEX catalog_provider_primary_activity_id_5ff3703d ON public.catalog_provider USING btree (primary_activity_id);
 A   DROP INDEX public.catalog_provider_primary_activity_id_5ff3703d;
       public            postgres    false    242                       1259    19621 8   catalog_provider_secondary_activity_provider_id_1050e31c    INDEX     �   CREATE INDEX catalog_provider_secondary_activity_provider_id_1050e31c ON public.catalog_provider_secondary_activity USING btree (provider_id);
 L   DROP INDEX public.catalog_provider_secondary_activity_provider_id_1050e31c;
       public            postgres    false    254                       1259    19622 ;   catalog_provider_secondary_provideractivitytype_id_b77a182c    INDEX     �   CREATE INDEX catalog_provider_secondary_provideractivitytype_id_b77a182c ON public.catalog_provider_secondary_activity USING btree (provideractivitytype_id);
 O   DROP INDEX public.catalog_provider_secondary_provideractivitytype_id_b77a182c;
       public            postgres    false    254            $           1259    19635 0   catalog_provider_tax_system_provider_id_d0d5b87d    INDEX        CREATE INDEX catalog_provider_tax_system_provider_id_d0d5b87d ON public.catalog_provider_tax_system USING btree (provider_id);
 D   DROP INDEX public.catalog_provider_tax_system_provider_id_d0d5b87d;
       public            postgres    false    256            %           1259    19636 5   catalog_provider_tax_system_taxsystemtype_id_886b2f4c    INDEX     �   CREATE INDEX catalog_provider_tax_system_taxsystemtype_id_886b2f4c ON public.catalog_provider_tax_system USING btree (taxsystemtype_id);
 I   DROP INDEX public.catalog_provider_tax_system_taxsystemtype_id_886b2f4c;
       public            postgres    false    256            �           1259    19480 5   catalog_provideractivitytype_identifier_3b6aaeae_like    INDEX     �   CREATE INDEX catalog_provideractivitytype_identifier_3b6aaeae_like ON public.catalog_provideractivitytype USING btree (identifier varchar_pattern_ops);
 I   DROP INDEX public.catalog_provideractivitytype_identifier_3b6aaeae_like;
       public            postgres    false    244                       1259    19496 '   catalog_provideroutlet_city_id_1642bb7a    INDEX     m   CREATE INDEX catalog_provideroutlet_city_id_1642bb7a ON public.catalog_provideroutlet USING btree (city_id);
 ;   DROP INDEX public.catalog_provideroutlet_city_id_1642bb7a;
       public            postgres    false    246                       1259    19497 '   catalog_provideroutlet_name_id_da8a3b33    INDEX     m   CREATE INDEX catalog_provideroutlet_name_id_da8a3b33 ON public.catalog_provideroutlet USING btree (name_id);
 ;   DROP INDEX public.catalog_provideroutlet_name_id_da8a3b33;
       public            postgres    false    246                       1259    19498 (   catalog_provideroutlet_owner_id_496d374f    INDEX     o   CREATE INDEX catalog_provideroutlet_owner_id_496d374f ON public.catalog_provideroutlet USING btree (owner_id);
 <   DROP INDEX public.catalog_provideroutlet_owner_id_496d374f;
       public            postgres    false    246                       1259    19606 6   catalog_rockwallmaterialpriceposition_name_id_17c3a4a8    INDEX     �   CREATE INDEX catalog_rockwallmaterialpriceposition_name_id_17c3a4a8 ON public.catalog_rockwallmaterialpriceposition USING btree (name_id);
 J   DROP INDEX public.catalog_rockwallmaterialpriceposition_name_id_17c3a4a8;
       public            postgres    false    248                       1259    19607 7   catalog_rockwallmaterialpriceposition_owner_id_5cb00786    INDEX     �   CREATE INDEX catalog_rockwallmaterialpriceposition_owner_id_5cb00786 ON public.catalog_rockwallmaterialpriceposition USING btree (owner_id);
 K   DROP INDEX public.catalog_rockwallmaterialpriceposition_owner_id_5cb00786;
       public            postgres    false    248            _           1259    25032 5   catalog_rockwallmaterialun_bindersolution_id_bd578aba    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_bindersolution_id_bd578aba ON public.catalog_rockwallmaterialunit_binding_solution USING btree (bindersolution_id);
 I   DROP INDEX public.catalog_rockwallmaterialun_bindersolution_id_bd578aba;
       public            postgres    false    282            /           1259    24776 5   catalog_rockwallmaterialun_masonrybonding_id_e3d669e2    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_masonrybonding_id_e3d669e2 ON public.catalog_rockwallmaterialunit_bounding USING btree (masonrybonding_id);
 I   DROP INDEX public.catalog_rockwallmaterialun_masonrybonding_id_e3d669e2;
       public            postgres    false    262            Y           1259    25018 6   catalog_rockwallmaterialun_porothermsystem_id_b873b418    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_porothermsystem_id_b873b418 ON public.catalog_rockwallmaterialunit_porotherm_system USING btree (porothermsystem_id);
 J   DROP INDEX public.catalog_rockwallmaterialun_porothermsystem_id_b873b418;
       public            postgres    false    280            `           1259    25031 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_1ef00924    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_1ef00924 ON public.catalog_rockwallmaterialunit_binding_solution USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_1ef00924;
       public            postgres    false    282            Z           1259    25017 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_61f5bbd2    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_61f5bbd2 ON public.catalog_rockwallmaterialunit_porotherm_system USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_61f5bbd2;
       public            postgres    false    280            0           1259    24775 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_70912782    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_70912782 ON public.catalog_rockwallmaterialunit_bounding USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_70912782;
       public            postgres    false    262                       1259    24757 .   catalog_rockwallmaterialunit_brand_id_7ba15ba0    INDEX     {   CREATE INDEX catalog_rockwallmaterialunit_brand_id_7ba15ba0 ON public.catalog_rockwallmaterialunit USING btree (brand_id);
 B   DROP INDEX public.catalog_rockwallmaterialunit_brand_id_7ba15ba0;
       public            postgres    false    250                       1259    24883 >   catalog_rockwallmaterialunit_class_average_density_id_2df62284    INDEX     �   CREATE INDEX catalog_rockwallmaterialunit_class_average_density_id_2df62284 ON public.catalog_rockwallmaterialunit USING btree (class_average_density_id);
 R   DROP INDEX public.catalog_rockwallmaterialunit_class_average_density_id_2df62284;
       public            postgres    false    250                       1259    24758 0   catalog_rockwallmaterialunit_class_b_id_6acc8c19    INDEX        CREATE INDEX catalog_rockwallmaterialunit_class_b_id_6acc8c19 ON public.catalog_rockwallmaterialunit USING btree (class_b_id);
 D   DROP INDEX public.catalog_rockwallmaterialunit_class_b_id_6acc8c19;
       public            postgres    false    250                       1259    24759 /   catalog_rockwallmaterialunit_mark_d_id_4fe3b199    INDEX     }   CREATE INDEX catalog_rockwallmaterialunit_mark_d_id_4fe3b199 ON public.catalog_rockwallmaterialunit USING btree (mark_d_id);
 C   DROP INDEX public.catalog_rockwallmaterialunit_mark_d_id_4fe3b199;
       public            postgres    false    250                       1259    24884 /   catalog_rockwallmaterialunit_mark_f_id_3e515b69    INDEX     }   CREATE INDEX catalog_rockwallmaterialunit_mark_f_id_3e515b69 ON public.catalog_rockwallmaterialunit USING btree (mark_f_id);
 C   DROP INDEX public.catalog_rockwallmaterialunit_mark_f_id_3e515b69;
       public            postgres    false    250                       1259    24698 /   catalog_rockwallmaterialunit_mark_m_id_6f18e612    INDEX     }   CREATE INDEX catalog_rockwallmaterialunit_mark_m_id_6f18e612 ON public.catalog_rockwallmaterialunit USING btree (mark_m_id);
 C   DROP INDEX public.catalog_rockwallmaterialunit_mark_m_id_6f18e612;
       public            postgres    false    250                       1259    24885 0   catalog_rockwallmaterialunit_nf_size_id_f2a95573    INDEX        CREATE INDEX catalog_rockwallmaterialunit_nf_size_id_f2a95573 ON public.catalog_rockwallmaterialunit USING btree (nf_size_id);
 D   DROP INDEX public.catalog_rockwallmaterialunit_nf_size_id_f2a95573;
       public            postgres    false    250                       1259    24760 1   catalog_rockwallmaterialunit_producer_id_0ff0be1b    INDEX     �   CREATE INDEX catalog_rockwallmaterialunit_producer_id_0ff0be1b ON public.catalog_rockwallmaterialunit USING btree (producer_id);
 E   DROP INDEX public.catalog_rockwallmaterialunit_producer_id_0ff0be1b;
       public            postgres    false    250                       1259    19576 .   catalog_taxsystemtype_identifier_c4e29c1f_like    INDEX     �   CREATE INDEX catalog_taxsystemtype_identifier_c4e29c1f_like ON public.catalog_taxsystemtype USING btree (identifier varchar_pattern_ops);
 B   DROP INDEX public.catalog_taxsystemtype_identifier_c4e29c1f_like;
       public            postgres    false    252            &           1259    24629 6   catalog_wallreinforcementtype_identifier_db4fa5b4_like    INDEX     �   CREATE INDEX catalog_wallreinforcementtype_identifier_db4fa5b4_like ON public.catalog_wallreinforcementtype USING btree (identifier varchar_pattern_ops);
 J   DROP INDEX public.catalog_wallreinforcementtype_identifier_db4fa5b4_like;
       public            postgres    false    258            �           1259    19142 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            �           1259    19143 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            �           1259    19162 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            �           1259    19161 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            e           2606    19084 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    211    2982            d           2606    19079 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2987    209    211            c           2606    19070 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2977    207            g           2606    19099 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    2987    215            f           2606    19094 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2995    213    215            i           2606    19113 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2982    207    217            h           2606    19108 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    213    217    2995            l           2606    19446 M   catalog_customization catalog_customization_owner_id_a013684f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_customization
    ADD CONSTRAINT catalog_customization_owner_id_a013684f_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.catalog_customization DROP CONSTRAINT catalog_customization_owner_id_a013684f_fk_auth_user_id;
       public          postgres    false    2995    226    213            �           2606    24983 F   catalog_grid catalog_grid_brand_id_15c96e2a_fk_catalog_productbrand_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_grid
    ADD CONSTRAINT catalog_grid_brand_id_15c96e2a_fk_catalog_productbrand_id FOREIGN KEY (brand_id) REFERENCES public.catalog_productbrand(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.catalog_grid DROP CONSTRAINT catalog_grid_brand_id_15c96e2a_fk_catalog_productbrand_id;
       public          postgres    false    3058    272    238            �           2606    24993 I   catalog_grid_usage catalog_grid_usage_grid_id_ff5305cd_fk_catalog_grid_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_grid_usage
    ADD CONSTRAINT catalog_grid_usage_grid_id_ff5305cd_fk_catalog_grid_id FOREIGN KEY (grid_id) REFERENCES public.catalog_grid(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.catalog_grid_usage DROP CONSTRAINT catalog_grid_usage_grid_id_ff5305cd_fk_catalog_grid_id;
       public          postgres    false    3142    272    278            �           2606    24998 H   catalog_grid_usage catalog_grid_usage_gridusage_id_d149f593_fk_catalog_g    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_grid_usage
    ADD CONSTRAINT catalog_grid_usage_gridusage_id_d149f593_fk_catalog_g FOREIGN KEY (gridusage_id) REFERENCES public.catalog_gridusage(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.catalog_grid_usage DROP CONSTRAINT catalog_grid_usage_gridusage_id_d149f593_fk_catalog_g;
       public          postgres    false    278    3147    274            m           2606    19455 \   catalog_pilegrillagefoundationworkprices catalog_pilegrillage_owner_id_a82c33db_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_pilegrillagefoundationworkprices
    ADD CONSTRAINT catalog_pilegrillage_owner_id_a82c33db_fk_auth_user FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_pilegrillagefoundationworkprices DROP CONSTRAINT catalog_pilegrillage_owner_id_a82c33db_fk_auth_user;
       public          postgres    false    2995    234    213            n           2606    19461 <   catalog_plan catalog_plan_author_id_19443bad_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_plan
    ADD CONSTRAINT catalog_plan_author_id_19443bad_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.catalog_plan DROP CONSTRAINT catalog_plan_author_id_19443bad_fk_auth_user_id;
       public          postgres    false    236    2995    213            o           2606    19466 @   catalog_plan catalog_plan_customization_id_edec0801_fk_catalog_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_plan
    ADD CONSTRAINT catalog_plan_customization_id_edec0801_fk_catalog_c FOREIGN KEY (customization_id) REFERENCES public.catalog_customization(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.catalog_plan DROP CONSTRAINT catalog_plan_customization_id_edec0801_fk_catalog_c;
       public          postgres    false    236    3031    226            p           2606    19474 @   catalog_profile catalog_profile_user_id_7c4daf2b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_profile
    ADD CONSTRAINT catalog_profile_user_id_7c4daf2b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.catalog_profile DROP CONSTRAINT catalog_profile_user_id_7c4daf2b_fk_auth_user_id;
       public          postgres    false    213    240    2995            q           2606    19422 K   catalog_provider catalog_provider_primary_activity_id_5ff3703d_fk_catalog_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider
    ADD CONSTRAINT catalog_provider_primary_activity_id_5ff3703d_fk_catalog_p FOREIGN KEY (primary_activity_id) REFERENCES public.catalog_provideractivitytype(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.catalog_provider DROP CONSTRAINT catalog_provider_primary_activity_id_5ff3703d_fk_catalog_p;
       public          postgres    false    244    3073    242                       2606    19611 Z   catalog_provider_secondary_activity catalog_provider_sec_provider_id_1050e31c_fk_catalog_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_secondary_activity
    ADD CONSTRAINT catalog_provider_sec_provider_id_1050e31c_fk_catalog_p FOREIGN KEY (provider_id) REFERENCES public.catalog_provider(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_provider_secondary_activity DROP CONSTRAINT catalog_provider_sec_provider_id_1050e31c_fk_catalog_p;
       public          postgres    false    3067    242    254            �           2606    19616 c   catalog_provider_secondary_activity catalog_provider_sec_provideractivitytype_b77a182c_fk_catalog_p    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_provider_secondary_activity
    ADD CONSTRAINT catalog_provider_sec_provideractivitytype_b77a182c_fk_catalog_p FOREIGN KEY (provideractivitytype_id) REFERENCES public.catalog_provideractivitytype(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_provider_secondary_activity DROP CONSTRAINT catalog_provider_sec_provideractivitytype_b77a182c_fk_catalog_p;
       public          postgres    false    244    3073    254            �           2606    19625 R   catalog_provider_tax_system catalog_provider_tax_provider_id_d0d5b87d_fk_catalog_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_tax_system
    ADD CONSTRAINT catalog_provider_tax_provider_id_d0d5b87d_fk_catalog_p FOREIGN KEY (provider_id) REFERENCES public.catalog_provider(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.catalog_provider_tax_system DROP CONSTRAINT catalog_provider_tax_provider_id_d0d5b87d_fk_catalog_p;
       public          postgres    false    242    3067    256            �           2606    19630 W   catalog_provider_tax_system catalog_provider_tax_taxsystemtype_id_886b2f4c_fk_catalog_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_tax_system
    ADD CONSTRAINT catalog_provider_tax_taxsystemtype_id_886b2f4c_fk_catalog_t FOREIGN KEY (taxsystemtype_id) REFERENCES public.catalog_taxsystemtype(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_provider_tax_system DROP CONSTRAINT catalog_provider_tax_taxsystemtype_id_886b2f4c_fk_catalog_t;
       public          postgres    false    3097    252    256            r           2606    19481 Q   catalog_provideroutlet catalog_provideroutlet_city_id_1642bb7a_fk_catalog_city_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provideroutlet
    ADD CONSTRAINT catalog_provideroutlet_city_id_1642bb7a_fk_catalog_city_id FOREIGN KEY (city_id) REFERENCES public.catalog_city(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.catalog_provideroutlet DROP CONSTRAINT catalog_provideroutlet_city_id_1642bb7a_fk_catalog_city_id;
       public          postgres    false    3023    246    222            s           2606    19486 U   catalog_provideroutlet catalog_provideroutlet_name_id_da8a3b33_fk_catalog_provider_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provideroutlet
    ADD CONSTRAINT catalog_provideroutlet_name_id_da8a3b33_fk_catalog_provider_id FOREIGN KEY (name_id) REFERENCES public.catalog_provider(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.catalog_provideroutlet DROP CONSTRAINT catalog_provideroutlet_name_id_da8a3b33_fk_catalog_provider_id;
       public          postgres    false    3067    242    246            t           2606    19491 O   catalog_provideroutlet catalog_provideroutlet_owner_id_496d374f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provideroutlet
    ADD CONSTRAINT catalog_provideroutlet_owner_id_496d374f_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.catalog_provideroutlet DROP CONSTRAINT catalog_provideroutlet_owner_id_496d374f_fk_auth_user_id;
       public          postgres    false    2995    213    246            �           2606    25026 j   catalog_rockwallmaterialunit_binding_solution catalog_rockwallmate_bindersolution_id_bd578aba_fk_catalog_b    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution
    ADD CONSTRAINT catalog_rockwallmate_bindersolution_id_bd578aba_fk_catalog_b FOREIGN KEY (bindersolution_id) REFERENCES public.catalog_bindersolution(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution DROP CONSTRAINT catalog_rockwallmate_bindersolution_id_bd578aba_fk_catalog_b;
       public          postgres    false    282    270    3139            ~           2606    24942 P   catalog_rockwallmaterialunit catalog_rockwallmate_brand_id_7ba15ba0_fk_catalog_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmate_brand_id_7ba15ba0_fk_catalog_p FOREIGN KEY (brand_id) REFERENCES public.catalog_productbrand(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmate_brand_id_7ba15ba0_fk_catalog_p;
       public          postgres    false    250    238    3058            z           2606    24860 \   catalog_rockwallmaterialunit catalog_rockwallmate_class_average_densit_2df62284_fk_catalog_c    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmate_class_average_densit_2df62284_fk_catalog_c FOREIGN KEY (class_average_density_id) REFERENCES public."catalog_classаveragedensity"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmate_class_average_densit_2df62284_fk_catalog_c;
       public          postgres    false    264    250    3127            x           2606    24722 R   catalog_rockwallmaterialunit catalog_rockwallmate_class_b_id_6acc8c19_fk_catalog_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmate_class_b_id_6acc8c19_fk_catalog_c FOREIGN KEY (class_b_id) REFERENCES public.catalog_classblight(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmate_class_b_id_6acc8c19_fk_catalog_c;
       public          postgres    false    3028    224    250            y           2606    24727 Q   catalog_rockwallmaterialunit catalog_rockwallmate_mark_d_id_4fe3b199_fk_catalog_m    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmate_mark_d_id_4fe3b199_fk_catalog_m FOREIGN KEY (mark_d_id) REFERENCES public.catalog_markd(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmate_mark_d_id_4fe3b199_fk_catalog_m;
       public          postgres    false    250    230    3041            {           2606    24865 Q   catalog_rockwallmaterialunit catalog_rockwallmate_mark_f_id_3e515b69_fk_catalog_m    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmate_mark_f_id_3e515b69_fk_catalog_m FOREIGN KEY (mark_f_id) REFERENCES public.catalog_markf(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmate_mark_f_id_3e515b69_fk_catalog_m;
       public          postgres    false    3132    250    266            w           2606    24693 Q   catalog_rockwallmaterialunit catalog_rockwallmate_mark_m_id_6f18e612_fk_catalog_m    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmate_mark_m_id_6f18e612_fk_catalog_m FOREIGN KEY (mark_m_id) REFERENCES public.catalog_markm(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmate_mark_m_id_6f18e612_fk_catalog_m;
       public          postgres    false    232    3046    250            �           2606    24788 b   catalog_rockwallmaterialunit_bounding catalog_rockwallmate_masonrybonding_id_e3d669e2_fk_catalog_m    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_bounding
    ADD CONSTRAINT catalog_rockwallmate_masonrybonding_id_e3d669e2_fk_catalog_m FOREIGN KEY (masonrybonding_id) REFERENCES public.catalog_masonrybonding(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_bounding DROP CONSTRAINT catalog_rockwallmate_masonrybonding_id_e3d669e2_fk_catalog_m;
       public          postgres    false    3116    260    262            u           2606    19412 X   catalog_rockwallmaterialpriceposition catalog_rockwallmate_name_id_17c3a4a8_fk_catalog_r    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition
    ADD CONSTRAINT catalog_rockwallmate_name_id_17c3a4a8_fk_catalog_r FOREIGN KEY (name_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition DROP CONSTRAINT catalog_rockwallmate_name_id_17c3a4a8_fk_catalog_r;
       public          postgres    false    3091    250    248            |           2606    24870 R   catalog_rockwallmaterialunit catalog_rockwallmate_nf_size_id_f2a95573_fk_catalog_n    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmate_nf_size_id_f2a95573_fk_catalog_n FOREIGN KEY (nf_size_id) REFERENCES public.catalog_nfsize(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmate_nf_size_id_f2a95573_fk_catalog_n;
       public          postgres    false    268    3137    250            v           2606    19417 Y   catalog_rockwallmaterialpriceposition catalog_rockwallmate_owner_id_5cb00786_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition
    ADD CONSTRAINT catalog_rockwallmate_owner_id_5cb00786_fk_auth_user FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition DROP CONSTRAINT catalog_rockwallmate_owner_id_5cb00786_fk_auth_user;
       public          postgres    false    248    213    2995            �           2606    25012 k   catalog_rockwallmaterialunit_porotherm_system catalog_rockwallmate_porothermsystem_id_b873b418_fk_catalog_p    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_porotherm_system
    ADD CONSTRAINT catalog_rockwallmate_porothermsystem_id_b873b418_fk_catalog_p FOREIGN KEY (porothermsystem_id) REFERENCES public.catalog_porothermsystem(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_porotherm_system DROP CONSTRAINT catalog_rockwallmate_porothermsystem_id_b873b418_fk_catalog_p;
       public          postgres    false    3152    276    280            }           2606    24932 S   catalog_rockwallmaterialunit catalog_rockwallmate_producer_id_0ff0be1b_fk_catalog_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmate_producer_id_0ff0be1b_fk_catalog_p FOREIGN KEY (producer_id) REFERENCES public.catalog_producer(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmate_producer_id_0ff0be1b_fk_catalog_p;
       public          postgres    false    3036    250    228            �           2606    25021 m   catalog_rockwallmaterialunit_binding_solution catalog_rockwallmate_rockwallmaterialunit_1ef00924_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_1ef00924_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_1ef00924_fk_catalog_r;
       public          postgres    false    3091    282    250            �           2606    25007 m   catalog_rockwallmaterialunit_porotherm_system catalog_rockwallmate_rockwallmaterialunit_61f5bbd2_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_porotherm_system
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_61f5bbd2_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_porotherm_system DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_61f5bbd2_fk_catalog_r;
       public          postgres    false    250    280    3091            �           2606    24793 e   catalog_rockwallmaterialunit_bounding catalog_rockwallmate_rockwallmaterialunit_70912782_fk_catalog_r    FK CONSTRAINT     	  ALTER TABLE ONLY public.catalog_rockwallmaterialunit_bounding
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_70912782_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_bounding DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_70912782_fk_catalog_r;
       public          postgres    false    250    262    3091            j           2606    19132 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2977    219    205            k           2606    19137 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    213    2995                  x������ � �            x������ � �         %	  x��Zێ�T}����eOn� �� $�&���$��2<M/�P$���xNK���f~��#���{��ˌ3�%�,���m�˱k}�/:ufѡ,���r-��S���{����CɯJ���i0R�_��}��{&�(A�³e��$	���C��/�u��w;��1�r�`G���>ܸ��0�VK�C���Q����/q�O��Q�^���g��`��������O��_�y	�S�
��K����~F���aay-RX5'=ZV=P_�olwD1��!�S����{{���eX��:	��a���c���(?��%L�W��^/A�U)wz�,{���������['�̏���uv������'���d'��Z��!�_.g��O�����i՘3;E[3�ib���m͋3�X���	�KGP ����:w򯥙����}�����g���q��p�x�Hw#T�Y�dЍSMc���F7F��*_�2��0�b^Yc��q4]M�[������Ղ��L�\k2�=b`)�:���?�&{	�V;�8��-Ɛ��4����+���yzl�e��j����{l�ڞ��']6Z|��F<�ߗg$b�.-�x$�~�s�9f��#o�0G�9���[����DI�v�H6�+xN�����TuÕy�4��I*��}.�]�D��\?����3I�tv�ĩ4	�j�Q����Rhh�e��>ɟhvX�����0��A�O��n������nE^*I?Wӭ�K��ʺ�֪n����I]�E�-�k�z��ظ��ա�re֗��'GI�%�⮄��sN��]9���TԻ2J�|D����_g/!�e���&�ޯ����k�y<؊�دv�G��8�=jh�؊��K{@"�SE�%�+s�	�X{���q<20�N�G՟�d��~sT�1m �� �>|x$6���jF��كAk�o 2VQs[#~��z�k���تi�޿����9?v��*�~#UmH��oM��<0I!���i~�C��[Q��n���Vv�\�ۡ���\�vD�չ|�\�G�Dfn�j�@5i
���Ī�+,UY��+ܰ����^�����D���J\�ڣ�ZXx0�L��"�����X��N/`��Ј b�d�;��Irk�N�ׯ.TZ�(W�.lZ)��.\R*)Q̟D6���+�W]���4n�^�VV����nIߠ�W�--4(��@5wK�ڳ/ى�]pa9w	OђHez^�4/�p,�$�^Ƙ��U�kpr����a*N��W1�N��G�b����Q�!Hl�;;V�I��K\��v�#H��
+A��Փ��2��q8����A����E��$��F2�s/tvq�#F�sGtjr�#,m߹2���	�~F�3Y��Z�^P��`!�����8�=����&U�z���<�B6�<��؂����76��	3����zc2�H\~^>`�dͰ��ă��Ӈ@ByD5�z�J(�Pn$	3�C"���!KbN�R���( `/EMO�Z,e���j�@�"*KET��\�F����%�7��B��������K,N`+�Z�V���#�f+���[�*�6���Z�~������W��צ��%%��Y�I�m�lmԑ�v�Z�⋚4c\� L��,�l��\��q�2��Q�nh�!Ũ���&ks����yF�Dy�̱<_�-���Gq.�x̋�M׼`hg"�Fud�}C;�.�!��U�3UqOTGD"�B��m��4]��%V1��B��#�4��*3��ѭh1�@ȣFg΢"5hy��L[T�-�F�IU�kP��U����`{�����n`w��f�W����nC"5�襹�%qG^ZW�yt�HM�*5�w���JK" i��V}�SE#S"E�|dy^�9�]�z�i�*�Q�����q�Q�v4$���o�_�'����\����[<�cH�jT�4 ����M��i~�W6�r*�pG�Z6��.ʕs������Z�b�-�_�:����\�ߦ#M���;ަ/M-��v��6=�oӖ~��D�)Hyt^ʵhƓ�@t�12����j�c0S�g;�T�3��j�ہ��<���o�jrk0ԧ+%�xmyC��.���e�*��C�И!,��C������y"��9n��hm4��TT��M����K�y7م半���[�k\����m�G�]#���x�KS�"iC���$)s>��(��s�So<�/�3�^�7r�@������Nw*t-�d�?P��w�y�7l�L\�^�#{���;��|�m3|�ݧwd#���'�ٶ�?=Y         �   x�-��
�@@���S�p'��?g��d��e#DS�)y����Eg{�(z\��硴 �K�r�Q�
ޭv�n�&ﻍvѺ��<�c,3Y|^i(aȮ�-m�P�q?C@��|�Jx ��Fd�jB 4��[݃�9��O�ڡ�pn�
�u8Q|
0�?r�,<            x������ � �            x������ � �      N      x������ � �            x������ � �             x������ � �      H      x������ � �      "      x������ � �      P      x������ � �      V      x������ � �      R      x������ � �      &      x������ � �      J      x������ � �      (      x������ � �      D   L   x�3估���{�.6\�p��bӅM�]lP�V����֋MzAԅ]6p&���p榖$�p��W� V�"7      L   $   x�3�4�0��N#SNC#N3SNü4�=... t��      *      x������ � �      ,      x�3��K-W(�I����4\1z\\\ O$�      T      x������ � �      $      x������ � �      .      x������ � �      0      x������ � �      2      x������ � �      >      x������ � �      @      x������ � �      4      x������ � �      6      x������ � �      8      x������ � �      :      x������ � �      Z      x������ � �      F      x������ � �      X      x������ � �      <      x������ � �      B      x������ � �         �  x����j�@���SY�$柋��ݷ�8��_TC!���.�*ݔB�(��$4$��y����NEnH��,�s��g��3�� 8%
V�U&"���|����:���'��_�I~�O�e���[7x�@�Y�mm��^����:�gy����v��#;���"n#h�r�Pa��9j�Ӡ���A�p������b�$k{��V:�o�"�VbhE���bQ)&�b�qE9�� &"��|�
Ǹg�$�Le�Qt�/H����B'u�d��6�?6��hƎq�j&�֥f�ȫ'�5�[#���:6Gv|�-��0%�f�pLW`�T�V��|��"�����c�����T� WkD2�s�o�x�$��/����*|��w���V<�?��3#�yL�@^��:�[��PZ��1ph3v;��͟�p]eq�ˢ�p��v�8A�{R����e�O�?�?Hs��nt�
>d��ʥ�v�S���O�����C��lo�e����b=U��ϔY
�k0�<=O�t��dC�|3[.��^hxK-p�e�P�0?��8p�N8fS�2	���+񊒲11���=�J��(�h�	�*��0�[�d��6�^�V���/,c�4آ��}��؊!�%�B��kh6"/i���%��A         �  x�uSQr� ���	Ф�]�C0v4�@��=�;J�Tٞ������"��z�sA6��Km��� }
%���	��	>3-���:�SCvf��^���:���!�zG?�s��6�v�o�TL�-&���-���I�v��
B<��"Z���ܰ�I��7��\F<W��G#e;,����~ ��ÝP��D�,s]OG��Щ%��*u̩��a� �l�i�����A���#��n>&46�y�
��>�s��](��t�3��L!�US(���=�*Lt��0��*rF�JQpe"�j˷�vMp.|>y=XP��g�E߅d��k>%V
R�i<ߢ�Aɭ���o�޶�ӴN�6�w��6������{�<������Q���AU�f�z�ą�AP��R����W��	 ~ �MX�         K  x���ݎ�8F��O1��F�r��gY�r:��@��d�~�&Ca7#�ґHʟO�p컩��v�ǃ|�5S�
���}YR�+� ��_B��!\���+���T���P���u�Se�	=Jз��n~�������{�j�A� a5E�z0��u>����gN���o���.Ki^wd駸�w7�>^�]8׻(0(��(��>�S=�K=��q�-�z?}[w'��.�Z)X���u��>��}EAp$RNn�PN����2�ǃ3ĂP9���oxa�vo����,��~�6Òn�����!�8L��COso�{h�*L�0�ͯ�����p��}�� ir���l^�,�v4GD�=E�G(k���R�Q ���_/�!c���`�_/�P�/C����YKz�������M�g���1L����"E����¥*�W�|
��`= _���@	�D(���K� ���Ϗжg^���?�m۳u�MA~��-�KX�e�5ٴ�K۾��
�1i
Eh ���� Q� �DS
Q8Pb�9@oD�PI�(�2:(�'�R�R���p*��*�g��,�/�d�Hc�k� nP�^�*�JP�fC� &Ĺ��`JI��Yd̕�y���[E�l���Ua�/ͯzKu%���&n.-<I�$l �Ӆ@t&Y/siAnZ��եpQ����������(� ��q$g@�'�-��� ȷ�[#����������o*>כϦ6�
K�#ݹ�S�v��6 ɮ |�ؘ!	���I�vrj�0��p�軪�N��
���q��k|1X�D]�(������T܍x��"v#L�e,��D�����ۿ�&�U         A  x����n�@��u�
��f�a�1��3���n8�8x�����Ut�&ߗ����Սd��k���m��C;�y�ޘ[*�.��Jְm����<h��z;CL�:.���J�HR����4e�9%V��$��8k�|�	,��k�2a�PD�]�|y�wn�|�Z�ȏ�.��;O"���_Wt��Q�"h8|���jT�ݒ�D]MS@�o�T�kL[ԣ���iL5���]ǵ\�l��W��T��Do� M����Sl�,p��,�Հ���~��[�.NђGVO�jͤ�O�Ӂ30QO�hl�'����0����     