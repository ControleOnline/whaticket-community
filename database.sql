PGDMP                     	    {         	   whaticket    14.8    15.4 &   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    23484 	   whaticket    DATABASE     u   CREATE DATABASE whaticket WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE whaticket;
                chat    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                chat    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   chat    false    6                        3079    23490 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false    6            �           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    2                       1259    24042    Announcements    TABLE     b  CREATE TABLE public."Announcements" (
    id integer NOT NULL,
    priority integer,
    title character varying(255) NOT NULL,
    text text NOT NULL,
    "mediaPath" text,
    "mediaName" text,
    "companyId" integer NOT NULL,
    status boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."Announcements";
       public         heap    chat    false    6                       1259    24041    Announcements_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Announcements_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Announcements_id_seq";
       public          chat    false    6    282            �           0    0    Announcements_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Announcements_id_seq" OWNED BY public."Announcements".id;
          public          chat    false    281                       1259    23916    Baileys    TABLE     �   CREATE TABLE public."Baileys" (
    id integer NOT NULL,
    "whatsappId" integer NOT NULL,
    contacts text,
    chats text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Baileys";
       public         heap    chat    false    6                       1259    23915    Baileys_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Baileys_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Baileys_id_seq";
       public          chat    false    6    269            �           0    0    Baileys_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Baileys_id_seq" OWNED BY public."Baileys".id;
          public          chat    false    268                       1259    23992    CampaignSettings    TABLE     �   CREATE TABLE public."CampaignSettings" (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    value text,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."CampaignSettings";
       public         heap    chat    false    6                       1259    23991    CampaignSettings_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CampaignSettings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."CampaignSettings_id_seq";
       public          chat    false    6    277            �           0    0    CampaignSettings_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."CampaignSettings_id_seq" OWNED BY public."CampaignSettings".id;
          public          chat    false    276                       1259    24013    CampaignShipping    TABLE       CREATE TABLE public."CampaignShipping" (
    id integer NOT NULL,
    "jobId" character varying(255),
    number character varying(255) NOT NULL,
    message text NOT NULL,
    "confirmationMessage" text,
    confirmation boolean,
    "contactId" integer,
    "campaignId" integer NOT NULL,
    "confirmationRequestedAt" timestamp with time zone,
    "confirmedAt" timestamp with time zone,
    "deliveredAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."CampaignShipping";
       public         heap    chat    false    6                       1259    24012    CampaignShipping_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CampaignShipping_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."CampaignShipping_id_seq";
       public          chat    false    280    6            �           0    0    CampaignShipping_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."CampaignShipping_id_seq" OWNED BY public."CampaignShipping".id;
          public          chat    false    279                       1259    23957 	   Campaigns    TABLE     �  CREATE TABLE public."Campaigns" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    message1 text DEFAULT ''::text,
    message2 text DEFAULT ''::text,
    message3 text DEFAULT ''::text,
    message4 text DEFAULT ''::text,
    message5 text DEFAULT ''::text,
    "confirmationMessage1" text DEFAULT ''::text,
    "confirmationMessage2" text DEFAULT ''::text,
    "confirmationMessage3" text DEFAULT ''::text,
    "confirmationMessage4" text DEFAULT ''::text,
    "confirmationMessage5" text DEFAULT ''::text,
    status character varying(255),
    confirmation boolean DEFAULT false,
    "mediaPath" text,
    "mediaName" text,
    "companyId" integer NOT NULL,
    "contactListId" integer,
    "whatsappId" integer,
    "scheduledAt" timestamp with time zone,
    "completedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Campaigns";
       public         heap    chat    false    6                       1259    23956    Campaigns_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Campaigns_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Campaigns_id_seq";
       public          chat    false    275    6            �           0    0    Campaigns_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Campaigns_id_seq" OWNED BY public."Campaigns".id;
          public          chat    false    274                        1259    24095    ChatMessages    TABLE     5  CREATE TABLE public."ChatMessages" (
    id integer NOT NULL,
    "chatId" integer NOT NULL,
    "senderId" integer NOT NULL,
    message text DEFAULT ''::text,
    "mediaPath" text,
    "mediaName" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."ChatMessages";
       public         heap    chat    false    6                       1259    24094    ChatMessages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatMessages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ChatMessages_id_seq";
       public          chat    false    288    6            �           0    0    ChatMessages_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ChatMessages_id_seq" OWNED BY public."ChatMessages".id;
          public          chat    false    287                       1259    24077 	   ChatUsers    TABLE        CREATE TABLE public."ChatUsers" (
    id integer NOT NULL,
    "chatId" integer NOT NULL,
    "userId" integer NOT NULL,
    unreads integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."ChatUsers";
       public         heap    chat    false    6                       1259    24076    ChatUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."ChatUsers_id_seq";
       public          chat    false    286    6            �           0    0    ChatUsers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."ChatUsers_id_seq" OWNED BY public."ChatUsers".id;
          public          chat    false    285                       1259    24056    Chats    TABLE     Y  CREATE TABLE public."Chats" (
    id integer NOT NULL,
    title text DEFAULT ''::text,
    uuid character varying(255) DEFAULT ''::character varying,
    "ownerId" integer NOT NULL,
    "lastMessage" text,
    "companyId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Chats";
       public         heap    chat    false    6                       1259    24055    Chats_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Chats_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Chats_id_seq";
       public          chat    false    6    284            �           0    0    Chats_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Chats_id_seq" OWNED BY public."Chats".id;
          public          chat    false    283            �            1259    23650 	   Companies    TABLE     �  CREATE TABLE public."Companies" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    phone character varying(255),
    email character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "planId" integer,
    status boolean DEFAULT true,
    schedules jsonb DEFAULT '[]'::jsonb,
    "dueDate" timestamp with time zone,
    recurrence character varying(255) DEFAULT ''::character varying
);
    DROP TABLE public."Companies";
       public         heap    chat    false    6            �            1259    23649    Companies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Companies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Companies_id_seq";
       public          chat    false    248    6            �           0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
          public          chat    false    247            �            1259    23570    ContactCustomFields    TABLE     $  CREATE TABLE public."ContactCustomFields" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    "contactId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 )   DROP TABLE public."ContactCustomFields";
       public         heap    chat    false    6            �            1259    23569    ContactCustomFields_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ContactCustomFields_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."ContactCustomFields_id_seq";
       public          chat    false    6    241            �           0    0    ContactCustomFields_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."ContactCustomFields_id_seq" OWNED BY public."ContactCustomFields".id;
          public          chat    false    240                       1259    23937    ContactListItems    TABLE     �  CREATE TABLE public."ContactListItems" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    number character varying(255) NOT NULL,
    email character varying(255),
    "contactListId" integer NOT NULL,
    "isWhatsappValid" boolean DEFAULT false,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."ContactListItems";
       public         heap    chat    false    6                       1259    23936    ContactListItems_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ContactListItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ContactListItems_id_seq";
       public          chat    false    6    273            �           0    0    ContactListItems_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ContactListItems_id_seq" OWNED BY public."ContactListItems".id;
          public          chat    false    272                       1259    23925    ContactLists    TABLE     �   CREATE TABLE public."ContactLists" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."ContactLists";
       public         heap    chat    false    6                       1259    23924    ContactLists_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ContactLists_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ContactLists_id_seq";
       public          chat    false    271    6            �           0    0    ContactLists_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ContactLists_id_seq" OWNED BY public."ContactLists".id;
          public          chat    false    270            �            1259    23513    Contacts    TABLE     �  CREATE TABLE public."Contacts" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    number character varying(255) NOT NULL,
    "profilePicUrl" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    "isGroup" boolean DEFAULT false NOT NULL,
    "companyId" integer,
    channel text DEFAULT 'whatsapp'::text
);
    DROP TABLE public."Contacts";
       public         heap    chat    false    6            �            1259    23512    Contacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Contacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Contacts_id_seq";
       public          chat    false    234    6            �           0    0    Contacts_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Contacts_id_seq" OWNED BY public."Contacts".id;
          public          chat    false    233                        1259    23752    Helps    TABLE       CREATE TABLE public."Helps" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    video character varying(255),
    link text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Helps";
       public         heap    chat    false    6            �            1259    23751    Helps_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Helps_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Helps_id_seq";
       public          chat    false    6    256            �           0    0    Helps_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Helps_id_seq" OWNED BY public."Helps".id;
          public          chat    false    255            $           1259    24136    Invoices    TABLE     C  CREATE TABLE public."Invoices" (
    id integer NOT NULL,
    detail character varying(255),
    status character varying(255),
    value double precision,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "dueDate" character varying(255),
    "companyId" integer
);
    DROP TABLE public."Invoices";
       public         heap    chat    false    6            #           1259    24135    Invoices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Invoices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Invoices_id_seq";
       public          chat    false    292    6            �           0    0    Invoices_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Invoices_id_seq" OWNED BY public."Invoices".id;
          public          chat    false    291            �            1259    23541    Messages    TABLE     �  CREATE TABLE public."Messages" (
    id character varying(255) NOT NULL,
    body text NOT NULL,
    ack integer DEFAULT 0 NOT NULL,
    read boolean DEFAULT false NOT NULL,
    "mediaType" character varying(255),
    "mediaUrl" character varying(255),
    "ticketId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "fromMe" boolean DEFAULT false NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "contactId" integer,
    "quotedMsgId" character varying(255),
    "companyId" integer,
    "remoteJid" text,
    "dataJson" text,
    participant text,
    "queueId" integer,
    channel text DEFAULT 'whatsapp'::text
);
    DROP TABLE public."Messages";
       public         heap    chat    false    6            �            1259    23696    Plans    TABLE     I  CREATE TABLE public."Plans" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    users integer DEFAULT 0,
    connections integer DEFAULT 0,
    queues integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    value integer DEFAULT 199.99
);
    DROP TABLE public."Plans";
       public         heap    chat    false    6            �            1259    23695    Plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Plans_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Plans_id_seq";
       public          chat    false    6    250            �           0    0    Plans_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Plans_id_seq" OWNED BY public."Plans".id;
          public          chat    false    249                       1259    23829    QueueOptions    TABLE     #  CREATE TABLE public."QueueOptions" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    message text,
    option text,
    "queueId" integer,
    "parentId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."QueueOptions";
       public         heap    chat    false    6                       1259    23828    QueueOptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."QueueOptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."QueueOptions_id_seq";
       public          chat    false    6    262            �           0    0    QueueOptions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."QueueOptions_id_seq" OWNED BY public."QueueOptions".id;
          public          chat    false    261            �            1259    23622    Queues    TABLE     q  CREATE TABLE public."Queues" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    color character varying(255) NOT NULL,
    "greetingMessage" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "companyId" integer,
    schedules jsonb DEFAULT '[]'::jsonb,
    "outOfHoursMessage" text
);
    DROP TABLE public."Queues";
       public         heap    chat    false    6            �            1259    23621    Queues_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Queues_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Queues_id_seq";
       public          chat    false    244    6            �           0    0    Queues_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Queues_id_seq" OWNED BY public."Queues".id;
          public          chat    false    243            �            1259    23737    QuickMessages    TABLE       CREATE TABLE public."QuickMessages" (
    id integer NOT NULL,
    shortcode character varying(255) NOT NULL,
    message text,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
 #   DROP TABLE public."QuickMessages";
       public         heap    chat    false    6            �            1259    23736    QuickMessages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."QuickMessages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."QuickMessages_id_seq";
       public          chat    false    254    6            �           0    0    QuickMessages_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."QuickMessages_id_seq" OWNED BY public."QuickMessages".id;
          public          chat    false    253                       1259    23854 	   Schedules    TABLE     �  CREATE TABLE public."Schedules" (
    id integer NOT NULL,
    body text NOT NULL,
    "sendAt" timestamp with time zone,
    "sentAt" timestamp with time zone,
    "contactId" integer,
    "ticketId" integer,
    "userId" integer,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying(255)
);
    DROP TABLE public."Schedules";
       public         heap    chat    false    6                       1259    23853    Schedules_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Schedules_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Schedules_id_seq";
       public          chat    false    264    6            �           0    0    Schedules_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Schedules_id_seq" OWNED BY public."Schedules".id;
          public          chat    false    263            �            1259    23485    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    chat    false    6            �            1259    23586    Settings    TABLE     �   CREATE TABLE public."Settings" (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "companyId" integer,
    id integer NOT NULL
);
    DROP TABLE public."Settings";
       public         heap    chat    false    6                       1259    24005    Settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Settings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Settings_id_seq";
       public          chat    false    242    6            �           0    0    Settings_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Settings_id_seq" OWNED BY public."Settings".id;
          public          chat    false    278            "           1259    24121    Subscriptions    TABLE     �  CREATE TABLE public."Subscriptions" (
    id integer NOT NULL,
    "isActive" boolean DEFAULT false,
    "expiresAt" timestamp with time zone NOT NULL,
    "userPriceCents" integer,
    "whatsPriceCents" integer,
    "lastInvoiceUrl" character varying(255),
    "lastPlanChange" timestamp with time zone,
    "companyId" integer,
    "providerSubscriptionId" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."Subscriptions";
       public         heap    chat    false    6            !           1259    24120    Subscriptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Subscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Subscriptions_id_seq";
       public          chat    false    6    290            �           0    0    Subscriptions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Subscriptions_id_seq" OWNED BY public."Subscriptions".id;
          public          chat    false    289            
           1259    23888    Tags    TABLE       CREATE TABLE public."Tags" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    color character varying(255),
    "companyId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Tags";
       public         heap    chat    false    6            	           1259    23887    Tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Tags_id_seq";
       public          chat    false    266    6            �           0    0    Tags_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Tags_id_seq" OWNED BY public."Tags".id;
          public          chat    false    265            �            1259    23715    TicketNotes    TABLE       CREATE TABLE public."TicketNotes" (
    id integer NOT NULL,
    note character varying(255) NOT NULL,
    "userId" integer,
    "contactId" integer NOT NULL,
    "ticketId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."TicketNotes";
       public         heap    chat    false    6            �            1259    23714    TicketNotes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TicketNotes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."TicketNotes_id_seq";
       public          chat    false    252    6            �           0    0    TicketNotes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."TicketNotes_id_seq" OWNED BY public."TicketNotes".id;
          public          chat    false    251                       1259    23901 
   TicketTags    TABLE     �   CREATE TABLE public."TicketTags" (
    "ticketId" integer NOT NULL,
    "tagId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."TicketTags";
       public         heap    chat    false    6                       1259    23763    TicketTraking    TABLE     �  CREATE TABLE public."TicketTraking" (
    id integer NOT NULL,
    "ticketId" integer,
    "companyId" integer,
    "whatsappId" integer,
    "userId" integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "queuedAt" timestamp with time zone,
    "startedAt" timestamp with time zone,
    "finishedAt" timestamp with time zone,
    "ratingAt" timestamp with time zone,
    rated boolean DEFAULT false
);
 #   DROP TABLE public."TicketTraking";
       public         heap    chat    false    6                       1259    23762    TicketTraking_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TicketTraking_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."TicketTraking_id_seq";
       public          chat    false    258    6            �           0    0    TicketTraking_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."TicketTraking_id_seq" OWNED BY public."TicketTraking".id;
          public          chat    false    257            �            1259    23522    Tickets    TABLE     |  CREATE TABLE public."Tickets" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    "lastMessage" text DEFAULT ''::text,
    "contactId" integer,
    "userId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "whatsappId" integer,
    "isGroup" boolean DEFAULT false NOT NULL,
    "unreadMessages" integer,
    "queueId" integer,
    "companyId" integer,
    uuid uuid DEFAULT public.uuid_generate_v4(),
    chatbot boolean DEFAULT false,
    "queueOptionId" integer,
    channel text DEFAULT 'whatsapp'::text
);
    DROP TABLE public."Tickets";
       public         heap    chat    false    2    6    6            �            1259    23521    Tickets_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tickets_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Tickets_id_seq";
       public          chat    false    6    236            �           0    0    Tickets_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Tickets_id_seq" OWNED BY public."Tickets".id;
          public          chat    false    235            �            1259    23644 
   UserQueues    TABLE     �   CREATE TABLE public."UserQueues" (
    "userId" integer NOT NULL,
    "queueId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."UserQueues";
       public         heap    chat    false    6                       1259    23791    UserRatings    TABLE     �   CREATE TABLE public."UserRatings" (
    id integer NOT NULL,
    "ticketId" integer,
    "companyId" integer,
    "userId" integer,
    rate integer DEFAULT 0,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 !   DROP TABLE public."UserRatings";
       public         heap    chat    false    6                       1259    23790    UserRatings_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserRatings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."UserRatings_id_seq";
       public          chat    false    6    260            �           0    0    UserRatings_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."UserRatings_id_seq" OWNED BY public."UserRatings".id;
          public          chat    false    259            �            1259    23502    Users    TABLE       CREATE TABLE public."Users" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    "passwordHash" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    profile character varying(255) DEFAULT 'admin'::character varying NOT NULL,
    "tokenVersion" integer DEFAULT 0 NOT NULL,
    "companyId" integer,
    super boolean DEFAULT false,
    online boolean DEFAULT false
);
    DROP TABLE public."Users";
       public         heap    chat    false    6            �            1259    23501    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          chat    false    6    232            �           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          chat    false    231            �            1259    23639    WhatsappQueues    TABLE     �   CREATE TABLE public."WhatsappQueues" (
    "whatsappId" integer NOT NULL,
    "queueId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."WhatsappQueues";
       public         heap    chat    false    6            �            1259    23561 	   Whatsapps    TABLE       CREATE TABLE public."Whatsapps" (
    id integer NOT NULL,
    session text,
    qrcode text,
    status character varying(255),
    battery character varying(255),
    plugged boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    "isDefault" boolean DEFAULT false NOT NULL,
    retries integer DEFAULT 0 NOT NULL,
    "greetingMessage" text,
    "companyId" integer,
    "complationMessage" text,
    "outOfHoursMessage" text,
    "ratingMessage" text,
    token text,
    "farewellMessage" text,
    provider text DEFAULT 'stable'::text,
    channel text,
    "facebookUserToken" text,
    "tokenMeta" text,
    "facebookPageUserId" text,
    "facebookUserId" text
);
    DROP TABLE public."Whatsapps";
       public         heap    chat    false    6            �            1259    23560    Whatsapps_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Whatsapps_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Whatsapps_id_seq";
       public          chat    false    6    239            �           0    0    Whatsapps_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Whatsapps_id_seq" OWNED BY public."Whatsapps".id;
          public          chat    false    238                        2604    24045    Announcements id    DEFAULT     x   ALTER TABLE ONLY public."Announcements" ALTER COLUMN id SET DEFAULT nextval('public."Announcements_id_seq"'::regclass);
 A   ALTER TABLE public."Announcements" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    282    281    282                       2604    23919 
   Baileys id    DEFAULT     l   ALTER TABLE ONLY public."Baileys" ALTER COLUMN id SET DEFAULT nextval('public."Baileys_id_seq"'::regclass);
 ;   ALTER TABLE public."Baileys" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    268    269    269                       2604    23995    CampaignSettings id    DEFAULT     ~   ALTER TABLE ONLY public."CampaignSettings" ALTER COLUMN id SET DEFAULT nextval('public."CampaignSettings_id_seq"'::regclass);
 D   ALTER TABLE public."CampaignSettings" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    277    276    277                       2604    24016    CampaignShipping id    DEFAULT     ~   ALTER TABLE ONLY public."CampaignShipping" ALTER COLUMN id SET DEFAULT nextval('public."CampaignShipping_id_seq"'::regclass);
 D   ALTER TABLE public."CampaignShipping" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    280    279    280                       2604    23960    Campaigns id    DEFAULT     p   ALTER TABLE ONLY public."Campaigns" ALTER COLUMN id SET DEFAULT nextval('public."Campaigns_id_seq"'::regclass);
 =   ALTER TABLE public."Campaigns" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    275    274    275            &           2604    24098    ChatMessages id    DEFAULT     v   ALTER TABLE ONLY public."ChatMessages" ALTER COLUMN id SET DEFAULT nextval('public."ChatMessages_id_seq"'::regclass);
 @   ALTER TABLE public."ChatMessages" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    287    288    288            $           2604    24080    ChatUsers id    DEFAULT     p   ALTER TABLE ONLY public."ChatUsers" ALTER COLUMN id SET DEFAULT nextval('public."ChatUsers_id_seq"'::regclass);
 =   ALTER TABLE public."ChatUsers" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    285    286    286            !           2604    24059    Chats id    DEFAULT     h   ALTER TABLE ONLY public."Chats" ALTER COLUMN id SET DEFAULT nextval('public."Chats_id_seq"'::regclass);
 9   ALTER TABLE public."Chats" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    283    284    284            �           2604    23653    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    248    247    248            �           2604    23573    ContactCustomFields id    DEFAULT     �   ALTER TABLE ONLY public."ContactCustomFields" ALTER COLUMN id SET DEFAULT nextval('public."ContactCustomFields_id_seq"'::regclass);
 G   ALTER TABLE public."ContactCustomFields" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    241    240    241                       2604    23940    ContactListItems id    DEFAULT     ~   ALTER TABLE ONLY public."ContactListItems" ALTER COLUMN id SET DEFAULT nextval('public."ContactListItems_id_seq"'::regclass);
 D   ALTER TABLE public."ContactListItems" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    272    273    273                       2604    23928    ContactLists id    DEFAULT     v   ALTER TABLE ONLY public."ContactLists" ALTER COLUMN id SET DEFAULT nextval('public."ContactLists_id_seq"'::regclass);
 @   ALTER TABLE public."ContactLists" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    270    271    271            �           2604    23516    Contacts id    DEFAULT     n   ALTER TABLE ONLY public."Contacts" ALTER COLUMN id SET DEFAULT nextval('public."Contacts_id_seq"'::regclass);
 <   ALTER TABLE public."Contacts" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    234    233    234                       2604    23755    Helps id    DEFAULT     h   ALTER TABLE ONLY public."Helps" ALTER COLUMN id SET DEFAULT nextval('public."Helps_id_seq"'::regclass);
 9   ALTER TABLE public."Helps" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    256    255    256            *           2604    24139    Invoices id    DEFAULT     n   ALTER TABLE ONLY public."Invoices" ALTER COLUMN id SET DEFAULT nextval('public."Invoices_id_seq"'::regclass);
 <   ALTER TABLE public."Invoices" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    291    292    292            �           2604    23699    Plans id    DEFAULT     h   ALTER TABLE ONLY public."Plans" ALTER COLUMN id SET DEFAULT nextval('public."Plans_id_seq"'::regclass);
 9   ALTER TABLE public."Plans" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    250    249    250                       2604    23832    QueueOptions id    DEFAULT     v   ALTER TABLE ONLY public."QueueOptions" ALTER COLUMN id SET DEFAULT nextval('public."QueueOptions_id_seq"'::regclass);
 @   ALTER TABLE public."QueueOptions" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    261    262    262            �           2604    23625 	   Queues id    DEFAULT     j   ALTER TABLE ONLY public."Queues" ALTER COLUMN id SET DEFAULT nextval('public."Queues_id_seq"'::regclass);
 :   ALTER TABLE public."Queues" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    244    243    244                       2604    23740    QuickMessages id    DEFAULT     x   ALTER TABLE ONLY public."QuickMessages" ALTER COLUMN id SET DEFAULT nextval('public."QuickMessages_id_seq"'::regclass);
 A   ALTER TABLE public."QuickMessages" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    253    254    254                       2604    23857    Schedules id    DEFAULT     p   ALTER TABLE ONLY public."Schedules" ALTER COLUMN id SET DEFAULT nextval('public."Schedules_id_seq"'::regclass);
 =   ALTER TABLE public."Schedules" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    264    263    264            �           2604    24006    Settings id    DEFAULT     n   ALTER TABLE ONLY public."Settings" ALTER COLUMN id SET DEFAULT nextval('public."Settings_id_seq"'::regclass);
 <   ALTER TABLE public."Settings" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    278    242            (           2604    24124    Subscriptions id    DEFAULT     x   ALTER TABLE ONLY public."Subscriptions" ALTER COLUMN id SET DEFAULT nextval('public."Subscriptions_id_seq"'::regclass);
 A   ALTER TABLE public."Subscriptions" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    289    290    290                       2604    23891    Tags id    DEFAULT     f   ALTER TABLE ONLY public."Tags" ALTER COLUMN id SET DEFAULT nextval('public."Tags_id_seq"'::regclass);
 8   ALTER TABLE public."Tags" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    266    265    266                       2604    23718    TicketNotes id    DEFAULT     t   ALTER TABLE ONLY public."TicketNotes" ALTER COLUMN id SET DEFAULT nextval('public."TicketNotes_id_seq"'::regclass);
 ?   ALTER TABLE public."TicketNotes" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    251    252    252                       2604    23766    TicketTraking id    DEFAULT     x   ALTER TABLE ONLY public."TicketTraking" ALTER COLUMN id SET DEFAULT nextval('public."TicketTraking_id_seq"'::regclass);
 A   ALTER TABLE public."TicketTraking" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    257    258    258            �           2604    23525 
   Tickets id    DEFAULT     l   ALTER TABLE ONLY public."Tickets" ALTER COLUMN id SET DEFAULT nextval('public."Tickets_id_seq"'::regclass);
 ;   ALTER TABLE public."Tickets" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    236    235    236            	           2604    23794    UserRatings id    DEFAULT     t   ALTER TABLE ONLY public."UserRatings" ALTER COLUMN id SET DEFAULT nextval('public."UserRatings_id_seq"'::regclass);
 ?   ALTER TABLE public."UserRatings" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    260    259    260            �           2604    23505    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    232    231    232            �           2604    23564    Whatsapps id    DEFAULT     p   ALTER TABLE ONLY public."Whatsapps" ALTER COLUMN id SET DEFAULT nextval('public."Whatsapps_id_seq"'::regclass);
 =   ALTER TABLE public."Whatsapps" ALTER COLUMN id DROP DEFAULT;
       public          chat    false    239    238    239            w          0    24042    Announcements 
   TABLE DATA           �   COPY public."Announcements" (id, priority, title, text, "mediaPath", "mediaName", "companyId", status, "createdAt", "updatedAt") FROM stdin;
    public          chat    false    282   J�      j          0    23916    Baileys 
   TABLE DATA           `   COPY public."Baileys" (id, "whatsappId", contacts, chats, "createdAt", "updatedAt") FROM stdin;
    public          chat    false    269   g�      r          0    23992    CampaignSettings 
   TABLE DATA           c   COPY public."CampaignSettings" (id, key, value, "companyId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    277   X�      u          0    24013    CampaignShipping 
   TABLE DATA           �   COPY public."CampaignShipping" (id, "jobId", number, message, "confirmationMessage", confirmation, "contactId", "campaignId", "confirmationRequestedAt", "confirmedAt", "deliveredAt", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    280   u�      p          0    23957 	   Campaigns 
   TABLE DATA           m  COPY public."Campaigns" (id, name, message1, message2, message3, message4, message5, "confirmationMessage1", "confirmationMessage2", "confirmationMessage3", "confirmationMessage4", "confirmationMessage5", status, confirmation, "mediaPath", "mediaName", "companyId", "contactListId", "whatsappId", "scheduledAt", "completedAt", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    275   ��      }          0    24095    ChatMessages 
   TABLE DATA              COPY public."ChatMessages" (id, "chatId", "senderId", message, "mediaPath", "mediaName", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    288   ��      {          0    24077 	   ChatUsers 
   TABLE DATA           `   COPY public."ChatUsers" (id, "chatId", "userId", unreads, "createdAt", "updatedAt") FROM stdin;
    public          chat    false    286   ��      y          0    24056    Chats 
   TABLE DATA           s   COPY public."Chats" (id, title, uuid, "ownerId", "lastMessage", "companyId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    284   ��      U          0    23650 	   Companies 
   TABLE DATA           �   COPY public."Companies" (id, name, phone, email, "createdAt", "updatedAt", "planId", status, schedules, "dueDate", recurrence) FROM stdin;
    public          chat    false    248   �      N          0    23570    ContactCustomFields 
   TABLE DATA           g   COPY public."ContactCustomFields" (id, name, value, "contactId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    241   ��      n          0    23937    ContactListItems 
   TABLE DATA           �   COPY public."ContactListItems" (id, name, number, email, "contactListId", "isWhatsappValid", "companyId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    273   ��      l          0    23925    ContactLists 
   TABLE DATA           Y   COPY public."ContactLists" (id, name, "companyId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    271   ��      G          0    23513    Contacts 
   TABLE DATA           �   COPY public."Contacts" (id, name, number, "profilePicUrl", "createdAt", "updatedAt", email, "isGroup", "companyId", channel) FROM stdin;
    public          chat    false    234   �      ]          0    23752    Helps 
   TABLE DATA           `   COPY public."Helps" (id, title, description, video, link, "createdAt", "updatedAt") FROM stdin;
    public          chat    false    256   �8      �          0    24136    Invoices 
   TABLE DATA           q   COPY public."Invoices" (id, detail, status, value, "createdAt", "updatedAt", "dueDate", "companyId") FROM stdin;
    public          chat    false    292   �8      J          0    23541    Messages 
   TABLE DATA           �   COPY public."Messages" (id, body, ack, read, "mediaType", "mediaUrl", "ticketId", "createdAt", "updatedAt", "fromMe", "isDeleted", "contactId", "quotedMsgId", "companyId", "remoteJid", "dataJson", participant, "queueId", channel) FROM stdin;
    public          chat    false    237   ;9      W          0    23696    Plans 
   TABLE DATA           h   COPY public."Plans" (id, name, users, connections, queues, "createdAt", "updatedAt", value) FROM stdin;
    public          chat    false    250   C�      c          0    23829    QueueOptions 
   TABLE DATA           u   COPY public."QueueOptions" (id, title, message, option, "queueId", "parentId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    262   ��      Q          0    23622    Queues 
   TABLE DATA           �   COPY public."Queues" (id, name, color, "greetingMessage", "createdAt", "updatedAt", "companyId", schedules, "outOfHoursMessage") FROM stdin;
    public          chat    false    244   ��      [          0    23737    QuickMessages 
   TABLE DATA           r   COPY public."QuickMessages" (id, shortcode, message, "companyId", "createdAt", "updatedAt", "userId") FROM stdin;
    public          chat    false    254   ��      e          0    23854 	   Schedules 
   TABLE DATA           �   COPY public."Schedules" (id, body, "sendAt", "sentAt", "contactId", "ticketId", "userId", "companyId", "createdAt", "updatedAt", status) FROM stdin;
    public          chat    false    264   ͟      C          0    23485    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          chat    false    230   �      O          0    23586    Settings 
   TABLE DATA           [   COPY public."Settings" (key, value, "createdAt", "updatedAt", "companyId", id) FROM stdin;
    public          chat    false    242   ��                0    24121    Subscriptions 
   TABLE DATA           �   COPY public."Subscriptions" (id, "isActive", "expiresAt", "userPriceCents", "whatsPriceCents", "lastInvoiceUrl", "lastPlanChange", "companyId", "providerSubscriptionId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    290   ��      g          0    23888    Tags 
   TABLE DATA           X   COPY public."Tags" (id, name, color, "companyId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    266   ��      Y          0    23715    TicketNotes 
   TABLE DATA           n   COPY public."TicketNotes" (id, note, "userId", "contactId", "ticketId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    252   Ҧ      h          0    23901 
   TicketTags 
   TABLE DATA           U   COPY public."TicketTags" ("ticketId", "tagId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    267   �      _          0    23763    TicketTraking 
   TABLE DATA           �   COPY public."TicketTraking" (id, "ticketId", "companyId", "whatsappId", "userId", "createdAt", "updatedAt", "queuedAt", "startedAt", "finishedAt", "ratingAt", rated) FROM stdin;
    public          chat    false    258   �      I          0    23522    Tickets 
   TABLE DATA           �   COPY public."Tickets" (id, status, "lastMessage", "contactId", "userId", "createdAt", "updatedAt", "whatsappId", "isGroup", "unreadMessages", "queueId", "companyId", uuid, chatbot, "queueOptionId", channel) FROM stdin;
    public          chat    false    236   ��      S          0    23644 
   UserQueues 
   TABLE DATA           U   COPY public."UserQueues" ("userId", "queueId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    246   ��      a          0    23791    UserRatings 
   TABLE DATA           n   COPY public."UserRatings" (id, "ticketId", "companyId", "userId", rate, "createdAt", "updatedAt") FROM stdin;
    public          chat    false    260   m�      E          0    23502    Users 
   TABLE DATA           �   COPY public."Users" (id, name, email, "passwordHash", "createdAt", "updatedAt", profile, "tokenVersion", "companyId", super, online) FROM stdin;
    public          chat    false    232   ߺ      R          0    23639    WhatsappQueues 
   TABLE DATA           ]   COPY public."WhatsappQueues" ("whatsappId", "queueId", "createdAt", "updatedAt") FROM stdin;
    public          chat    false    245   [�      L          0    23561 	   Whatsapps 
   TABLE DATA           \  COPY public."Whatsapps" (id, session, qrcode, status, battery, plugged, "createdAt", "updatedAt", name, "isDefault", retries, "greetingMessage", "companyId", "complationMessage", "outOfHoursMessage", "ratingMessage", token, "farewellMessage", provider, channel, "facebookUserToken", "tokenMeta", "facebookPageUserId", "facebookUserId") FROM stdin;
    public          chat    false    239   ��      �           0    0    Announcements_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Announcements_id_seq"', 1, false);
          public          chat    false    281            �           0    0    Baileys_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Baileys_id_seq"', 5, true);
          public          chat    false    268            �           0    0    CampaignSettings_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."CampaignSettings_id_seq"', 1, false);
          public          chat    false    276            �           0    0    CampaignShipping_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."CampaignShipping_id_seq"', 1, false);
          public          chat    false    279            �           0    0    Campaigns_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Campaigns_id_seq"', 1, false);
          public          chat    false    274            �           0    0    ChatMessages_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ChatMessages_id_seq"', 3, true);
          public          chat    false    287            �           0    0    ChatUsers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."ChatUsers_id_seq"', 2, true);
          public          chat    false    285            �           0    0    Chats_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Chats_id_seq"', 1, true);
          public          chat    false    283            �           0    0    Companies_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Companies_id_seq"', 2, true);
          public          chat    false    247            �           0    0    ContactCustomFields_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."ContactCustomFields_id_seq"', 1, false);
          public          chat    false    240            �           0    0    ContactListItems_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ContactListItems_id_seq"', 1, false);
          public          chat    false    272            �           0    0    ContactLists_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ContactLists_id_seq"', 1, false);
          public          chat    false    270            �           0    0    Contacts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Contacts_id_seq"', 735, true);
          public          chat    false    233            �           0    0    Helps_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Helps_id_seq"', 1, false);
          public          chat    false    255            �           0    0    Invoices_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Invoices_id_seq"', 2, true);
          public          chat    false    291            �           0    0    Plans_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Plans_id_seq"', 1, true);
          public          chat    false    249            �           0    0    QueueOptions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."QueueOptions_id_seq"', 6, true);
          public          chat    false    261            �           0    0    Queues_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Queues_id_seq"', 5, true);
          public          chat    false    243            �           0    0    QuickMessages_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."QuickMessages_id_seq"', 1, true);
          public          chat    false    253            �           0    0    Schedules_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Schedules_id_seq"', 1, false);
          public          chat    false    263            �           0    0    Settings_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Settings_id_seq"', 24, true);
          public          chat    false    278            �           0    0    Subscriptions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Subscriptions_id_seq"', 1, false);
          public          chat    false    289            �           0    0    Tags_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Tags_id_seq"', 1, false);
          public          chat    false    265            �           0    0    TicketNotes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."TicketNotes_id_seq"', 1, false);
          public          chat    false    251            �           0    0    TicketTraking_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."TicketTraking_id_seq"', 46, true);
          public          chat    false    257            �           0    0    Tickets_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Tickets_id_seq"', 32, true);
          public          chat    false    235            �           0    0    UserRatings_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UserRatings_id_seq"', 4, true);
          public          chat    false    259            �           0    0    Users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_id_seq"', 7, true);
          public          chat    false    231            �           0    0    Whatsapps_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Whatsapps_id_seq"', 6, true);
          public          chat    false    238            t           2606    24049     Announcements Announcements_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Announcements"
    ADD CONSTRAINT "Announcements_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Announcements" DROP CONSTRAINT "Announcements_pkey";
       public            chat    false    282            f           2606    23923    Baileys Baileys_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Baileys"
    ADD CONSTRAINT "Baileys_pkey" PRIMARY KEY (id, "whatsappId");
 B   ALTER TABLE ONLY public."Baileys" DROP CONSTRAINT "Baileys_pkey";
       public            chat    false    269    269            o           2606    23999 &   CampaignSettings CampaignSettings_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."CampaignSettings"
    ADD CONSTRAINT "CampaignSettings_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."CampaignSettings" DROP CONSTRAINT "CampaignSettings_pkey";
       public            chat    false    277            q           2606    24020 &   CampaignShipping CampaignShipping_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."CampaignShipping"
    ADD CONSTRAINT "CampaignShipping_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."CampaignShipping" DROP CONSTRAINT "CampaignShipping_pkey";
       public            chat    false    280            m           2606    23975    Campaigns Campaigns_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Campaigns" DROP CONSTRAINT "Campaigns_pkey";
       public            chat    false    275            z           2606    24103    ChatMessages ChatMessages_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ChatMessages"
    ADD CONSTRAINT "ChatMessages_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ChatMessages" DROP CONSTRAINT "ChatMessages_pkey";
       public            chat    false    288            x           2606    24083    ChatUsers ChatUsers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."ChatUsers"
    ADD CONSTRAINT "ChatUsers_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."ChatUsers" DROP CONSTRAINT "ChatUsers_pkey";
       public            chat    false    286            v           2606    24065    Chats Chats_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_pkey";
       public            chat    false    284            L           2606    23659    Companies Companies_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_name_key";
       public            chat    false    248            N           2606    23657    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public            chat    false    248            @           2606    23577 ,   ContactCustomFields ContactCustomFields_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."ContactCustomFields"
    ADD CONSTRAINT "ContactCustomFields_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."ContactCustomFields" DROP CONSTRAINT "ContactCustomFields_pkey";
       public            chat    false    241            j           2606    23945 &   ContactListItems ContactListItems_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."ContactListItems" DROP CONSTRAINT "ContactListItems_pkey";
       public            chat    false    273            h           2606    23930    ContactLists ContactLists_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ContactLists"
    ADD CONSTRAINT "ContactLists_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ContactLists" DROP CONSTRAINT "ContactLists_pkey";
       public            chat    false    271            2           2606    23520    Contacts Contacts_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Contacts"
    ADD CONSTRAINT "Contacts_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Contacts" DROP CONSTRAINT "Contacts_pkey";
       public            chat    false    234            X           2606    23759    Helps Helps_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Helps"
    ADD CONSTRAINT "Helps_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Helps" DROP CONSTRAINT "Helps_pkey";
       public            chat    false    256            ~           2606    24143    Invoices Invoices_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Invoices"
    ADD CONSTRAINT "Invoices_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Invoices" DROP CONSTRAINT "Invoices_pkey";
       public            chat    false    292            9           2606    23549    Messages Messages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_pkey";
       public            chat    false    237            P           2606    23706    Plans Plans_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public."Plans"
    ADD CONSTRAINT "Plans_name_key" UNIQUE (name);
 B   ALTER TABLE ONLY public."Plans" DROP CONSTRAINT "Plans_name_key";
       public            chat    false    250            R           2606    23704    Plans Plans_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Plans"
    ADD CONSTRAINT "Plans_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Plans" DROP CONSTRAINT "Plans_pkey";
       public            chat    false    250            ^           2606    23836    QueueOptions QueueOptions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."QueueOptions" DROP CONSTRAINT "QueueOptions_pkey";
       public            chat    false    262            B           2606    23825    Queues Queues_color_key 
   CONSTRAINT     d   ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_color_key" UNIQUE (color, "companyId");
 E   ALTER TABLE ONLY public."Queues" DROP CONSTRAINT "Queues_color_key";
       public            chat    false    244    244            D           2606    23827    Queues Queues_name_key 
   CONSTRAINT     b   ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_name_key" UNIQUE (name, "companyId");
 D   ALTER TABLE ONLY public."Queues" DROP CONSTRAINT "Queues_name_key";
       public            chat    false    244    244            F           2606    23629    Queues Queues_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Queues" DROP CONSTRAINT "Queues_pkey";
       public            chat    false    244            V           2606    23744     QuickMessages QuickMessages_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "QuickMessages_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."QuickMessages" DROP CONSTRAINT "QuickMessages_pkey";
       public            chat    false    254            `           2606    23861    Schedules Schedules_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Schedules" DROP CONSTRAINT "Schedules_pkey";
       public            chat    false    264            ,           2606    23489     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            chat    false    230            |           2606    24129     Subscriptions Subscriptions_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Subscriptions" DROP CONSTRAINT "Subscriptions_pkey";
       public            chat    false    290            c           2606    23895    Tags Tags_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Tags" DROP CONSTRAINT "Tags_pkey";
       public            chat    false    266            T           2606    23720    TicketNotes TicketNotes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."TicketNotes" DROP CONSTRAINT "TicketNotes_pkey";
       public            chat    false    252            Z           2606    23768     TicketTraking TicketTraking_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."TicketTraking" DROP CONSTRAINT "TicketTraking_pkey";
       public            chat    false    258            5           2606    23530    Tickets Tickets_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT "Tickets_pkey";
       public            chat    false    236            J           2606    23648    UserQueues UserQueues_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."UserQueues"
    ADD CONSTRAINT "UserQueues_pkey" PRIMARY KEY ("userId", "queueId");
 H   ALTER TABLE ONLY public."UserQueues" DROP CONSTRAINT "UserQueues_pkey";
       public            chat    false    246    246            \           2606    23797    UserRatings UserRatings_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."UserRatings" DROP CONSTRAINT "UserRatings_pkey";
       public            chat    false    260            .           2606    23511    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            chat    false    232            0           2606    23509    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            chat    false    232            H           2606    23643 "   WhatsappQueues WhatsappQueues_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."WhatsappQueues"
    ADD CONSTRAINT "WhatsappQueues_pkey" PRIMARY KEY ("whatsappId", "queueId");
 P   ALTER TABLE ONLY public."WhatsappQueues" DROP CONSTRAINT "WhatsappQueues_pkey";
       public            chat    false    245    245            <           2606    23594    Whatsapps Whatsapps_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Whatsapps" DROP CONSTRAINT "Whatsapps_name_key";
       public            chat    false    239            >           2606    23568    Whatsapps Whatsapps_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Whatsapps" DROP CONSTRAINT "Whatsapps_pkey";
       public            chat    false    239            7           2606    23815 "   Tickets contactid_companyid_unique 
   CONSTRAINT     s   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT contactid_companyid_unique UNIQUE ("contactId", "companyId");
 N   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT contactid_companyid_unique;
       public            chat    false    236    236            3           1259    24116    idx_cont_company_id    INDEX     Q   CREATE INDEX idx_cont_company_id ON public."Contacts" USING btree ("companyId");
 '   DROP INDEX public.idx_cont_company_id;
       public            chat    false    234            r           1259    24118    idx_cpsh_campaign_id    INDEX     [   CREATE INDEX idx_cpsh_campaign_id ON public."CampaignShipping" USING btree ("campaignId");
 (   DROP INDEX public.idx_cpsh_campaign_id;
       public            chat    false    280            k           1259    24119    idx_ctli_contact_list_id    INDEX     b   CREATE INDEX idx_ctli_contact_list_id ON public."ContactListItems" USING btree ("contactListId");
 ,   DROP INDEX public.idx_ctli_contact_list_id;
       public            chat    false    273            :           1259    24117    idx_ms_company_id_ticket_id    INDEX     e   CREATE INDEX idx_ms_company_id_ticket_id ON public."Messages" USING btree ("companyId", "ticketId");
 /   DROP INDEX public.idx_ms_company_id_ticket_id;
       public            chat    false    237    237            a           1259    24114    idx_sched_company_id    INDEX     S   CREATE INDEX idx_sched_company_id ON public."Schedules" USING btree ("companyId");
 (   DROP INDEX public.idx_sched_company_id;
       public            chat    false    264            d           1259    24115    idx_tg_company_id    INDEX     K   CREATE INDEX idx_tg_company_id ON public."Tags" USING btree ("companyId");
 %   DROP INDEX public.idx_tg_company_id;
       public            chat    false    266            �           2606    24050 *   Announcements Announcements_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Announcements"
    ADD CONSTRAINT "Announcements_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."Announcements" DROP CONSTRAINT "Announcements_companyId_fkey";
       public          chat    false    248    4430    282            �           2606    24000 0   CampaignSettings CampaignSettings_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CampaignSettings"
    ADD CONSTRAINT "CampaignSettings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public."CampaignSettings" DROP CONSTRAINT "CampaignSettings_companyId_fkey";
       public          chat    false    277    248    4430            �           2606    24026 1   CampaignShipping CampaignShipping_campaignId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CampaignShipping"
    ADD CONSTRAINT "CampaignShipping_campaignId_fkey" FOREIGN KEY ("campaignId") REFERENCES public."Campaigns"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."CampaignShipping" DROP CONSTRAINT "CampaignShipping_campaignId_fkey";
       public          chat    false    275    4461    280            �           2606    24021 0   CampaignShipping CampaignShipping_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CampaignShipping"
    ADD CONSTRAINT "CampaignShipping_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."ContactListItems"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public."CampaignShipping" DROP CONSTRAINT "CampaignShipping_contactId_fkey";
       public          chat    false    273    280    4458            �           2606    23976 "   Campaigns Campaigns_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public."Campaigns" DROP CONSTRAINT "Campaigns_companyId_fkey";
       public          chat    false    248    275    4430            �           2606    23981 &   Campaigns Campaigns_contactListId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_contactListId_fkey" FOREIGN KEY ("contactListId") REFERENCES public."ContactLists"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Campaigns" DROP CONSTRAINT "Campaigns_contactListId_fkey";
       public          chat    false    275    4456    271            �           2606    23986 #   Campaigns Campaigns_whatsappId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Campaigns" DROP CONSTRAINT "Campaigns_whatsappId_fkey";
       public          chat    false    4414    275    239            �           2606    24104 %   ChatMessages ChatMessages_chatId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatMessages"
    ADD CONSTRAINT "ChatMessages_chatId_fkey" FOREIGN KEY ("chatId") REFERENCES public."Chats"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."ChatMessages" DROP CONSTRAINT "ChatMessages_chatId_fkey";
       public          chat    false    288    284    4470            �           2606    24109 '   ChatMessages ChatMessages_senderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatMessages"
    ADD CONSTRAINT "ChatMessages_senderId_fkey" FOREIGN KEY ("senderId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."ChatMessages" DROP CONSTRAINT "ChatMessages_senderId_fkey";
       public          chat    false    4400    232    288            �           2606    24084    ChatUsers ChatUsers_chatId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatUsers"
    ADD CONSTRAINT "ChatUsers_chatId_fkey" FOREIGN KEY ("chatId") REFERENCES public."Chats"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."ChatUsers" DROP CONSTRAINT "ChatUsers_chatId_fkey";
       public          chat    false    286    4470    284            �           2606    24089    ChatUsers ChatUsers_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatUsers"
    ADD CONSTRAINT "ChatUsers_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."ChatUsers" DROP CONSTRAINT "ChatUsers_userId_fkey";
       public          chat    false    286    232    4400            �           2606    24071    Chats Chats_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_companyId_fkey";
       public          chat    false    284    248    4430            �           2606    24066    Chats Chats_ownerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_ownerId_fkey";
       public          chat    false    284    4400    232            �           2606    23707    Companies Companies_planId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_planId_fkey" FOREIGN KEY ("planId") REFERENCES public."Plans"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_planId_fkey";
       public          chat    false    250    248    4434            �           2606    23578 6   ContactCustomFields ContactCustomFields_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ContactCustomFields"
    ADD CONSTRAINT "ContactCustomFields_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public."ContactCustomFields" DROP CONSTRAINT "ContactCustomFields_contactId_fkey";
       public          chat    false    234    241    4402            �           2606    23951 0   ContactListItems ContactListItems_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public."ContactListItems" DROP CONSTRAINT "ContactListItems_companyId_fkey";
       public          chat    false    4430    273    248            �           2606    23946 4   ContactListItems ContactListItems_contactListId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_contactListId_fkey" FOREIGN KEY ("contactListId") REFERENCES public."ContactLists"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public."ContactListItems" DROP CONSTRAINT "ContactListItems_contactListId_fkey";
       public          chat    false    4456    273    271            �           2606    23931 (   ContactLists ContactLists_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ContactLists"
    ADD CONSTRAINT "ContactLists_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."ContactLists" DROP CONSTRAINT "ContactLists_companyId_fkey";
       public          chat    false    4430    271    248            �           2606    23670     Contacts Contacts_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contacts"
    ADD CONSTRAINT "Contacts_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Contacts" DROP CONSTRAINT "Contacts_companyId_fkey";
       public          chat    false    248    234    4430            �           2606    24144     Invoices Invoices_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Invoices"
    ADD CONSTRAINT "Invoices_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."Invoices" DROP CONSTRAINT "Invoices_companyId_fkey";
       public          chat    false    292    4430    248            �           2606    23675     Messages Messages_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_companyId_fkey";
       public          chat    false    248    4430    237            �           2606    23605     Messages Messages_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_contactId_fkey";
       public          chat    false    237    234    4402            �           2606    24031    Messages Messages_queueId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_queueId_fkey";
       public          chat    false    4422    237    244            �           2606    23616 "   Messages Messages_quotedMsgId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_quotedMsgId_fkey" FOREIGN KEY ("quotedMsgId") REFERENCES public."Messages"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_quotedMsgId_fkey";
       public          chat    false    4409    237    237            �           2606    23555    Messages Messages_ticketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_ticketId_fkey";
       public          chat    false    236    237    4405            �           2606    23842 '   QueueOptions QueueOptions_parentId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES public."QueueOptions"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."QueueOptions" DROP CONSTRAINT "QueueOptions_parentId_fkey";
       public          chat    false    4446    262    262            �           2606    23837 &   QueueOptions QueueOptions_queueId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public."QueueOptions" DROP CONSTRAINT "QueueOptions_queueId_fkey";
       public          chat    false    244    4422    262            �           2606    23680    Queues Queues_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Queues" DROP CONSTRAINT "Queues_companyId_fkey";
       public          chat    false    248    4430    244            �           2606    23745 *   QuickMessages QuickMessages_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "QuickMessages_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."QuickMessages" DROP CONSTRAINT "QuickMessages_companyId_fkey";
       public          chat    false    4430    248    254            �           2606    23882 '   QuickMessages QuickMessages_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "QuickMessages_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."QuickMessages" DROP CONSTRAINT "QuickMessages_userId_fkey";
       public          chat    false    4400    254    232            �           2606    23877 "   Schedules Schedules_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public."Schedules" DROP CONSTRAINT "Schedules_companyId_fkey";
       public          chat    false    4430    264    248            �           2606    23862 "   Schedules Schedules_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public."Schedules" DROP CONSTRAINT "Schedules_contactId_fkey";
       public          chat    false    4402    264    234            �           2606    23867 !   Schedules Schedules_ticketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 O   ALTER TABLE ONLY public."Schedules" DROP CONSTRAINT "Schedules_ticketId_fkey";
       public          chat    false    4405    236    264            �           2606    23872    Schedules Schedules_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 M   ALTER TABLE ONLY public."Schedules" DROP CONSTRAINT "Schedules_userId_fkey";
       public          chat    false    4400    264    232            �           2606    23660     Settings Settings_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Settings"
    ADD CONSTRAINT "Settings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Settings" DROP CONSTRAINT "Settings_companyId_fkey";
       public          chat    false    248    242    4430            �           2606    24130 *   Subscriptions Subscriptions_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."Subscriptions" DROP CONSTRAINT "Subscriptions_companyId_fkey";
       public          chat    false    4430    248    290            �           2606    23896    Tags Tags_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public."Tags" DROP CONSTRAINT "Tags_companyId_fkey";
       public          chat    false    4430    266    248            �           2606    23726 &   TicketNotes TicketNotes_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public."TicketNotes" DROP CONSTRAINT "TicketNotes_contactId_fkey";
       public          chat    false    252    234    4402            �           2606    23731 %   TicketNotes TicketNotes_ticketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."TicketNotes" DROP CONSTRAINT "TicketNotes_ticketId_fkey";
       public          chat    false    252    236    4405            �           2606    23721 #   TicketNotes TicketNotes_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."TicketNotes" DROP CONSTRAINT "TicketNotes_userId_fkey";
       public          chat    false    4400    252    232            �           2606    23909     TicketTags TicketTags_tagId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTags"
    ADD CONSTRAINT "TicketTags_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public."Tags"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."TicketTags" DROP CONSTRAINT "TicketTags_tagId_fkey";
       public          chat    false    267    266    4451            �           2606    23904 #   TicketTags TicketTags_ticketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTags"
    ADD CONSTRAINT "TicketTags_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public."TicketTags" DROP CONSTRAINT "TicketTags_ticketId_fkey";
       public          chat    false    267    236    4405            �           2606    23774 *   TicketTraking TicketTraking_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."TicketTraking" DROP CONSTRAINT "TicketTraking_companyId_fkey";
       public          chat    false    248    4430    258            �           2606    23769 )   TicketTraking TicketTraking_ticketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON DELETE SET NULL;
 W   ALTER TABLE ONLY public."TicketTraking" DROP CONSTRAINT "TicketTraking_ticketId_fkey";
       public          chat    false    4405    258    236            �           2606    23784 '   TicketTraking TicketTraking_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON DELETE SET NULL;
 U   ALTER TABLE ONLY public."TicketTraking" DROP CONSTRAINT "TicketTraking_userId_fkey";
       public          chat    false    4400    258    232            �           2606    23779 +   TicketTraking TicketTraking_whatsappId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."TicketTraking" DROP CONSTRAINT "TicketTraking_whatsappId_fkey";
       public          chat    false    258    4414    239            �           2606    23690    Tickets Tickets_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT "Tickets_companyId_fkey";
       public          chat    false    248    236    4430            �           2606    23531    Tickets Tickets_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT "Tickets_contactId_fkey";
       public          chat    false    236    4402    234            �           2606    23634    Tickets Tickets_queueId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT "Tickets_queueId_fkey";
       public          chat    false    4422    236    244            �           2606    23848 "   Tickets Tickets_queueOptionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_queueOptionId_fkey" FOREIGN KEY ("queueOptionId") REFERENCES public."QueueOptions"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT "Tickets_queueOptionId_fkey";
       public          chat    false    4446    262    236            �           2606    23536    Tickets Tickets_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT "Tickets_userId_fkey";
       public          chat    false    232    236    4400            �           2606    23596    Tickets Tickets_whatsappId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT "Tickets_whatsappId_fkey";
       public          chat    false    4414    239    236            �           2606    23803 &   UserRatings UserRatings_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."UserRatings" DROP CONSTRAINT "UserRatings_companyId_fkey";
       public          chat    false    4430    248    260            �           2606    23798 %   UserRatings UserRatings_ticketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."UserRatings" DROP CONSTRAINT "UserRatings_ticketId_fkey";
       public          chat    false    236    260    4405            �           2606    23808 #   UserRatings UserRatings_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."UserRatings" DROP CONSTRAINT "UserRatings_userId_fkey";
       public          chat    false    232    260    4400                       2606    23665    Users Users_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_companyId_fkey";
       public          chat    false    4430    248    232            �           2606    23685 "   Whatsapps Whatsapps_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Whatsapps" DROP CONSTRAINT "Whatsapps_companyId_fkey";
       public          chat    false    239    4430    248            w      x������ � �      j      x���nI�&�>oaS��LtI���V�R$#Ȩ�HfU�zat7-e�i���`.�A3h`�ffs������:�,fo�/0��~�%������R"��Y$T����y����޽3���/��[�������/�������0��P��ء�m���V�px��r�ѿ��ٞ<b��L3r&�J����;^r-r�x���1P����w�C�X�����?W{A�L�]�|���O�x����ʴ�)��</���L���277�{!K���1
%Q$��:�!�=�wd�'�=���Rȁ���.~�;��"],|�?�h�܉G1�&I��x>��O$/
�g&(���4q0��=9SE�=�P�8���\�Y񒘜�59��O��Dk���ԣ�4~���Ԣ*�D���e���NVdSIr�un�#��㌕H( M\�s� �,����TY2]r)���=O��Ԍb��R�g-O����5OZ�ƎCCL�m�$ed��H��.p�D�)�L�#[,�����^o�&?瘞�;����{�����^�{�KEV����F�/J�ؼF���?�=/$�0���-a�%.�J��_p��L2�cd�ȥ�1~i8��~�8	�16�-��ؐ�
�P&
������0���J�Dj2����JI�M�<�����ϳ��L���J��R|x�X������P�#s2Ղ9�/�VsY匼"+-�TH�_�b��a�ސ� ��Z����27���Py��?a,�Q�4Ʃ??�J���$ג�K�ɕ�@Θ��7��Qc�R�8�A��`l�7,/t����)��Oϗ�� _l�T��d�T|�b�!K��4q������_���ʼKY�>���F�D��d�x�(�ٖ�g���H�Ư9�R����X?�P�v^�&IHc�����H���,��"����8�8n�=���O��� kÜ�lDQ�p�kl���	�$����0h�yP2/���v7�,9>Rmh:��$E��Onf��:�d�`7�|]?���,'�ˋہ1
&�����o���L��y�)7�Ё�����&*����Q��F��;�Kqe��/�a΁�U�՜����L��U������D֜�>p������a�n�O�Ѥ�6�b _�$����Ry�d��֕ '���k*(���\6��ġ��f�O����"'�*����C�$�����-OE�
r��"�����0P�N�=c���i�r%q�����~�X���O�ϋ���d9���G�%L�ȒC/����(@��yq`�_�u-$�h�ُ��i๣ �ű��������E�:|;Qǉ�b1��O2-X����v�>�\l׷8����`0��.�b�T�Zi�pO$�S����;�Ј�p���o�ޙ���J.2^/?<a��-�%�G�u����(٣�j3���9��p'��s��?I��R�U�7��^���T7q�x(E��/�^�b�k2U��d��ZUV����1���1
Qs���I|�l���l�	���`dy�x�(��^�	�+��/8H+29�����y�b���m|�=`ާT�N�`�2�ߚ)Oya�.L�|$^����lv��V�v"�H"%KfZ]ĜP%��xhX����5<|D��0�`���	b���J>���=2��rEi����\��l��5-�3m�3�d�v�8b?D�~q��Q���c0`���dɞ�SU��4����� q�$�.?c�"#+��&ܹ̳�(�mT���W�f�44,
P\���K�s�
�QE��o��Ob���'y����B ���"[����������ݜ�L�^�6��V%?h1��l,ԁ�R/F��~i(#a���	"�Ǎ�/恢�g��d?�s-J���y�rh}�Fk��{��ԓ���d�:;�K����0�L�m������0���K��ا��˥ɠ�I�O��-y������߉�e�U�e�*�P�up���ﻈ�_.�4��QP�w� �i�֋=����ڳ\��~��o���䪇_����;H�oU*��F��l|�����	S㛩�wB��=�$c���d*z�w9va�଍�_�R�T�ڿ��E�k0���&��1M��]��頤@U��1��A��=���=#W���7k�i��Ꝇs�v+4_�������{��~M��\���O�B�H�>�ɷ���Q��_))��,/�w�:�	�6�I�(q��q�?		�d%����dQf�vj�S��Dش��i�"S�����d��g��4Q����	?��)�0��(��9��E~��x�y��B���]���:���Q ���We"�(�ޕ�()a�c�W&�"U����獂0���D����_�{-�4WL���*�[��eL��y.�E�x�m�������3�)��$䌍��}4wU���XA�!����$o���s�LJ�g��Ԟ�y)���«�q(��6�+í
�2�9����x��ٖ���J����)%<u���Iҩ�#kz�̓�{��x&BNb�K�&�9e"IZ+�m$��1�A�X�F�l��J�r0���Y)
B��Vɘz	N���\WόL5��s2e9G��6N܀�q�*�6�^ń6Ô�,�*P�K�;
�Dn���H���4:%��{0�9W�Q������S\���B��[r���"w\k^��y� ��s��c�gj'�	���ɩ�}�5W�"7N�N��Rs�(�hXi X�Z�eJj�xI솉��8N�Vd�K���߳��咕܄>4ӧ&M/uU�~�(��f��h���_�=�
��e��Y�u��D;X���b�������Ɇ�+�;�5� :h���߰򁁏ٍ /z���t�z��c���P7�#����kU���^�y]�(B{�5�´�f��A���Q�%���R4�f����8t05��w,�E�ȅ���8ΐv��$~aDl�ǿ�G�+솷�6����0��&oR%��Љ�ž�'�_�eX�dU�ռN�:���Ä���5���L`5�ݩ2�!u<����z����	r��J�1��7s্�N�wcC)������\�4���L��#�w\>(�Ǌe�|SI�R?���~�8/j�ܼ^Z��N��g�y� ��cRp,�������!󏩬
��H�����G�ϋ\�s1Ų�J<7��934ʙ$�\k���A��t������������&ӷ��ɽ~��(��Ӻλ��xF�6�M�TU
�8�x��S�Q�u\޴��L��?V"�d?�G�f��l�;���v�g��CPN�#?I<ԥ��W�Y4�J�W�1�N�y���2�p��/�LV��9�ov܉i8!�36~�ʊ���<)���E��ӕ�
��f*W���Q�ȧ�KC�G��sY�l��rQo���4��f�c��ܪ��KQ02�DYaR�Xi:a�;R��_U0�>��3�4:�u��C7��;��H�z�:#[�SQ�7�{C �l�>I'Q�{�(�����{wd*���0�c~��O��d��Y�f5���%#u���ص���=װ�Y�,�{b���!U^b˳��L"7�(�vl���
=~k|S�I�Z��b�W��?F�ǿ>rQ���X��7ds�g�ǮղW?6��
5,��+J����.���sP�����-@|�������
sg��En�`i�Ʒ:��W������:n��?=~�zO3|�\�j��J�Jc�\�'Lb/p� �P���:d�kqυ�hg�y�0Y?��(t]gwl�Z�Lg�#|�èWGN��X'��7�*���o���w���\�l�����v}�x�(���I�Ɓ�8x�����V!�D!��yvA>ɟ$��f�}��ؙD��lX^���/~�F������)r�ދ��6x-�ߵ%�����l�D���ͳ�3-rlCt���U�Zn=<L�2���Oŗ��dQ��}g@�9�S6�\(͟����{h4��~K�B��ȼ8�T0)�Af�Ֆ$+���EY��j�������8��.�;~�x%m�J�"�u�q    ��[����	�$D��#�Y-���E�|+������?a���#�����o���{5�{^W��ǲ���Q�Ǟ���d�{����V~��ʋ|?A�~./M
_J#��+�27�u�n�M�)2���_5�Bq���(��S�b�� k��7�ľ�:8��k~P��H,e�0�yU��x�4����s�O���?r�$�Q7�f��\h�g��w�=n��&�6���5ً�:W�8~6Rm���'�|�u[���F.j���|��r�g�L9h<|�?>���c�L�.L���
�z�!Yp3���?�|�[nO|�lF�Ύ��o��}�G1�]6~�ʯ����x�88֎�8���÷֭c�h{�_U�Ƽ��خb%+�{�u�+�q��Qሇ�?�R8Y)�4�򏥐d&E~��AIñ�97a��i�ȚW�wbsA�r�`�_��:->BXf�!W,��T�L.!�z+v1ws���݅|��#M�� k�畉|*�{9��1̺��A���9Wz_���m�MA'����I)������d�>��At�<y��0:�׍�_��d�&e�%�K�m���t}��<=�
�*/v�H��j:��t&��#�����<M��FH2A-�S㓺�w]䌍��=�Q��3� �(����0-I�(� ���Q�j��a�r��#��q��ƟF��5����ٜx�8xc��FQbE�Ɵ+]���j dL��^SlE��5$g�\�|/p��߬�D4
#�#���45�����-Q�x����=<�`)�'�(p�ኗ������﹔"߁1�!��h4_�n�<p\'ezx�/��Y2Q(��nߥ J�`{xȓyE&d�RP�x�XCC/�������R�C:�:g:3�҅���q�y����i��z��\=���Z���3X�6?�<Cg�����w<d����\pia��G�5<X�w7�� ���.V=����}�VZ�q~���Q/q���/v�ec��M�(wf2rF֪`�L쉓86�Tc���OrP����gr23��p�7桊�(C������� ��3�3�3�Z���wk�~�������*9���
�b��c�ث��p���O%ۃz���o�P�,��Oe|�&.����3��$W�xf��<o,���9	�������͔l��A�ڂ��V�:I<jB$��oUF����+�44�F%듒����y���k��aώ�"��<ꄠ��%b�r�"_Qhe��3���D�`��sv/�^����6
�D~;n�`t��O�L?�H����I����aF�5wfR6~�����E��������P�_&�J�N��6~���3��:�&��B?�͊\p�w��Z^o�4.x��
�?r��h���`s��O������SSÙ�{.1�:M�ז�H��y)M���,/��������N��@E����2�r�����{d���E�X��0iW�(1���a'tc����O�K���Z��ɋ�FN��T��ߪJ��4K��Y�e��	� /Q	����׏��'2��ID=/tQ߱�?�m�ܤxQ�����#�n�!t�wPw��O�ȡh��Ci~�98���<r� p��M�~�ULg���Q<��^t`�N��yS��#y,��x4y���ė�3�z*>`��iЈF(,���T����|=�~��g�Jݘ��_�=��gVǟɅ�7댥�6�Ұ�$���`�_��T��J'˳����6q �����=���Xɾ�|E�
��1��"�$��6~�H�A�И��J�������(�JVوgl9�<���.�}���n�3��νe��.z�7[X���$�2�������y�3?��2M�&s��0�[�)�{�#�:_?��9e�UZ�(���lYy�4�ıP&���	����E
�|�����5�dz�|�u|��Ϸ�?���0)v���C����ي|�Էm�����q��o=|�L-�f��t�
r�$�#�6z�b��B����A�B���3�_�WD�(0B��K�W<����/�vL��vۄa�m�6��$�dR�j��D}���`N�{~E	96��7'���,e���ڄ;� CY��,��>�t�\�\���L�𳧜ih|폟u*V�_�^��v+l<dV0=x�gd�a�O��G�Q�˟ʴw����81m�|߆��%8C�O�!�0��eb*�(ٰ���z5��q�v&"��B�gl<,�����<g�(���zt�k/���n?��	�yE��M'�[��	N���}Ȋg�u�dQ�^�%��,��:rW�� ���ˣ.��"�S]4|:��;��wsE.���s�MN%JFN�:�N�2NK�$�X ��F�G�Ȣ;A6�����׉5��F;6~�2-v��՞Wd�*n:΄N�Q7���_?��Z��$�D�=�$w\Z�=fYm����G�e��k��:"n�'�#Y
���}<C��=��|&a揢d�?h^��K^2��WK'�"�`�l�7"��Sm*�1�i���L9������М�d��Ț?�4����5��5�05o���)��Ɵ�����	�������I|��m���B*Xt�3\��x����7XW*e{�xQ�
�k|S���0�	���ׅ�d4ˏ�0X����W�븱�a��=��ȏ���*Ȕiv%�wX�kǶ@O;�{����s������$�Eq��K=|����z/�6S�?�8(a������o����&�p�A��$�P[���B�fV"�X�aݥ�uX֬���́�2%���1���W
�ޯ�2"e����o�߈��&���;�n�e��(#d�rÖ�#>�ȱp&���� ���U*X������f�ic�KŔ�!��6�q�9o��K�2Pb��O�������wd��o\<�)D�ĜL��z��caN����Ɏ��,ؽ�����=��L䏕أ����*r|����O$�簆�.��^r(0���~!�y�8�|xR�W�OmB�����=��UR�)/�&WU.�K"&%(S`h��Z9������4Y��L��&���f��8~�5%�]/	�6�L ��!���ɬ�9׭� ǈ�t��^L���_W��Eu�7N����2���F'k���s���S�{{5a1F�6~�Uބ5B�����:�P��!V�{�Z׏���?������9
��Q����-�>�\*��	�-OE�
r�c��"7���b��`O������R��C�C���Aa���>�S�\�&�퀯�4	�ǁ��9�<NQ�e����ʦR������C�G�z�Mlh��(���7r��,Y�����-H�uB��l���vM��9�<n|q͋D=��6c�g,y�N8k����KG7��8>��56~k%Q�z����K|���L�x>M\dL'`�*XA�!K��ll�,/�x�(��Md�'%�{�W;��\��i���$�,�&��j��c!M|��X��ᯎ��������T@o_���>̤l���ύ�x�GA�+��Okj%$إ�9��6�j�+�b���i�7O�����~����E�q�@߬��	�o��A��p͘���Q�P�?S���J9d�J�g�##���oJ��������~���������\\Jo�ɿY��M�{$���¯�T{��T-�����|Ǥ�x�����G2UR�*7o�[.9���c9a��T���%7�!�՞�@k�yc!u�$�,����dU&`BxP�y]|?��0��`ߨ�2��,0ɹș��M��(B�����X�#&�A��w�\)�`��n�9~�;��8�Ǌc����E��c�bg�7l�r�(mn�z�Z�7����?���f���M��&��c�k㧬�]Q3���z4�b�bl����� �{�9�K�촩��eN2�Q�DV�l���G��ߔc�$�|,���3�v���c�9gz�Z�4���g�H�<{=��¥��Vc��,o��z��\��J��&���    A ���;.Y��԰Ʒ�.��.f�6����{���3T=&1��Q��3����4���m��j�a�{���\��Ȓ�*�l�x�X��4@����Oޫ�P�-ϵ�B ��G��ZIܯ�v��$�J����E�,*�gu�&�Q�^5�$��F��N�d%�=xF�Di�TU����D9��׍���U�IÛt������
�<U8�u�ӊ��C��~˚hf)�T$�j&�Fe�>~���
$I�,����r�c.��l�Z�hn"�Z*k��w��T)�i�Rn��/��dxQjA�����Dc���e&��6y�aH�0�Crl�e��<��M��e�j_�-eb�$BA��J���rм(�ٜo�Lp����JŞ!�5m|�Ӱa�\U��=��R�\���2�Dʚ��^TA��`���mR2���.VB�0�p'���V%���6k�=j��;6~Sq)���X��N*	N��i��O�K=6~�2%�ׯ�=��n/wΗ��o"��b�n�W�?�� �*H��G�VN�s�M0ϲ�*,Wdrs���!�������g��4�
/?�
��k�EN6��W%fM��~�$��W���ƕy���Ysv/��E�ӸFӴ�b�qaLl�RU�zWoC�ȺmrmV����+�$Nr�u"�_��O4:����~�7����(9�,���<9
�P�q�e=|'��d�g�F/�i�dN$�D:$��3��aW�ߝ^���n�b c��E+���y�a.v��w����hb|�l�������
����2�K�aR��oJ��1��猃(0�9���=��'z&&K�P$�x�hh���1���oS�g��U�e(�)�N�hy��/M���[��T-���p]��>���_�=���J>�̄�7\Ox�t��b�oz��a�j�����3�Bs�$.E��~*E��z&�4��Md{�\����$����̥��F�s�kw5�]��c��gi�O�y�*�y}���_��o�y�
��7da�hpq@R�;@��:I�)��?�t6��vx!$9W:�)D�{��S?�Q��ϫ���!�9�����<�d�uʲz7�D.�����y!�]_�a�K\�}�bW�<r���(c�C���+��B2r5��⢒��X�9���I�3�}�5�<'�|� p���'��O(M��mz��\���oD��{�&�R���;�ȱp�>E-��1�Q��S�jJO	m<�	|��=��A��j��X.r�f:���IB	c�Uʊ&�![.���j^��@���ǃ�d[ݫ�iXM/Y�C�m�<�86�N���w�t��w�6�0�#{O6~#����f�d"K�Y�o�aRx�|���=�9���gJ����;
�����C��xU9y���-��]߉�q��[&M�D�Y?P�=�9
"�d�C��(���/*�l�=�i��@�?��IʋB�t7%
5��'o�}�5�\3y`�\�
�x��8��(§����L���6[V?<ll�@� �b�'y�9�ZU�5�����7�����S��&o�.��sT�L2̸|#��:�o.d��?Ug`�FI��gyA6W'���0
���8���>���)r���E��5g|�pc����Ot�Pirǵ�E�����$V��^⊂�??~�	bx�a�_�6����8@�X���p���*K���� �?�+���_�q)Y)p-�fM��4]|�l��Wd^L��{��a@��i@1Q��w"��AU�)����[��`6���x�X��z��1��������������N��m��w�(D[�~���Ϫ�w��O�����n.S��~�ŷdS��8C�P*0�Uyň��Y6��g�6J���3�Y<{�Q�ub{6~�U�%���)���Q'��F�"�B�ǿJ�cdR�����e�A�A7?�P�����Ȍ��D�of}�wQ`��_
	�Y����~2���T'��$~�`����ɟj9�-�0�9��Į�����$��T��ͿS��Y�d_�Q��Q=���	L�e�(�����S�BJ���(�N6�r}���d���`����(	L�m<غ(�?���X��6�L,C̮m��v�,'\ip5�IV�7]���ߝ"'�Bs� �,�wR<.A�����Ѓ�)���a��_L0��9Z5�$`�;��Q�ƫ�dc�	0��'M�<{M�oN�!�+2}`��
/�N��C��񲍿c9�)�aZ��:{r��c�vv"�����#� g{I2�&���|@k������z�=�3#�Ü�^��cǼP��h�N�������G^�y>�rl�<㚜�F��Uh�Q��W���5�Y�ܒ���fz���<r4��B��4��ϋ&�����/�@V&[ړ5/�Ɣɐ����$�&���:�M
E�Z%�ڹaT�
2=~.�&����?��?����?�����?�������?r���0�������A
�O�=�3��ou}���&n-���Z��<~�"�D�d��$�!��oؽ���5�4O��K'���~��5��"��	����(�a�P9�0�5��^��{ZiH�0tq���/��R
�V�d�d�r��}����Fm�e�L�>Y_n�t�ٮ/Ͼ��ݮ��܉�P��ѹ��_��KV`$*��($�8��f��80?�7��<OX^¨��R�\[�����j��oy�ŏ'g,}س<�-�|��gc�M�F���lw��\���G�����V&p��]7{����6�m���`���?34s�'�.E����i�����^�`��K��u�/6~Q�uc�L�d��Q��4H� ����O���
��dV1mR�%�0[1��Q���GK�~�䎕�0�܉GF.*	��u��{dl�E���q��=����{A�U.�ɴ��u�/�����	�����,o�]6����r�ic�KG4�����3���r���;.�J�t�)�B��!k,�d��tB�,E��q|F!f�6�L�f�}���y^b���n��sp�����x�ג�>�36�]�����L�v��9҄I��԰���Tt�W����ُ��i��`��$~F	����)RFΥ����w��/{����<Ӭ�^[�L����f��IT���7%�%����k���� �z��+���&�51ND���]��q#�p���G���V<ߙ��������*p��N'x���s.Ł�ix9τ�Od�v�oPu#/�8�ƃw�J��������iZo1X�Q\���k�=~Q�-��*d�y��T0�l��f8)�fR1�B��ڰ���|��9'�=::|�T%�y���sm�w���f̙�� �,�4�Y	(��TM?�3}�L�@��<Y!1�i�#�	=ܖ��'���0'�J�|�i���2�Oc���!�a9����r���i�q��K"�aa�����E��)���n�k��'��a��	�?���g�����^�A�n���C\����ٽ 㟢d�P��B�F����x�
o���?�P���c�&�F���)�J���s�F��w'Ƅa��X���/*!��s����R��Y���
���Hz�F!6�l��d�&�
.��뜧9
�@E.u�3=���3}�ؔB�
���21�0�]��3M�Ym����q���Q|�]�NEԉ������_T&�~T����]�$��z���+�c��-S�i�S%�N�Fq�	^16~m�$���^�I&v&�N�8ʸ�(9�j��O����'�5� s��4m���l\�~��3.��$PM}� r�0�f��4�b��	6��{��4U{��,jܿ;e����U���&�V�m��N�}O$a�"kl���XY���9Y�ZG�~��=
��8	׍p���T��k�D�Es�JE�� ij���ɛi�y�Ȓ�as}�z4�Q������yye�Ti�x6_���;e�i������.�@	9d�T�s�s#MR�°	��k|���4�!�$��_�    	����e3Sd����'��n<�w���0�����J���?�RZz�#�MGn��1N����-)P�?�Η.�Ou��2{����b���6�i?�~�q���_��gC[|۩r���!�~�g\���	Yͷ�_s��Z]�d�<gdӡ����d�
��$�E���k2�ػ�웂~��*xo��a�AJN����S���ԡ�s�N2v]M�{��\>rm������
�H4�j�ß�4׬ɹ�B������j��WU.�&����|�wLk���Gx����3S;��&$F��w��OE�!����{�o3�$u�8t��oy�%����5$ܯɬ��.�F�J��Ċ,���\�<E��̶��y�C,���3��k�J�l�c��^�$8,��Cx3�w�f�2�U��ɼ(y)�mS�<��ҁ��U��$�\j�����/[�d}C�8�T��G4r�+?e#o�DmԞWd��M�;�����	��w����q�G�G�+e���Y�&�!�J<32�L?<w��/�����m�E3E����Ⱦ·]Eq�7���2�S����ʘx�X��>u<����7�<'wÛRi���yqPyq���%Y)M\�,�(�\
���S��F�=��z��sk4�H&�<[+�������FA �	��K,	����ɕ�A��|�Yc!KB�8�����\4�&�͋B�[)���$o\��E��.N���Nr�5L��"W�Ţ�����P,�"#�fE~;x���;�-:,�Y<mt���O|�qPU��o`�O폟uj.��WI-��KW��滮噄a�;����h��d˚f�aQi.������DFu}��En���_{DZZ���#��n�O�Q*�$i��J �ݝ1܉}��6�[*E�ζw[\��.J��W�};w�'0�����<<x,̉B'	(����P\�ӏ�p���<
�Om�ȍ���=�\2�uX��!k^��ec� /�~�M�'-����)�1{����v�l<MC����,vhD1�񵅢�F'��?𰱰%N�����b��X��:�,ha�"��� �5�tbǣ�w���Þgd#�سXS2M�JIg:ſ��i�������\�?���W�Z� v�TH�`������
2)����zm0Ck�z������#F�?��cn��K6~�d��>ge��N^*��:~���ub�s� �)l���B*r���/L>��e.}�ɣ`��'I�%~�Ԗ��G"7��	M� 4?!_,��v��-.�wxÙ�7��X���2�g2F.of緋�獃/Д��A/�~�U���R�\������������>a@�b"��_��0yE��34~iU(h;������	��g���i����b_��:ژ+&|�n��g�<�cn��|���\<n,|I�$��b�UZo�ͮ�Fɪ4����!Opઇ�=�4�_��?�/�Dae��X-\2�sF�#���h�>ml�����|OV<C��Nn6�</���6U���\����W���s�u�橊p����T���CӤ��B�kZ�$p �A�X�v�R22������{F�8AI���	M�Κ1O��k������5��&(gc�W\�v��ߋ\�O�/�;�D��DI��_n�f�>|��O�^�a6�L�BM�8I"'�C|�z�v����;�g83�ՋC����ϳ���qAV�N����p?�sh�a��>?|��D�*/��k7�ĉ�>�������e�t�5��&������H�;!Ο��-V���������M�c�0�X:��k�i�֞բ|˳���14���&��`��m����"PoȂ+�e����k!��qi�TV�b.�T��h#�F6&�
PƱ�_pP!Q/E�IUB�|�݂������F�=���r���B����<�P?AL�c���x���؆��VӴ��B��Z�u�`I�v������ ��z��H�rh���)��0؋<�qc���Ò���B(܎j�YR�	&�6~�r%a��'r�9�^�x�(�S�~{^���}�L�����ԅ�yM
����4�N��S�Ev�{�5�	i�쏥��P0����dLq�Q����-Q�7�JBrP����[�������_Y2m�q����Q�v��~�G�ϴ��i�Y��I*��m��%����_=�k��jd��"k��q|�Z�s���AG�~Zl%#+Yd#�����"7412�qVj�LYQ�x�a����!-��!�O���-ݵ(�1L����=��(6~�4�� 9Wgl�u^h0�غ��K�W�+r����<���O���s�|c�;;�K��T��ϘR�#_�x�2)J2���z��E������3Y�{�K���/�Z#)�`�8���_2��� �	�Ee�##oH��;S9Lm]p�t�׌c�X�~�����{�i.�L="�t�=�B�z�=�����V�5�P�z���b�\���H��ԙړ��*Av��N���(���3�4o>5�C?N�s+����1zw�\��O� ��6~�ڀQs�>��N�>?t�C��46�{!�� w\kc��;��L?�����w�X!��G���V�}6�%��`���_�\����7�t:����~��B2l0��_�$	�0
#L�m�d�սI���g���՛9���6R.U�p�q�����s(b��_�o�^i�˻U\'tc����������͜L�7��	��N���|=x�X�Ga��8�����=0�B��~_�Q��s�����0���a�\d�ti�B��U������� 6��'�Wũ���{V򏸖n�Q���S�
����jB�장0�7�Q��o�b�hl�D�R�d�`,�\h|�`�6�=�z!�l�57��fyq��/x�b�e!6����2�L錁���F�����q��~�tY����9��WP�#o?
<L�m��*
Vw���dڂ���+�}|ݣ�͸k�E>𰱰%�\ק;J6��W�D�`���Wb��J2a�n��j����`A���أ��xߐ�����cdy�-����v��Y���������s,����V�<f�II%:|�%�&^D�9=<�ra��>p)9Y�}�gx㴣Z&�!�yD���Xʩ	���:1M0/�񧙾3~�'23W��d�_7j�0��{s��׵	x���X����斚���S�8=�q�I����^��l����	?���q���ß��kg�P�@  �Z��Em�JLR�w��]��QKw�Ze ��m�F�O]l�����HA@	ĒΡ�(��� �D�Ħv�{4t#s5?/JfU͘���\Z�a�>���2y3%3�	A�I�;Ka�$�����7��-��� �y� "t���gL�ð�70�sj�� ��?i�
2�4/�ߒ�2��$���L�7/��m+x۹Ѐ����[|��eB'�E�~��V�,`'� W�(L05�Б��#�b$��_���;.M���[VV�q��(�����8��~!
(!1r)E*J���>�c�am�W���drCV�������\�l�����v}�x�X�G4q� kC6~�� u`�|��傜�m�9�D���D���3OٔJs�����!g���:��ȥ�n��?�U����ڥ�޽�>8~�[;=��ɚ��3yi��;<�x��
�<W
~o�a$dy����ț����~"��jM6���x�(X�G�K}��r�R��n<�"?����(��b���N -��	1N���tZ`g�3�p���Wy���Uc����2Q��6��y�$v�$t�@����b�><�y�c�2h�<p�i�UC㴪�_��I(�,?`W�}�|s��.Vnl�Z�+e�vY�8������ǎ�7�3^�aDc�'zϞ���]��l.�8~B�t	�I��E���g�,i���~������^wc�</p|���MNx��k&L�X%1	o�M�ȏ0��;�ӭ(Y�P�c�
��!��q3)��&� �  ��&L�xan�ي|���>�N{d�+y���_��E.ʧ�/���?�@W�si���c�O�y�	e��M�M�b�D�E�2\thsu/�h�<��v��d�]��iC5��x��P��Q���R7q}̾l��딕���XQ0��K��2~�6��m�m�$gd��g�1r�?�����j��P�z����Lt^
r��Js�`��q�m���·�H�l๐{�q��c!M�{���n�Ov��TO��Oe/�/��N����L�E�D^�x�6~.A�b����.*�0W�a`�m�7,/����3rǋ�.22נ=��1'�@�qp���oс;�L��/Ȍ��V%o6�n�,���.�w}T���Q�);p��R&�B��{h�f}dP1��*�w
4��B�p=2�tZ|[��\7@%�����^����w7�(3�0�4�����7\d87�Ulh�X������`Sk�p)�3������B Q7�]���zޘ\��v2��nɥ���{!K��ۭ/@h~2?#u,��!��De�+K�otǗL�-�>I�?8
B�e�xzx����4���Kp����n~+��(�p�Ư�	}L��l�pH��v$V?6>$&y�E�#�s"M�{�/�����_=�P�	"��L��w+��?9������[2��,����-��/6F��6�w]hP`Ff㯘���l���鋁���5~Q�0��7\HF.3�<h$DIb��(B��}E��*p=�K��(�D������k2�U�ӮU3�njoN�kw&�*
lq��)~�C��e᧒U�`d��x.>����80�
��s��;���F�����|`�Uܙ���7�Qu�*O7��9&��X����%��v��v5�0%��0�)��6�K��-� Wpx���-��B���]V��N�"g�	�`���R���I��W���	4Hꆑ�A����<�����$��7�L℞"el��<~zl�;��Z�黚K� ��3}���_�<}C���|�����zB������v���`L-Z�n��'6��8�˦���w0�<��Q�.�8�BU�{��d{�z\�%�K
�2���3%y�^V7
�@��sc���x�.>p�
d���I��j<y�ü p��c�'u=�$r��p�
EkO�q�{����H�yp~��vµ_��[T8��'r�̾������ԉd.1��ߒ'�<�cz�Ʊ��cR`����z���u\�kz�!����4˔&�2_]<w�1QN�x~��,��_���J`���h\7�]�z86~����q.��A�'��x����{��F�Gf��)�����_�=��3��C��d�L(�a�T�ּ(Y�Y^��@��8q��r����`&M6��4���;S!�w���v����Z��fO�#}x����(L��Pg�
�u�Z2P����Dh}�P����mU�Z{�?>r��P-�i��a�S�����P�TՋ��P+Q�����7�:&���T`dr�;�~߁ab��NT{׸�xF�6�����������-ԋ��b��R�&�W���P��uiu� �1$��k���P�YpyO]<7�cJc'�L�
~x�B@}}EfG&�	�ȡ���=��Q~�<�gr�2��٪�N-o�sp!�����|��o:&l�P���"WdyA�RZ&�k�4q�x�Rlx�����F k^Kd�Fɯ�f�w�Od��� �ɠ���G&z�?�؋F����A7��H�����O<�	دx�8�b�(�X{�5���8�b�[t�h��nl�l�~m�����X��/�L9�<Gc�6�uc�2�R�|�`�`�adO�N������R��r�!���3#��?}�j�d���]���}㽉��1��m�{�+�4�8�<o�	�\��	c�7"˹ W��1�W`�L:P<��o��/���S�#_�&�c.�8�楍�d�*A��b0�i�A`B�8�8��O��R�jU��ҺV��0o�%"06��ذ��j��/2�Wd� ���۞��nL��
�Z�ƍ�w��DL��'��7#��ėM�o��k{��9=�aB�Ã���3�j�r���\>�,Dο���f>�c�£��� ��n�[��E��(j����i��~���$Ę�ƃ|@m�z/��X�13o�͂OAoG*l|�`R�s��_�Ͱ܋WOWL�ui���V�(�fLV%G���j�M2{���e)���X������釁G��:��a��I��o�@���4��,e�(PҺ��L̵�G96~�^6�3�v����i��.��
$����Lf�+Z��<WB���,T��E���^d�B�Xx�z��i�)�I�$��q�����R��3�����ȶ�W9�3ڸ�j.lX��:�1��j󅉈K��m�Ȅ3~�W����l���3�}�o�o7����o<�a���ژx�Ǌ��6&q�Q�X���IQ0��;��M�@Vs�����A��6��k�M�i�y�R�(�_0!��Ԋ�<~.E�p)�ŷ��#�,���n��s�����?�a"�w]'��_�Y�C%�&�F0}�#��K��RL�ة>������@)r��E��lM�>��q���b/t1���'{�������Q�q� �{��&��(R����eү���9������TM���qA�lǞE�+2�e�ɟ��k�?����d���� c�dʤW��!^*�{�᯹�O�*�gX=�&�� �QE���2mB�j���tI������G�s�ı놁���� ��\���@=��r���`x�D^zh��÷�/|м`�r���'��5�����痋��v3�3FA"?����Cq���q<��o�?4��0����J�3Yx	�E�_�:Xx�Xx������7��(��%�i+�I:�O6�LhF�+�59���81�Q���$�bl���F)�:�B�� �J�<�825y�w~�X{��=2��O���y�JEn�x��Vx�XHC#J��U=<x�	F���L�جj�bi����u_����7\���˲f�_?���,E�`2oN�l_�
�6R&�FC�?�9��LȊ��Wb��u�$�� $)�xc�7
�Ag�d�A�&&.�.�J}�5�!^�<�8~z�V���0tB/���ƿ,��y�������A��b7�\��k��d��f�r}��s� 	1��7����<��Ec/��{�=��iY��,�NY�N�2]�G.�/�V?f4�L����V�m����+��A�&�����s���\r��2	��C�N�`�>�*%���w\'���Ʒ�[UI�7ӤOe��8�� �*�aVr)Y_<j\����8q(^/6�V��!M{��!��a32y4��A����ދBJސs&��������e��w(FB6�T���b���gL�:a�$�Yc�W�2�+�<~ҩ0���TV�x���@���~?�*f^3������j�u27�d;�c��uD]��=���0���V%O��0�q��M�	ŭ��L>�:7�xvε@�.�J��wbl^��kc�����>�[��P�������8Z���o���	��\?�|��ɿ��������w����}��W�ֿ�w���x�+�y�Q���(}F�q�����geljeb�glj������ �S�y      r      x������ � �      u      x������ � �      p      x������ � �      }      x������ � �      {      x������ � �      y      x������ � �      U   �   x�]�1�0���Wt7m^_)�N8�����:R�	P,�{�L��v��T�g��
����X���Q6��� ���BAW�C�L.qow���:*�V��"U
&�=����Q�Q;�%�e�P��� q���Z�:�n�����4I��lx�4?X�~�0eI�����|9�]2ƾ�:#      N      x������ � �      n      x������ � �      l      x������ � �      G      x���Ko$ْ&�����E��t?oO�B�߯�`>!�p��'=�#="�I�f��0����iԴ��j�V�Z-�O���̎?��c9�\�Bu�KfT�Џ�c���g�1�8������E|��=)Cƍ�a2�c�[a�ń�ׂ���P���Ȼ�B��]<�����po�_�m��d����u?��L�Iq�f�"���!�,����/,����ֿ��_<�÷y��5"�(���,"��"��i���t��b�]O�N�"���0i���Tʫx�V�ߥi�\\�@�ZF��ȗ�h��%�Y<����œ9<�����n>��Q�(�9+�3IǱ��}��m7{����Da�1�|:M��_�y;�8��b�w2���:��m����?\d�nRL�ٓ���x���##��BQ�}5��j�!����0�O�b�dY����M2z���E��"���~2J��]�(�,\��_!�:��|��¢HG�ջ5�	��CK/�Z�y�<�ώ.�p��.
����j��^%t,ý�iv�s05���V&aǨf8�w,6%�e��ڱ`:��XPF��2��O��xi"#ι��g���a�^�M.���NGp��p�<���J�PE�r�^N9���q�O&�߹Nnc��լ��V�BA���K�������b��I��^Hr��B���n��<��~��A�����j\I� ��N/���,�Mf��nix������y��k��I6�'�/w7�j�r�f2��^��`�j;����HSW:��t�Ҍx�}��Hs�_/Fw�y����m���!�*C#�N������N�C���i�����}s:�7��`-���b�5#2�?K?���=<h��WqQ�@-
���[���*��y\��������'�G�:/m�Wy�0�|�������y2��*Cm�P}ǮE����i�����y�����T+�(R�P׿�J�;�wNwg�.,205�����`w����`��T?V�n"�/a亄�W�0۝] 
�O���4�	�a?���%��ޓ%�*j��^>r ��C�6�˧�����9�_���W���Q����J��B�0[>�' WV����+�C�;��ӻ�x�o?�o�:�d�֫�6~�|�������צ�2�;�����o�W�LͭiR�a�8Ѱ�<U�Gk
�"=�`��]�psvw��,�:[�#���Hf��&�<��	��
��Z��<��'�$�j�
�SFRK��A�>�XB/��x��,�$��q2�����'	��*U�ᵡlA��!|�(;�qpz��_Ά��0&
C��C�M/%KEX���1b��N� [qy lH-�Gk�� ;/ 6:�:A�?�����f��&���B�4�]@��d8�a��/���dZ}��
�Iqg��˒�:���qV�2���Pl������¯���pQ�8jI�ZWm,) �S�\o��o�;�����~g������&��Ih���:���F)�������\����!
�I�)o����ԁ(*�rtQꑐ�bF�}��6V��	�1p뺽����>����k�[����k�K����?4%3x��GW��"`*����⺍���ߥ�k7g�~�����12U}����w)ƌ;�,�<������"V�W�fI��~[.z�4���s��:��.���Q��ր9���S���i�o�q:�`����(`��w���J�?���K���R̒n�S|z��y��Lg�4\Q96F�wH�����F�{3�E`�`�g���a �MP�ݺ����@H������5$��\Ay�ϿC|3�����ܖ^�O� ��ws��x��"��x^��dZ��vY\sFB߶+���,��b:}��Sm"�af�(�q��q׵�����ĿH'skM৳P �?g	x''p�;8uM�Sdɼ�O� ���~a-��8)�9��A(ݒ_�l�qqX�������������,���>w\}� ǋ�˛f�)<⁡�uۅ�#�W}y���=�S�}��%)��bLe�cvGx�9�'m���-��<������3*�-G���x\�L�� �{U(Pq(NZA�q=����s�$����ZKv}��6z�N�y.1Q2����Cr���4����B�:oj&^'�X��4��~/-F��qq_�e�H���|���XS�������	��M�4��aDsS���"���Wsㆡ�'�R��P�a"�88>���^���9�"����zU�:�t������v����p1��Z��0>�BI�R]'e�:id�A�{�����FV��� �Dh ���c�q� ���H>�>�S�m�&�]�Y�� YoMb��� 6&�K9�Y�	"o�<<;��;��~�N��87�&!t�X`'/�g��x�?������0��2C��^ ���G���+}�Y�����~���@��D��x�N�hU��DZrF�(�\}�Y��J�1�����	���L�n:�$��� ؋->�v;���<��G�kk�t1���4ŕ�������p3��),Ȁ�Hs�������I������U�Y�7[���PS8���q�>�\L.��j?4��mS��@1*���lwe{Bx�d
8��a�u:��6)��SN��q:]�]���!�H��
Ш�D'���(K������0��cN����7����xh�<�̒�E�8��B<?�z�^O8�3��b�:s�"Mb0�w�Z8�I���&�I���@�x��hs]%U����hIW�RGRQ��K�-VmV�����$�����o9g�$�ˀ~�׺(Ǣ����v����Cm,x4ؙ���S�-��A`:���r��s����n]�ĴT//�6q�q3CP�p�闦]/����$�w(?������
���/�q]��-��.�������Ƒv� ����i�� ���rĎ�xԠ8��(C��(r�#po�����/&���Wd��Vl��k� %�_��<��k��A�L��e;^5����ђ�u����7��cmy Z*���BWP�8E���	��Γ@��3�&�	;!Br㫏6�^o���'	&��)l��O'�<N�E�'6Dr���.#� Ü �#�.� ��<���(C+贮p�uG�kIJ��ك�PC�VAZ<�� �J-h݋��<�1�P�,A���+��ಕ�U���	��/�T@Ȅ��#{W`� [Wi�J���bW�����5�4 �&� Tл��$��w�tV��~@�Y�aZ��q�OP)S!I;Y}�I�	���,#������EQ�V�!e��b����Ơ�F(x� ���J-�*N�PA�@��R��*מ*��-�gw1�o�&(J��	'�p�g���"��k��ݸ ��kTد_�e��<� �:<2��ɨG��m኷�[j߼|�)�'�h��I�4��}A�i���ָ����>��Hg5��j�O�(���k�d�E»X���ų�J�0��|ytD-\5�?�_#������E2Λ,���(|+��U��W�w�fX�e;�n.�(N�+���Z���C��㕢�5`��ҫ!�#]
�r�е��^��N��(^����mPя�W���X�?�b��*hh��q�]/��e�����2�>�Y���(14aK%����os����	\A�6w$�*F�4����|�!���I��C_OMWB� �!6ѫ�<\y�T�x��[�U�p7��V�Ѥt�I��N1�[�W �gTI�N\��8�*,������0�ϿC�WW4�,�&$�*��T9��;)��,	^��1���h$����t�,]�3�6�Ms���*2�lb�H��\�X���T���e�cp������")��X8$u�m֔ˬA�X^�Π�)�����b��G��}�f�y��-�#Qo��<��BH�~����+��讬-���h&%ŉ���	�G��?��E    2�{GC�@�����>�:4[����(������?YL �-����#�(<"i/.�^<� 8�}Y[���8#.�
�;P}���^�Q�bQ[n(G�{G�E�r�r�"��{ Z�����3/�1Ҩ�TD0���r��%�<�8e��Ė5`k��R�����E�|)Wϗ�Q�u2�\'��p	�E�Y�tl�"�h6�r�aDh���o���ރ�A�O�ưa`BPgS��)��O!�{�(n��f��1l�Q���I����7ɱ����3��	5�r��V��7����x�l�]X��n��˄c\S�|Զ:�����_S[���3�|� p<�Q梀j�i[������{��bL}0�-�ʯ�w��q�V1Y�F�og�̛�f������R6� ��7P�o׀�T�r��u��ͭa��u_Gq�a�C�(�F��Vx��8�AӪQG���N�5}h���DQ�����d(0��9�@nK�X���L�������}Y�Dg�&��<td�Eeq� �fM��%i�B���Ͽ��%x$�N�a�962�b�GUO�w'��W�V�j|0<�B� {�����Y��\��*㐹xǒ�a�ϓ�>$�)����|��b��7��/�-�ZE։qiV)��t�%pU^�Y.0W\éZ��!hR!2�FW:W���N�|�d��pY��*����Q5F:��]�v숾�QD V')&�ޗ�"Bi�W�'�NiرĀ�d3��vJ ,�/��f8�ԋ��v�
�C����|������64\ 8�J����G�kE�^�_��	�����/P��T�P�X�;�/g�nS.��[������d�1RF��)�P: �ntꝻr �?����/��`�%��Z׻��wb��^:N&�e���!�ꨒ6,���y;�$���s�&�5����8���5������әy��̇�{�	���&yZ�d()L�d�,jK�ֿ�F�{�(L� �f�4�+��� $�.W�#*�#B��b��Ȅ��{>���p������"�������g[��%�T����������t��9f���Ib�
�?�#7l��,mkߖh���N�!���r6N�MAL��v�u�{������l���g'���7���E�C�O�F�;�v'HMoRx�[T�Ӧ��mT���
��P�����	8wl�H�=�
�=e�ߧf!S����C�j�I�p��_iI��s{�	��TE�uU�y'Ͽٍ��*�bl1\�ď���7F2Ab���u���hl���%@�T��i��œg���%1&���r��uW(��۽}!_�X≯dc4�AW[Z��ؙP<������>�%)�$�a aw�[�4�*��EE+��@�p��x��N�`��ڲ�Yu�|vP�%��WQ	����]ܥ�m�"���"��Ƌ
���T�
�\Q��>��*f*�Z����� N )S��i��� d,��4�ӝ�qQQZ��N�fW�T�k�_RD
��&\�7��w�l��]:Z�C[�p��T��hC݀�%xd��&������؆���p.��W�w�ϐH�� �[����m_�gp8��_c�I������M���^-s�K���&m�6�mD��p�g76�u�L��x��'gk�z�~NW��Y� Pq�/���S4��AU���He����b�	%<׺��N���hc����4~�(� ��J�t�_��0��k��=X��f��/�b"��hU��	ҩ�%e��dvR��9��,��j~ �X�	Mj�I�_��𹕤���F	mC��ڄ`�hr ��.���T��JޔQ ��N��gb�g�l���s� �o/GT�@�G5J�Il��>���0��	r;j�-5��P)I;��"`5�w�������c9��͡)H�?�Y4��H�(ib���!���8��A��jU�mM�x3���N��Ԍ��mn�:"m)L���'�"�V�o�Kݷ LD!��d,�aO�
���QPC�{�T������;g��s�;�*� 4,!�L����s 6k�ʝd����Ц-j'�I�tҴ҄B�d���D�~2)�jB<��HqR2�j�B�!��^gk� ����?�;!-	�e7���\R]W2�/r=����b�5a-�3L��h]4��E��	%E��O�sGj�Q��*�ρ��xq�CH&����*��f0+Ő���8Z�|�!�`��GkI �3,�}{����p��.��Ap��Tx����0\�,~�'��^7$;�	Y�l��n�Ds���>�T���h�袝r�l#����������Nm��#oŁ��~~E�甫�x�R�c��
0�r8t�����P�+K�4���X�8M3|��(QS�)��&�qZ֍C����஖��FQ���c�TY*F��O+6+��
�����WƓ����܉0�?�0Ȱ�ʯŕ���&�x�}1o[
{Y*?׽K��N���#�?.����rU�7�)qM�z(N���od����w+�e�[N���X!�z��2�K�1(���OJ�_��x�U:���~��X�qJ�Da-�vnC��������'�Ͽ��_+��O��o��5�v���:�mV���2���o;�j���m{�l��G����z��5�X�İ���W�4��-�����wt�S�us���	%3U�k�9��m�u��$F]}d䝗%����ﱚ�0�狫��<�kh��w	�@���ړ���cE�Ca���JN'��+� �;��բ���js�}l[@V+��(��b���T]��:dzn_IV��$�p����$u#c�G��"�}ۺ�ZKN������l�����Yjeeh�4w��Cxe�����|��y��J��H�M�/�Za�$����_��0�˵mn�J�j6Y+�a)�9\r������J�8�鮊}�Z��&9M��N��`yv�IeV�6Z�pFyc�X+�c!�Ԉ�����ȧN쬉|��,��*5�1���c"኉�e�M� ���C��E�X�R����1݃%\=X[��z��u��`�Ɇ��ۥg-1��Qc�S�Ͷ�+���zD�M̎��Z�)�hm[���C��}(`������EJ���I낪��/����ij�O�R���iB�I�m[�P!��I�u��f�;��A�L��)lѾ��ӁP�,iV�.���}��V����V�9��#
b7sm��U������W\��Y��)&h�+\~�I��`���cl��pZQ��\�I��~�4,{��� " �
E�k�T�p�:ʰ�h�K)�n:�╰�s�\��k�����^�e�h��(��dI#	ۈW?�z˽���Vy���tՅ)�.A�5Z�L�Tʘ�� �Y�0�p�0�?�<6�
��#bv�P�r8`f*�!�99�5'��F�\@�a���3�9zK�IY�J�F�%s�ƙ���N�N���!�>���
WV"xo��90��rցx9O�� &4��ǂ�� �S#0����}�j�u�q�d���l�k͙��W��.�a��0A@6I�K��\K��|�P!ֲ��D��Qjߒ�cҮ��JVaL�M����Ar�49�*غ��W]�����U���
�Ɠ�c-�ᄦ+�m�9>��A��˸|�;�i� Y<h݊-p���g�%��ou���T�[�r颐s�$�}�9΀;�9󇇃4_���6��C
�II�H�cs��Jr͛�-��`diM�%�*y�dL�*�'ˡmt��JZ�,����f�^��6��/U�nݽ��}C�9�T��V)�U]�^Q��poIU���Z	�
�"�_�M��c�i��|�m˴ a ��h��-�앥T�f��wd�������������o�����������<�K��A	���;�1��`&�l�ʘ��$�&��ڲbk�n=\|�*�]g&�
 e2Z�l�^�ݖ�J���@O�i2��W��(жp!mb�Zr���;;>��Dʈ� ����[��}��5!Τ�����(�nK���d��Y��:�5��EC$k_��u6�k    ����� ��I*eо�;���M%]�(|��JY��n�f�U�^����	"��ʸ(&I�m�ۭ�������?�*�hPd�mD�9�s��ɲ�z��d�O����т�n�@��J�ŊrVyF�#�d��{m{�#���sd��	,�U�������絕�����?��kC�����񳊵��M����68$�i^�5Nr��	e�D@���e.�n�RP�T2?&5Qh7)
;�+���u�SG��*��+5�X��������T��#FN9�ɺ�E�Q��<?Ǜ� ��ϧ��H�*3����p�l�j��ajM�#R�)Vt[AhQ6��S�6hbj`�H��%��`/�lS�_��c	���ZW\�w�.E��w�M�2��q��z'L���x�&Y孒�kRJ]xQT!�N�qW-��v�K�=2؁[��EBk�#��P��B�P��i)��1s��cd�1편���]��pH�Y�RN�����,�ST<����㰟���v�Ṳ�K�%������鷧������ӓ�Sf&����x�{0�أ�W��L�ڮ��
�tT%�uuu9ycn��j�p��٢�I)Ѡ�sZ��b��	��y�ٵ�,x�*�8'��[w��太s��$�������lէj=�F|E�����s� I�Ju��o�����"�gwC)l�N���}���*dBg������!�]��������:����b��v:^�x���W��Vr���d6/���ݴZ�F.٠J?�+ra՜���fQI� �&��涍���/FY�݋;��A�:B����h]�d���2��}i<����*��OSy����.F������"h!�����ۉ���e騰���lt��%��KIi�T��P'�F���ēJ��H�R6�}�����U"Y[��4{j$ǅ4-:�'\I?@�H7��f��A�AIC��	Mq�:���؎�������?�^t������?��Zòd�g����r��Τ8�t>O&#�N��l��9��}קFu'[�X�Ya,&IGh��ɽ�º)����Ϭ;��/G��ڤG�O�E۩1�h)e�9=8>;�/�.�+[� < %�7x��@�ģqr�َ!���K�	��9#o8�$+�L����i߿��?�,��b#�W�,��i�E&��t��7�l�3�����W�� #	���k1�Z��A�6�	��M�� q��ֶ�'��� u(G�H�|AVhg�?߮�.Jp�j�-�z<Z�����/�"�zI�p�2��N 9��mp���ea%�պ�'C�l��r>KG���[,z̟�q�[NG�S����4�F��-�K����Q� ��M����Vfi�
(dbi�k�W�C��HS�f�H�+!YR�q]Q7�
u8Z��B���g6wv=,5i�1��B1��F�#I�:}0G��\t��������`�l�i(S�Ϩ�H�x���ˍ����>�8��25�e�8�eD?V�z,y]Lv�-^�K���U6IF
,��Y^M��rl	�qo��D��hۯ Ɇ$%�t#}e�hFQ���7W��T��~�����Q����0�J�t�����%q�8�I1O�����k�1Aa��U���ʕE�����E~���~�P�\34�k�O�d�\Y����ۚ[wY�r��q�&��#�͗AP^V�K>d7�ODؗ��MK'��+Y,x�T��9�N�"V (T9�H��)��OA$�]$8akR���A�;I=�g�,)�"�w�x2J�.w�X$;m�b��@|�2�e�{'9���b�(Z�@���d� IK���7X��C� �}�gS��;G�u��l��!�{'�珸����z3V��Bu��up���P�N�~V�zVm�rE�����*<.�F����������>N���V]ר�h�Ӵ��W�4KlA���NA\g��������-G�u��5��*�3[�|,%+�n��[�/�N0W: Z�">c���ۡB6�~dWC^z��[��5���<d4���(Da����
��([̰�9�P	��@FT��T"���)�;[�����we4q���Ca(��,~|gqY��a��Tv�Ѥb�"c���bU�3ҡDI9w��ug��,S'��+��%�Ԍ�.JI6����G�����ul�o����t�����w*���7��h�>^���fk��+j�8y�d�/u��N�6@�4!9�u��77k�a<I�`�z����h�̷�)6�,�Y������t���i��3�do}D+��90ZQ:!�{��W%}T���]Z��>Ғ�Z߭{��%�����
x!��8���D���a�Ӥ�c4���~4���~�H^���R�am�D��)��TU�Aɡ�Ǫh��gyQ�
�2d��I��E
F)�F6��� �nH�C�؜�a9 �m�]{{��{������j�� oD��w�i�a�|�2�+"!X_�?�SXG۔> �)\��+dM�I���ZL�s�]A��/�|�L�X	�M�k����a�%+��Pœ�FG
l��)� �o'�g��Z	�,Q�y�O�v�HI�M���J��4�xh��DA��W���`�'�&`�O�'T��I���<�����GQ���E�l��6�K%�����m���1�8�#�M��4a3T�qT)-�M�|�+��r��	�r���n<" �H�m���y�&XX��tOn���<\�դ�vW܁�d��Z#!V��!����ۦm�s�CΒ����*a�-
<��H��,�����d_鸙�����m��s�e�X� p0���ν(A�kG�'%�G�{��(C���<p�UTC�|S���N��>A,i���m�%�$��.N�٨"�4E~p^�$�w�@_�mQ��.����m�Kc����I��3�[m6�y��(i���[��"a=�mS3k¶V�@@�9�mO3�1g�Ɣ���r=�R��T�q>霜��Agxp��SM�d�'ؾ�
b�[���Q2]eh��@4�v�lf�׹�#���%�%|��8�m3�m���$�����/5u���N���<Z� d#_>�s�ePd�<���d��]����e#A��XDR�=S"��n9x�"��lY�%o��B&�*�_h�!���:��5��P�c�i�N�L���3�֝���>�(�,����Jgp�]g`Y�Z"�pq��N���<imٔ����I�-����lPL:_"]�����:�y���ڞM<%5s7ĹO��	�o��˙����_V�:�"	�炘��u��ʫ��^����\����y!ܻ�3��R�A4�dR+�p� �ȉ�m!��������������?M�\�Պ(�\e�@��IF�n-�m��{�j5�1�pW�P���h�(-��M�㋼��#:�ȴ��0OWq���q�w0�6e�5a]��3A]��m��;-{i|စ8[TSG�/ � �[O�6^6ǽ��r�2���I(��ͽBk
��'��a� ��Gk�lm��Y<��y�F�f�K��,���}vXQ����:0P�	���3����f�)n�$-�FW�*��'����m��Le���z+K����&�`Q�b��k�F�~����(��e.���+��N��]��e'�%�㨨��my/r%�]�A�p�W^��p�%'V�K��g���%cT՗�U.S%B�av[i��W�K��;�T⫪�4T���%_�K�E��{W���;�.�&%a�#�ELe��LR\jo��C!f8o�g\��e�RC�j=��-|e� �G��e��V���7���re���5�F�%A�ATt�D�r'(�lc��Z�j:�ة�3�d1K�CB�kH(ķ�V��
�dn�ɵ��X5$����K�]H;`�Rx:����*ߏℤBg[^"���\���o�}��.��X�#�VtmF�j3�sK���2~��6& 7F�B�C��"��T2G��sV�A,�\���Ci�C�Y2���7@`�]Pm0�.�(W�".���K�����I�t�.�i#9��4�V����,�D*�і_�r    ��
#�)eE���ӝ��8�_�`��m$��/��8�h��T������5�SD��@� ��V&���a��X�.Yh'K52+=������_�݆��m'}u?ÁQ��>��gh��q�M�T��fXM���NK�<�����/}mT_;ԍ�c4ݒ�]-��O�-��짘0���i:�֮`b1�B˫J��m���^R`��IU���BR:��J7K���4�l���L�;M���v �����&�V�0pD��E�H��Eާ�Q�yR�,��'�J�QӢ��%Z.�t��߭0:���%Ϩ#O��+W���v���i�_�Ev���x���:� ��>�^
ns��C˼z��q;�`A�6�YҜ�{Ű�|`E٬��Ar�ڙ'Xt���0�fe0��a�yC��3�Yyp������S�#�	#nh�c��\�y����9��;�������?8��v�/gÚ�#�TN���8�كIZ*~n�T&���o�R{^q��T��X;`���[��a��w.�H���y���0D���I?�J�Ix��mYR{�@R�6���ƅ��{�b?=�>�Is{y���r��Tn�ER�EC�����An\r�M-���J�_�A��[MiPq9�m��>"�*�����&�g��</�yR�ڬjiq
���Q�q�Ҳ��뺭�8�Ty�Є)�"L��p�O��X���'x�I:k2��)�ghTn\�\Fj9Hz�ntX�QS\S�2�օ6.]h�ǲ���8˖$&xk吟�TF�Qw��e\���R)����`(�{,�=�}�f#�=Q�>C7�Wc��`�b�ҼTty�����b!��R����+NP�ƪᖽ� 1��Y�B����=�XI��p����/����9��\�~�|]2�����UU�"�OPH�� �����r�"*q�1O�yKK{���4�&�S�"�6�,�nM�6Ft�2r%*@�r�j)�P�k�zx�KO��-�&����]��Et�.r��@�|O+wo����Ɇ��":��yJ��I:Ǣ��Bdg6�PP�!�iۑ���T9c�<��!X+F�gh���l� �|�d�
�Hմ
k� �����yI��/)u8C^NQ�":Љ\����iX,��� y�R��򆤊��c�\96�1�;y���G����*�̲�������^�6%�r���Xy�A2�1�x_�"s�c F�Q鯈V8�\
g �m�H� <P����ה�R>6Gu���.?r�|��l��Sc����G���B�<��B�u"����`�9��?��j�hp�н��WN��~nR�����O�u����V@��gIj�.��pC��;��'ͤ�\L*E��;)1�J|V�4�p�-d���k�Iٮ w��1����PJ��4@�V7����d��VƘZE�gU�"oo��!_�1�pbCM���/����W̐�;O�~M�^�|A|���d��~4W΂=�����v���U7(e�P�Bp���5w��9�w�Ԝu����{�� �7I����TE�Q��^W���'X��V����(4T��9��E��������T)����<��#����i�K�8�� �"[�� ���$[<9�^��	���(���\���3{o�RųɆ��B�EId���R=�#`�Z�k%�vl�enUR`�e�u��Q�Wi���
��Pu��,��}JAb4]aծ
+��P��G:N�!�eN��!��8nEg��+�-��cX
MA0�����cj�7R�Js���k, r�<�\��-/����a��zv��A#jF��Y=�����i�����ͳ�e}M��9�McE�\�3����n�8��m�� �pM��i.�v� �rO!p��ͼrbXє���j¹�.����O��r��j�-7��1�}MX��U)H���X�O���"����E���
�t�]!$�(N�G4"[U�hM@+���*@�\�₀��f����Ar�ݟ�]���Lk��q�VC�\�.`����j�ͥ]t.�ྡྷ.�8/�qM5�$�*t�U3����R�`�EU[ө����+ҮW��+��2�,yH�>��>�C��e蒷q��%��"	�+%����dӈiA�h��n\�u	�dI��:ߣd�R	j�����?OZ!�8���[�f~�4��0)�g�v<�j��A���)q�= �qZ$8=��^�M��{�DK��*���\�U#D983�Fв��_~���-�T�����. ���qn��Pզb�,9^�V�:AXp1�6z�⒪�ٮ-��i<_��=��j��`�c74~6.��Z������t[�cӅ���H���[����_QU|{�lrF�O��z���d�׾v�S38��\tz��3G4"��&9"�m_����~=�����l���=m]֒����]�L�o~��"��˩(�.$���Ϫo�3����	1��"�LT��,T���_����w�3�l�V��}>���hB"�����J�vg�)����|M^%f輸q&����L��,��Q�M����4�/Bֲhq��%�����I ��ba�"�Hv��N7�����>"W��H�T�L1�b�Y�޷c;����iD��E��?�K�ޭ���!x��F�4���UD�.�\���y�{�ʒo��*����`�7������<"yD.��J��e�em�DH�A���]���)����ޱ5:_��| MԈn��\��
�z��M������z�$���"�hI��^:�ⲟz9w��=-O69rMe�":c�2v8�t`Ͱ,O�����F�F���\�^��Ѯ�1�:��?�>�BM ��J�%�پ�y+���w���Z- ! �Z����~}�&EUi�����1`�%�|о����E'�+��m���c��
�":5�Rc�`䄓��56��}6���9ݝ����+����ǣN�@�T��)��+X��C��3���ΝLa�g]^i�A浔���x��㑮�( 2�M�[_	�&�9�KE51��Z�y��gU������,p.P��f�4� ��w1l(! �}��������|:{���t:ۮ��$��zx5W�6*��+.��ȰKxFA�To.��kk�K��r��yz�_���?_��[���,R�"������a�%����9/;׃Oo���>��?�yп��=ޙ���<�~y���yO�~�S��Y��K�w�t9]���?�/��(��?��k(�мf�4���L��`1}q �?�M�ɨ���	�T	��z3+��d�q~~�ց_ ��y��+o�[���+�V�0�B�u ��]�:�g+��;�y��
~ ċ�M�K)�����;\�x4�wv����
v��ƶ.���pgp�&-��KA��m]B+3��d]ӎ���퍕��n*�C� ���X!.�lX�����W��l�ffVZ�݋w���L��k�Z�=�&��z���Zն��xǘ�تµ5J$Bp�)�!Ew(Ww�@"�߱��sOwv���[���ܾ�,Z���-�k������D} ��`1�U��#���
�-�\��`���K��=�ܒ�kVu�p�(2#ܾ�9�%��`r~�h�t�=��N�e�$[*�U�$x�xW���R�c1�9��T���]�廐�]k8�׏Y^��\p��T�\놮��7K�~窈��m��ߛ\���r�D�T}�u	<jӠ
�(Aј�W�P}��п� x�T�[���b`V��>��d1k*d��{`��ɷj�7v�*�EWM]Rr�%؛j�a��Ÿ�� ��Q����~k��o4�E�j�5�,
Cx&Jީu�@�>8�C5���s^��\�W~�U϶3Xk��P[ ЩBMf�[���J¢Ɛ ��R��X���O�:��{��!Gf�e�P�a����W�e�j�����"Fm��ҷ*�����W�G�h�����1.V�*5�|�q�@��Y�9z�x6��5R���Lh�B���;��C�� 
0j�H�v%��>�ve�f�=����P? *�5���q��Bݬ    �J�<��!f���Q;�Rv0ZA�j; ^�� 43�F�H7��o�&T:;=�x��� ��/zg�i�x�qX���:�k۲*ut
�����V��RS#��TS���u�@{��x�����N�gM�|![zh�J��l�R��F:�r5�!v5i�h8h\p�wn[�J���~�����< Ig�����.��Ί�Ra���� G��X��zeX�R��� ��l/h]��p2_��'��=ʮV����%.~DӰ"K��Bb�Β���xh�2"ߥŭ�_�������M����~-�!@II���=yO	^5<Lf�d�;
͑�x:3|ῤ�49x')������w��*�)ʝ���Ab�����n<J�j�J�S�kJ�G�$�b߾D��S�y�2Pw���͙e����7�L.�	~V��y%Qe����Ȥ^��1��B�b�.�;���	7�����8C���<r9po�8f{Oj�-�:T����'r�����Y�� �B|�t�ov�ة�FFb���I�ʝ(���M�d$��Ѩmل�7��P�ͰjP�)E�h_"1^�����r�1TM��(+ڲ8�谇Ԋ|CkM��ˏ�,BZ0<��X�G���P�	m߬��޺2-*o�睏Z�ɾ��3�|�͇�fg#��/���F}��_����X���w�V,�K`�Z��Ro3���W4�o6E���3�C�U���WS�DM$p^@����>Yۭ��� Ӑs=[�������:N��
��~V�_z�������OX)�;����T*OWJ\�a��"ɒ��$s�����7��>�?-���)F�(��H��k(���w{ϗJ�e�^�ɟU"��~�P(�}_2c�/�|to����Ձ!��Z��(�s����Y���æ��n�/�z ����֍-V��^����!��>����ԾS�p��)�����g����&5���̈́(�����+^=��0r���r�zԮ,�}4i���
�10���j� Ӽ���z�O�Bx���\�P�}ӌ,�߻�6/�p�3X�$G9Ҳ�zb))Jg[%:���$�PO��-��z�U|[$C���İ��F2��Yݿ`2?#��Y�_k��>�?!E<��?�6p=Ŵ}KL�^`�h7��,YnsdZ����N���3��T�d����x����v�X�|����V����|Ŷ1��{l/���ȯ�Y5ԡtl/���/Ea^5t�ڇ�ZR�4ɐ�4�[;9�<�v����Ӿ߃�����.:o���󘧢�����nE;3�:� ��׶��1���Cf �`�i�7��P՜C�5]�$���y�?$�t�4��7�!�'"����sL3.�c�.F ilk+{q�`�U���ٴ�����:��Q:�=�@����咨J�~�l}�����r���Q2�%���ݡq���j_/1p��ږ��I%u5Hn��v�L&�f�'W�PG�e��j�z��'����:�1�lkߔy���������#���/�Hd^�]8��Ǩ]@ �5Z7�nE��֝2��W�h�ID������/�!���oy��7D�m��A�9d^_W�;� #�j�N�gr&��R;�a�a[��~�/*���ϳ�)A8p�"��oյ� ?�)c!�nG@V�ZI"�l����f2�P���{�� �o��c���)2a������<ٴ���zG��z��E�d���D 5�}�Dx�;�>^!���s����X�\��E<���[�?_+��k[ ^�(�U����+��3��T�⇩���5��~�_Pg���FQ*��K�RXt�h�84|V�#*�`�Y�Ll�Pkg��i��h�i�����*���VR�S��Y�!�)Q��E��=7z�M�\jN^��%S���,�A ���PI����v���]��M�m):YFG����0m7a��C�<�EE�)p�-�y�����̂&��e���j����1�$R���lV�.��4��D9	j-��;Y�r�&Ů���\�S���.�u�H���de�>�^��H����rr��|e��j�ʢ2���=;��ض�l�Y�I����dm��S���[�1ֈ��'D�=?�y(�ek���HҊ�o D��S��)��L��?��̖2K1Bې�*�VTJZӪ��9�*B��[�Y��G��Ez�.��%��lOд�`r&�'�Qc6.$��О��Xbx�'@À
 t[��D:T����3���8�'�R7f���}6�I��K�����ט��Miυf�{�sē�:2��(Nq�[����o�EK�iAHj�V���a��_�W ��hH<�8u�ʧ�=x],�K��NV����(��k�֩ �������	�4�����l&!?�}bin6�9߿�&˪+���[����HL-E�+������M��&�r"�/���+�#+��� �,��3�W��'Ͽ_���?V�eՕ�.o9枘��rv��X`�����o��6Li��*'�ztC��>����'��w�����NUR�}�{�u�i2a`HI��C*��8�OH�<�|���V�⸡-�qZ X|��1�������
LqW�>����	�^��,��9��#]��t{5���!߭SvbC�p#�C9N��պ���3l&ו� �3�m�dؚZ��Ov��]3H �䜈��B�d�w���{^�*�Dv�Bj�|{f5�jM�ݳ�Em�V�]V���xA�Aq���ן̱�Y��e�'9�?+G��K� =sE�o�����3�ղ�� +RO/38"P?+_Ȭ�9֦�����
#!�#�xD���\~Rq�4�u���[�SU�A�$VO�LPˬ!Nﾞ$��J&�ĸ:d�����jeŐ�$/
;�lk��ZIEr�"���pXN�Ɵ/���˓��D\�w�$��������l��I:���#���M2�/Q&NY��"W0�
�e�e=:l��*��󪠯8"�{i;%Bz�����]������w�Q��G��t�m�s���nf�5~J��9��M.E?���HUGFR����������d6u�l���|�,����Y�>�˩]`N5��W���c8�ê�蠏���п���*�3dXR*��	ӡw���ӵ8O�춡�5_Z����Uƪ�@�>�"z�|�2�E����ű��5�?�<�:�%y$Hš�׉A�������ګe�� YK?�*c���B�u0�Lr��K�4RI۲��@�6�2��z�?_��i��x�b��I�>�O�i,Nލ�j��py0��m�	��hk7�!J,\lKW�;~wQX������Q>�/��7�,�
@�����D�}�a]F!��cἙ�g{a~C�����=<��|-�oq�v��X�{#���~?��}{:����E���`���nڥx�m�2��7_�G�>�|���{�� �0���{Ƒ���R�;�����KWj-B����Z���qd����I"�c�^^�vw��uz�eo?��No�ߝ�ݯ�m�g\�t�����o|�y�de��T|��7-� ������;� v��Bpԁ
��
 B��\�t����y�������o�ˇ�p�^�}��<Gw��×����xyiwv��6.��	܇m���ƅM��N��0սE�ݤ5�R���A -X5җ(���� z,R��p �fh#�6'����͛ݝϟ�����Z�p�m~1}��O��>�ӫ/a��1�7���wN^�a���Y�e׹�@l�p���b����
 �Gw+@��B�xqi�Y�ζP������V�3�����7�����e�xQ<\��>���8���r8|�v���e��l��ҶsuK�ׁ�f����v��v������E.�C.���(#�%�0�EhP� Nץd ��L����������\�7r4z�ufQ����w�^?����av����Q��m�sJuy�G/j�]�ޘ���<ܖ� �  ��E�/�<���������N�%XG��`�^%Z<��y"J�D1��x���/��ׯ�?(̎�Eo1���U������e�e��A��M��F�[�q�`$�_֬6>Z?q�ry7���\���X%.�b`�7�9���Fq����´����h����E�����w����\J��y������p֠��sS77���Ll�4���6���÷mlZL��
�h� %��ç���� h��a�� 3x	��(3	�i1����a�?_���ټ���mp�[[�ҽ������/��/��O�~,�C����5��ZF��Kf��G �ֶ�C5D�9�$l��A��<ƕ�� �¤�BXw�U�Y�0J����x0�Ϳ}�_������������� ����n�G磽A�*X���J���o|�y u=��p1����x
�WiINx3����A!�p�.M�N@D�6?p�m,�Ǜ�O7{o/Σ�l��߿}{��Og��z��OA��z����7���q+5^�2������;��(l[l�_#�'a���nC��}U����t�S����ͥ�N��M��l�,����&U��B�f���"O.��@� ^1��c��Wi� W�J����E1��Η��?���Ͽ�d��xt���.L�d�{w͒��v��4�J�h���ְ$^�u(��Ԙ͏6w�Ք{��7�k�h)\&C��ZC��.�7(2,0�	!Ҕm"��Q�n�X�,�+�v%�����It�!���9��m��
�#�;��A�@[n�6?�<��;z�mn�1j����*�:�0��"��&����;�х()�S78:pl�%�����~�|~�_�}[�|~�:?�>e�y>8=|������鼻�<x��wLƦ����T��EO������f����C����>b"��'��A8Ɏ�n������M{���^��e��à�ļ{A��}ӯC�-���1�}%H�>^�3wYA_�Y���.��C��͏6!�:��E�M�E�Fl
�����+�EAA|���.�^D�+f � �=���k�2yr>�w���~[<��_ǽ����|]����4��?�_��=�|���EFd�Ć��Y<�'��ith��_�6�����ul~�i�D�#�㢙�&\aݯMZK�U������D��:>6D�������a�8�&��;��:I��8y�>�?�������������tܼC��@�p��l��E��[{��7,���<��V�K(�l	x��� ��%K# �r�<�	V�� ~��P���A���w4������|~q�v��|�������/�L_=���7����A�i��k��#�G
�vao��R��ӻ�̅�Q�m6΂7Ø��4�H��o0�jl���a:��Y���/��/�������O߮��N�>���}�p�&�����R�c{X�� So~����֪����q��Տ6�.�N�Q�a��5�uj�\d�׏;-����e��8�H��X�	��`��cz�M�����y�n=eo����������`+�z�u(��ͭڛ���<=��Ή��wJo�>+|̓�\n��ܹ��6E��X��?����?Լ4�i�`��p�!j��fs�#s�H�� GV����^�ۯ��l4��&�G���V�r�$����,�=�B|wM� /�;�-zi� �/rьa�5Pۊ�@/��n��Ք��;���?���><ܽ�#��mr�s���|�|w{������p��d�T���q�wz��������t�C|u'�T᜴��!C]U�a�8�8¨>�f�Ka8V?"��w���	��<M��<�x�w��ݏ�A΋o���vT�_&G��ݣ���/O���in�}[�T����n�#<gj;P��L��BXvx�~x� ��0u�8���8B�����P9��2jU�<wcn�Og���=v�>��ӝ����^��o�O�ϧ����`n�����/�-d��7b3���,_�|�vUÒ,�cp3��w?�o`�p �6�F6���"�8P% �p�ZQ2�G����������(��'������������`����l�~xh�S���C}�9SmQ��e��h����i��?�!�� ��;:�J,&Q:��o�"�˗pW!D������sĹg°~z��{s�w�s��m������os���nflxp�u�5�)>��l}<��B��c�6�e�D�L�p��rD��e`���O2;5�ւ7p� r��Ą֘�V����Za�.
��Tb@a��@Ni�d/�~�����׭���ۧ��({ڹ��=���qwo���/;_��ͨ)�S�sӌ�l�6n��C�ZD��v�:iVQ1��M�Z��w?��!���;Δ�h.���itzXHg���iU�=>/��Q����?ݾK:��Q'Z��{2���'�Nn/��2�����81��m8,��h;T����ʞ��&�5.Vkc��������2��Hpr���i̪�p��p?̊6;�f1����ьnE��<]D�|w_郫��>���4��OgKXgv�S�݄&�]|����hs��M>A�켘������cQUOFM q�!���p8��!�Y��� ^���l�����^t�d��w�`�����mz��ο��݋����p�1x�P,V/e���,!�h]z�����*B���F�&���@�P��}��a-�De6�M A%f#9kU�4�t�N���f��I]���?\��~��s�+�E���l���˝���ś�sWnO�D�h#���j�Y�+۬��������ϒ�Q�e��Qx��t<�?>��;=�4l����Ze�l�`X� %������Y����JLek����`+ 5�=G���_�E L�L���J c�D$q2\Vɤ� XlS�v�N~�������j'd���,�tzw�8�8�zy�f���;�S:%{;��G��Y�57!����ˏֹ�L�$����#{oe#CL�8 �
���c�<6eɴ���BDyC��C�8���c"�l�5��޸�)�;r�;&G��v>w(~z�6}�x�:�я���s(��UU�s�E�7��7���z��      ]      x������ � �      �   L   x�3��I��W0��/H��46�4202�54�52Q0��20�20�6 ,l�[�d���md��lLacL�c���� �^%�      J      x��I��J� v�
V����$�آ�Y5V�p�7�	  b��Vf�n��Ө�e��s���'��� #3#�FD�̗Y5�1����oe�@�@��E�WhJ�y�&��ߢ�<�JQ�9af�F�R�A7ٍ�˜�vl�8ij,����7�I�� >���[D�R�B�L���-�+�.F��ŀbpCQ �	 A0�?���kd�Ǖ��n�������˻�YE����w�������y�:λ۹���w�[������w��jtȌU��&��b��]��n�X��޵#���ݧ[�׺ �����r�x+
�+�<:N���I�@s�����~�4 8|���t�_ԉ�㣼��<#�|�X�5Y���������7^洽Я%Q�����ZIV�a[���[��Ƴ��)^X��Q|��MZξn�.��QV�6bs�f�����[�.9[�4@x8q,/.��y�:�����P�z�8N��G� �,b��>����^��%��׿؅D��I�eJ�)���o���+/���ϡg87�i,�P��n�@�cy1DV�)�2�槗8b9�E�, �K���;�ay�����
�����	GpQ�4N;@C�"��Ό,O�}�+5��w�y q��(�<�@�,QPB� @�H��M/N��9�<{K�x���%@�e���|c���.�-���d�abn�FF��?
�R-w����s,����mA���n�+_�>��K��H7��A��%!Đ$_��݆��u̔��/��`I�p8�9c�9г=�4K��'0��̒:��zH���l���3,	o"AK*�	%��DBc�Cp��vT2�U�)m"�����W�`�E0�^�X:3���O�����~�>�9�g����eN��hRyI� _P��d�#�>��E�{��u��dw^L�^�na���w������ť�5��eS%����q�dN	�%��a��R<����'0��?Ky}��ߴ����PX��
E�s2�����$�Gx��wߗ��P���F���ȥ�i���u���*A>&��$��M}$z�`N|��  ����E�w<A�ϭ�
�3�c���{�R�[=�����}ܻ߆J���'�U�[^����	Y�\F%y�X����G�M�9Tb���C�
�"l������(S�Q$�9B��UT����_1��|+W�
|�E�-b
�!�1�1�ּ�
�Y� H�ӽX�����#�w<�`ϭ��|�hH>@��`T*��������1O ���U/
+�?&���hW�����
�e�>�|;C��eh��g���`hP�Pˈ���� ˰!	�BR��H7��z9u��[&X�gn��IT "�u<��k�}�Ў��~DJ8��$��#<d�B���`�3�F�P!htQ�CXY~�����=����=�t���i��y�EI�����?�W����� ��@�%��w@�:�S��Q���������A,ˁ/Q�
di� <�d(K�D�7����i���R��������)��!{K0X�ާ!�rR��( �1g~�s��OS����Q M�̷�����Z�`)@14�AMѯB=����Δ��j{�,D`=�ɂ�dHC3#	OJ7fd�2#��#<�@}�����T���G�BL��E�� �� �b�ӓw<��竻���c��+���=�	��� �*���t{ ��ͯ�5�f	~!BɊ"�ŋ-�$K0���J�s�K�Rg���diT���%#X�+�"3�#3. |�UX��*/ ���3� P4AP �����E%O�`�S�<�r���DD��B�q�
~�������m�\���;�� VI9Qdh�'X�y������C��q.)|��R��1�.��R������J�3�7,<]�BpQ�$]! ���6~�G�p��nol�m�>-iQ���~��}-���"�ܺO�O���2���`~ZO=������ar��c����dJ2��(�"�� �7F�z�Ϟ����y�w������q���Ν;�U���8X;v�*�C��������<ש����}�y���I�C4��((�@t���#��l��Ka[��P~ǰ���QM ���m#����v"�E��W������ǈ4�bV����õ\���Q��U�02I� �%��*���*�-�R��/�U�Rg ��-����l)QPI�h��X�$xE$0
Iq@���A�R��$�Q?��]��w
M<�ޫ�;��*�	�m������G^��'�߮Eyb�Y�i���YY�/���� {�.>.f��'.��R����6�6�Crï y7<i�熴Y@����$V&O+�
VD�?q��5��#S\/��h:	�Q>�ܫDI1�� ʏ}��AC�(�� "����D�A�D�F>��u)&�-�*4w���b�}�xn�׉��*��Hߨ���B���dH��@�7Dv�-�����I5Ja�a��2~���2�� �����N���ɾ���yKQ�6<��S���)%�L��0F�"�~�������x]%�g��
pW�pۻ����+<�X�g�TI���-S$�����6�����*4�<m]r��.6����j�.��YC�{�� �$�	)��A��IH�/HJ&�����kɌV�$}����d+�A�4�
M]�L��'I��K�������*��&Y�+F�����2O8��%�7������ߣ"����n{#�BÎ�h����S:���PM,��R�*Gt�"�.��9�Py!Aa�AE���}�S(|hEiI�ߋ��C�U�� {�&IDr�)�H�sq�����8�"9��8@*����Jv�BF��2>Y�q����	�(��pl�do����O��,�,��b����R�`ţXL��wa�`�Wg{/{&Pq!����|�����.�������>�������,/�<Y�g)�`����}�wti�V����/<�'#:q!����O���m��O��s(��`n�.����[�+.��������K1.�c��cl�Ȣ8e�ߖ~�_�O%P��.}(�X�2|�D��4"F�I������;�9|���E<�����^�����V�|����?��q��/��c-��Wv��V_����0,�-�fi 0
e�8���,Q�xV��E�7=����c˥d,r#y����jJVX꒸Bآ��ϕο���u_W,�U�m�@�&I~PIiB(�-�����u2-1<C�7rxd*���!�[@T�ǉ�x���
zHG�H��L(
�*���=��k)~�(�K��'辐<��A?����WT@?29O�y��q��Vƚ����!)�/��?3�
6cVQ! �%�l�Tѻ�h���˚Z�w�>'�X�gE.���m�'�������E�t�����b�IN	/�)�����74
�*̓�O>�T)6����FD��(VTDAJah,�� ���_����"l�f7����ȑ,M��-��Hx�"� �r��-�i��3=��+�X.�[\FG�ݣ�<	�$n���-F�����W7Ռ.lj�`�U!�$��@!@G�w��$ Ͳ�AD��h@�V����e�?��C��D�_x[���ᐈͺ?�>�	��bo0f�Z�7���V���l�X��9?������/��K��?ǟX�R�SԂ�b(e'�x\_#�?a��+�)�O��^�h��߭���p���b��o�)S����yh�5��R�ڕ0����v�EVP9��j��'](�>n�
s �U�ɻ]��鹣2�0(w���լI�:�O��a�����#�֧���+���`���0IW�z4h��=����C�yXTS���td?�*1�o���ܻ� :��s$]0���q
�E��U�r0룙�צ�X���Ao���PQ�ʂ4-%��w�<�����<?�F\K%���>��2�	{Kx��I�D�f�S*�U��H�Ni�    )a��Ɨ��8J��E�R�ɛ��,�Q=��S��W٠_�gB�/��<�?�'�A=	(��5�u�0!y%g��n��J�k���S㼂�A��p� �HP\!�BFA��)J��RF��g�b3�QU�I�8����������t��|?;|sT��f�d�a!�I4-�" �P<�mD���a2~���+*cwV��O�|���3k���U�|iĩ �5���@*�ǌZ hN`E�g�o�b9I9�c��k�V �����Bṅ^
���x������{iE*��IQ���P���% A�ntgUJ�,/B��Vێ�����;VWEV�S���cU,9�^��.r��8�(�N����;��W%�a��"����#3G �"�(R&HQ"9N�hVč�(r|��R����raWa��s�IpD�[WA�$G��a��+��� ��Jtjש���B���F�?(�
�L1$�)DAD+K��K
��$���r�8��U��u�]ϸGC����w�wϭ���,�U��c����.roT��9�D ��B�����"0��ўgCc6t�R�gE֝�o'��a&�2�1yEv��-�J*F�r����$'���u*F��h���� �AI��@���������G��u^��S�18�%�)�ѹ�%����L0
�6�abM�6�">p?��FEx v�E�H&ǚ�)"p,�)�+R�>OWϵ9Sl��
+Ĺ�懈�|���}~�A�㙈_�)�����a M���	~����9�j��xdΥ��\:�;l��Žj�?�9@s/	�+���Y��x�|ġ��O�����q��L�5� �"��f����	���Mx��o �KN�*zI�Lт Ȑ��d��D�%cU4�z]�c�%�]�c���v0�����;t�=_��.���M5�����/h!o�{�ƽ�R�Y*�@� �h]ͨF��q�����Tqf|�<�'�^A�'ڝ>Ʌ��Kϳ�����Ҁ�$�P)(�D^飮�锩O�/-?� (4/�����P�zɯځ����U8��T�{��A0I�%��,�K�$'J��H�����>P��<�pw���S̞�ܽ��b��/߈'�x�d}n���6t��~^�t
�ob�24b�����!��W�_�%�|dx�PxDD�Iu�#97w�8J�¿���G�p筮NCX��N�ܲ_u2��T�%y���,��<d(
�
'�V�%�`�	H�2�qK�[Y����ު���0���ъ!��M����-�:�3��(~�T�����dX�_@����U@����f�"Y���B��}$��ۋP����K�M2�l�u����4�<6�?��4^Xr\_���Ǖ eS���`g��Ni�;3�T!G]t �	��f�9=�$��\�[�� ��޿�zv1�����Uۣ�킘%=&Դ��~�7���ޭ� �T�i���Alo��&s����*���M�p��w�L_�c��y�_�W�A~��VR�nqA�m������
��r�*�yU�g���x������R�܊2/�fm�Z�r�nk���$P��A�D��dw\��ş儜8��.���J{x��U���ϻ5��ֽ(k�ĺ�/�Â��-N�`:.��u�3��`>�;�6l_�����G���K[��v�ƂeU�d�^����L�U����Vyu������G�
�T�"|3�3���m�ߞ��"=f�`yd���ӫ��q3&�b�l���p>[�i��7�WY�os,d	?[z�8Y�w�.����0���Z����݄�V���>�6��Z#Uz�F��7�4#��3�&ƻ)���A�4ڍ�J_e��|F��`&׻��Q0��n�	��N��#miP���h��A[�S��i��5X�"�>,/�����:�}���`X`�=~�;�ƀwy�1Tx��w_��݅��<twjٷ��zn���z�Ӷ�ς��K}'c�����<�U����9P��]�"���U��V�L�9(�L0���ry_������2�T�l�Zݾ�&Ag�����.�$�7�t���Mv���Qw��ܚ
R z�^0����1)f:1M���'@ �x��W�I���=�h���ö���l��g�Nzn�j��p}Ֆ��b����G���qL����� �4O*"'E%�A^ � �
�aA�'�&�_��T!��Ѯ�]yn���/��'X������d!#�< x��
�K�2�E4-q�?���4���<͜c����q�Y4�).9e��o�x��wX+r_�r�����ˎ��y��sp����|����5o�?pvF-��A�D�]�J����tI��H\J�n[!��1�o!dy���u��ϰx.���$�PD��%8��E����P o~��cZPT�0��Z�a3����I�S��ج�(E-�)zE{ŉBX~ዓS߾��E���o����󧶑}%آ�*ɜ5��tDT0$?�E�	zc@���5�1.��T��E�]=�"��Q꼆~�}ymX���`8�ey{W:`Sz����d{���H-Xޅ��aUR��4YI@3�ĊR�!�,MJ2�ѝa �Y�+ë���䅜����ԧ����8�� ���J�+��������T��g���E	.�M�A?�� �a��=A�b$�����`|∛���V��e^�_�Q�4B+��׫���T�}�p�v�i���NK;���az,k��|Uְ��kڹw(������>����}������ʿ����(tG�D2��ψ�M2ĐToW�P�C;.�H!��<I����#���:u��]gZ3*y)g�8�>>o��Kڹ�G
�Yy�f�A#��A`=�� �~ai
Q�������_M46�E!HЀFO7�b�p8\���!�bm"�֍PCM�C��W��v���l�)�	��Vb����w�q�HN]���|8�|��LfL��M,E߄^��f���������z� <�ph7g�E��H�jL��卭̷��Xك����8��S�ǻ�<� �e�<��$"��
�$����=8duj��c��JD�G���%�XF|׿�e��n��|�&�x�`��XA���i��d��H� U�bx����%A1��PDQ�
�3��z{�[�Ue��7g8}�6o�^A��D�q� M
��9�Ǥ/p��@7|t�
&��>�B�y�>����H�������25ώ�'G�v�p��ܱ��R�������U.�R���=^�5f
�0I��G��G�����g6�*u��t#�1��ɍ~�A��>h*RQ� �X�d��Uh�Hr�.5Q�聾\k�;x���K
��gꝰPi�;Iac�byZbЍ����SaV#&���(?���,�b���)���X!�q?��U��Z�=�m/�dY��,1�����C6�
�\J����K{�f����ɗ6�%	шg%��nȔ��Ti�k�E��X�<���3�U4C�3���y�ٷ7��/��_���GɃsP]�V��C���}@s��i��`�,������@���#� I�=Z|�}�O!i>M��N$���]�k�� ���%�'�e��d�$}I��g��ކ?�裺��-��s��� Ж��Yʡ�R������[,�繠Ç�o}�+��"�!�+�{<s8�e�զ�a�C��]ݢ��Ŕ�d�U���i�j��=��_���*q�J��V�F{qn���w�RǴ�S���)^����^")��S�~iaV�ܢ����)���=��@�K��CG�6 �> ��	�� hx���^T��
�?u����r�]<���p4��k��|x�@��Ŋo����'NjE-�OڪT���ǣ�E�7^�ZcQ���k��l=��6�����W%RJ�u�ȁ�l[D��߭�!?���ꛬ�V����7\A���>Jh�lzD9nm�m/X��U��)Z�l�~:$�Ժ�e�!�    ���)����尳g��f� ���f���y%8I(2�.�º�@`V�������JI��E���a��]������2�e;���t�f�G�e+�0=�9{N�l�"�k��I�oC���Ϡt�ҟR�֜C�[j�t}�^�{����d+����&�A�V�]�3Y��!���w �k���&�)��C���9AY�lEw��JOVSj�0
D����sV�����吲�F�����xm��KI�)������ �Y� $���LҬ�VdN�o>*�w]������䟍|GT�����{]m���A�����ɥ^I��%�oK�������8��DRU@Tʼ�:���QqN,�.�2Rt1Dr��x4:I�8(�(��X<�of�P�?�0n�ɚ&	��̙�u��G���뮑�K����_��2�酾���p���<�U.��vB����&����N�u�|yG�g��b���Q�&+��Lǖ^�+�:��!2��HD�����L�ȖiR��������r����|��rOO���K��e����&'5��vL'���YYD��Y���6�x���Ii���K1�'l^X�𭙗�盜ϭ���q�"_���.��g��)���ʷ�秲�N����ua;m�.�~St՞�ݪ�NŃ�Pq�F]�kn���qC�.�i�Ң�6`��HDq���in���Ex�N��j�~<q���,�[�����[��<�����cyбH��˴TEXX��4���n�UG�����T��tYC��Q��y��SG�Hةce�t�YK'�e�o	�6���|�ZMe�vh^�<�E�ׅ2ùQ��^<�s,a��b����2�(G�ȍ9�uF�65dE�o�Njb0�Ԩ��:��j�*��;�V.�.�*_�����(�A��c�jv�;&��iq\ޯ��Q�km��<�֫R妽� �rm�)�Vl���b��^�9w&��9U���Q���W�u�/f�Yz�y3���U�%���+{l�X��ސ�\�`<\7�f��.�d��k`�t���x%��a�	���\Ǚ�׭���M����5��r3���a���`���^/�[sz��;�z��|����ljkdaa�ɰ*��,�O�dws7ݵ5��0Lʱn��*/��XqP6 �K�l�]�j|y<���@�����v�Ϊ������诛-˟���,�����;;F�^�u?$R�3A�z[��������z��\��;��P݊�xD͜�4c�5�Ƶ&;������O��r����c���8_�^����=Qf`�)QӘ�����*����-�6kOmc��>��Ͳ1��Ǯ�/�v��joUi��`�#4	����-Is��W�����FM�c���F��v�f^�<i�ø'���$)���Z�
f�Vg�4����i�6-"#�$l{r}�X2�-���c�K�=ղ-J�����5ޚ�u���
�Rs)���Qm�z��,o�9�`C?k/�Q�h��F�Y�]�H#�9�	�������vc$���`0V�rGμ:I�ؘ��d�p�uV��C�n��&l$�0��խ��%Vb�����:<]�Mq�Z+��{�7�L-Ά��J"�j}�iL�Z�x�,�L#��(k�Qa�#+he�n+ci��=�g,'	��U��S'wO���ǭ�T(�<r�;���a��Lsɶ���a�d�����t)�3F��3�#?4Y��vO�6�y�6o��p@D�l)��~���d�Դ!u ����?/�?�� /W�Y�cOl,%��9�5�~��8��i�m��ĥ&2�G5S7��Ë����Smٟ��#꨼@��xT�"fF�ͩ���O»�&+�iU� SK��u�]�Uc���k���5����:?W8�]s#���~����r@G��.Cdl�&�6��R�Ԧ`eYcS-�����}N\����#SϘ<�h���jw��q-���D���2��?=���^֩m���0kJ��n��[�7$�'��$4ɬ1�gKٖ�H���'�]�h�#��p4��v�b���	3;2�|����knڴ�5Y4�Doӯ& ]�M����M061�Ag:>l<�+��4��J�ۺC)Cn�e.��y5Uc�
��;�n%��f�������Yy��9�`�5�c4�ӡkʊ2��^��Q,"~���Ŭ�4I�����	'ޡ���C��^��j�l:�$��^Y�&��f�!�]k��~�5T,8T����4&aoʈX��v/��n���z���[��δm�����{4}�qER�;�jP��Xfj[�}����"
�ĒfX�{��g�� �S�`����C�g���f~"ևTX���a�YU�{a�2�R�/u���L��h6&<ɖ�6/:�1��S�c�����$}�o��{��|��2�`Ll�&�����@\6$:,�Ҙ��4��L�n�3kq�ƃ���M-�����R0I�t�2͝��̝L3�4� >��ݑj@l�!S����v��B�5X�bL`���&܍�!�� _����]sf�O�{z�1�4)Ǝ�I~Y�
5�>�����,��ɼ���J�_����p�vgF+�Ҕ���t՞��
a�;WU�(���0�9*o�`ײ�69��R䴉�W���#DX����M�!��>hx�t�ͱ��C+�h�X�4�x��N��.ɸ�a�LV3�5T�:Qk�
�h5���ָ�~D���v�	����(id���,O���TҼ��{u�]�'Ԏ+km�Y��/\n�ZYf�r����q��W=�,��� �5Ȉ|]�L�a�u�L��V�t趛�Z}��n���btC�Ls��)�b;���X��Ƃ�M��D]s��㩮&o�4ݸ��bY��=�XgS.��x>�"ٞ`�M7����j�<f���v��杉���p��R�p��>��j{�FO��\# 3n�V2Р��F���Y����0����uu�u����]���؎�����F��	I�Ͷ�bZfz['�J��u��s�,�/�a﫼�C�>�����]Ķ�*c��dgd� �s')����*m���5����ěN�n��������d�Z΢��������n ����E{T�u�5�-}J��Z���{jݠ1?����:J�aR���y��r�U�곉Kz�6��tB����<)#Kk��Vo�#w�l\v�Z�pƤ��&�Y��Qq n�l�Yn0��ZOZn?�NF��`���oQ.��[Mυź�2X��P!���v$oG���ʱ�����^����jJ�{m���r-G�j7����u�Z��u� fJ
[�:k/W�[��Z6@�������$�/��T����uʴ)�iEU��E��J���Y�t�`�&�t6bj����n�Lvq�D�mN�Eo O��]��f�����hMKc���p�E��֣�K����q����_Fpu������N6h0�H�њ!m�ڇ�lLڻ�4�L�=*\�ʓ�F�1�p<u�W�ZV��IMQz��ҽ�!k̈��T����N�kL��`}�-�-u�cR�Ԟ�����.1D=���Ί7���8�v#䉼���Ǆ�"�b�T��Ek[SZ�Bj�����T�Ny_7Ƴ�nqe$X�Vۙ���/׆��UWw� ˢq���j޳R�z���5P�֒�bi�x��^iM5�I-��C�l��x�Y�V����S[-�:+���4҉�;k�]�[����hm��h+o�>�;Z/���'=��%A��p�6�ZW�:�FPz�qS�X�����*�R4Xξ��'��[M: Y{>�f�E���}�{�2˂���dm�&�q(-��/���Uh ��l�'��!�P}(����ݴ#������~��i O��z��9��]$;��HFT��I�K56:�V�.d�ۨ]���ȜO��@�ƹ��)Ӈ{֏L��I���F�d��ȦQ��7�;@b}��<f�͸�!7��,j�FPM pG�qg��w�Z[�Ms$���-o�lr\�iδ&�WY+��U+<��9Q��/��ܑ� �[��]�#��U���h	3~%6�����V�֙���a�fȣ�&Q�]L�:H��f'��[������^#n-    ��x��Ʀ���j[��n�ݍ�by��tJ���]���-�tf��%ƻڰ)ʪ�[�`1���*�h��Hr׵eg�԰ib�V���Y��%�ȇˬ�%��4}%�u�����&��P��f{��1;S/�nɒ=�n���7�Ȣ帥���6,�kb<��d(���fI��ޖO)���d����� �n�0�vד�`9�q�Y�w\uЊ�C=��=������8��Pc��|15��f/���:�0��aoS�m���~bD�J��H �l�n��M�	��Zph�krP�ěP�/BY�6>��6f��v��O��p���,�V6wez���"ީ� ��f�f��Î%s���5��'ܸ�M奉�*/ē�x������i�[�D�KXcW��b���A: {?
6�Z>�I���Ds��H��8��F�pP���p^����y�5��e�뭱�v�CO�q�,3����=��cn��`��R���</M�u8�C�/%s���f?���=m�T��Ч��dir��U�Ȥ�X���+&/�����v�(�6�i-j�|�YPC�|Xp�ȥ��!�v�LWf��kԤ5�R�8J=*�F��=U#f��$GR���\�����7�~c���*�M�A�y��Y��V[?�L�\%r]�TbeOXLG�&�2]?
�*ϛ���c��nz�h G%��i٨�G��l��ݑ��Q����v0@�Z��8Lm�1�h�{1�)� �5����S�h)�d�wZ حF�Y�>L[�V��Oꜘ��HH&�3�Ǝw�4,���W�Y+�'�~�[P$�x�"U�b�޴�ボ�F��ܠ�pu��A��G��8$6��]!K��?;Э].`ì�#}5�M:zOo����+���)ы�q�>�1�ƍ���X�j���}�i�V�#��6�������Ԇ�̯a-U&�A��8&��Nȅ����0k,�H�&��*A���Z��555��d� ���Nu�a�#�~Npk@��@Q�(0��?�-M_�-ϭ���dO������]u�4[und�[̖�@�,��{M���f˱���c��vZ����l-`��Ye�^�߰�A{~X���3�nÜ���T��fs��x��F�l��	�-��Y`����{�͛�!��(�ӗ�F���y�������P2��&��6Rfb��6-O�ǖO�y4�J���.7u�����d5�W�Y��wY�E ����6�����й9	u��1w��j�S���'d�6�f$OZk����>�3��(k�M&]�$�*��� ��[�(��`�}�C��d^[��d���U�~��,�\T-ϫ����
;r��l۳�Ѯ��C���10�H�kzMjQm�q�ҳ|$dN���g��I9~$:��qu�l�F׻���S�x�M}��u�D�e'�M����hr��&��U�:�ۮۨ�a��ܹ����~~����
`�!9�ۡ0r���Z���7�ϓ�Y:���-��R��5o7\����5D{\�n�C�����Qj�v�؄�>l�Z��9���F��N0�:as�m�8��ẗ�a����X����b�f5�� 9��q�7��E��vwMi;��6�Z(��A��0$-s��}B���bR�l�x��k�i1��!����y#K�T�둱��� �n�F�û���u\Oht��Ȓ�a�ߒs�רc�2�,����$�q,�P�Z+ AEը`B-�&9
�qݑ�b��Z��=]fI c�s�J�뽲���XZ�ӬC�����r����&�&Qn3��?Yt�%Z��L�P#[L����d�0"O��ey7@MKZ]�*����m��r�gt���S��A��b,��q2Z�E9Do���m�E���WHP�����j�bmvA3������x���#���Y�.��ͦ�NrF֎Ɓ�=��:�ZT�<b��YnD�rV���\`E-cPc-k���X�FMH�K�1�5�KUn1<��G-��ˠ�+;t�c����H8-u�4���L���8��\���șĂ�W�W�%���ߦ��ͨF�z�ku4�jD9O�(mm�7}~=�`+����ּ�>��
u���9�,����[��u�i��:be����h�/i�2T�KZ/w����0����r2}֎��Y��ƌw��+D�U+<à�ڜ:����呂ߛ���bM��-4{d��
zh�}���wd�n��%��0��U��u�k�Xnnz����b�P���u��cܥs�ێ�T)[�:�cg.%^}�jqC��Zr}��hk,���wĮe��vr�}M��է�3�����+l]���[갾��l�%"��A7	5��(-�V���2���]m�O����;��6�{���˯ͅ^u��&�O�� S�M�%�a�LO9<�[!}G[��V�+2M��u��&#Wh0"Hf��l{�Z�V��>����b�1��m�Fխ�.��S��[�v��Ң�)4�ݲ�h�=�EK%��=h�X7�
D���#y���t��OH?s3j�0'�o��Q���i�\���E�m����dlx��OS�b�[�B��*��.P�]׍6�q͗��<ﻛ1k�A,�-?�ēf{���S=�ͱj�A�$@vh���b��}z�1K��-Grf��`�-���i([�&M1����X�n��a=�om,@�}JI[��G�ai�QBP-�ղ���-�N�A�P�\h�����\��x��W���`0h:X�h6��&����l��-�r�M�rju�.1٭�5�&��<TjT�*�
�1H۹/�X��lQ�b�m��̰��E��l�T��q��e�ɰa�,u��8t�V�fRS0k)R��r@����έ�k���\��pd40����"�,��eKF�`�˱�	emaг�5E�����,^'���X��ZDm5+,&=T�Zl�X4�fB��d�Q��Hޝ��󻶟_\5v���X�s<8k��7�����b;�6��z{�'���Z��^/�b;��ݧ��'ҋ$|)�VA�H2
ˑ�
	
�"%Q��w�*��c�3� A|��{���8��8X���NŅJ�������5�qƢ�������=��[��E�`�������o;�θ4I��y�]�a�������U��ݕ�coS|y��xu��[x�qz��	��X�Rx���sҫ}TW�R��J�ϫR�[��%�
���8��0�jVb�JU��0��۾��jc���c+"Ds� (��HE&�n⢶ٸz�Y�%T��J�g%�Ǻ4�*�)��,k�[t[z��~���͖q��z��h���.}�C�.tnz��^�G~�yEF�"R<%����|�g~��)�4�Ҵ�B3�ͮ5�<���`+W/P�q�E��k>v������on>� �}���N#�cY� �4+
,E04/�"���m�u'`2�#��Y_������]N�<[��j$������kq���˯s�e��(Z$4i�G7G�\��i����oT�\]���p
���t¦||��	�/�:�g�oGO���K�m�F%�� ��L���r�z�WK �B���4����� ��{FP��ӣ�����ge���rl����2$Vx��ꉓ:ɩm�%�Q�6�xRu�!�p1�gV̍��ICz���}��$�O��ǳtNm�7&�Ǧ�9X�Wl����Zd`(��<�b��}����8�C��k3�<$%��HI@�!�o�hU����C!*༱�i��� ~?z8_�uzxd3|)=�����߯37��a+Q�ꦏ!���^zh~t��]��뿕�⠢�������p�GKKw��E���t'oI�B��.��tlG�~G����:�}0>w�;BO�g�w�;�D2X�q4�-^�h� ���ب���$(��ǂw#�*�!.��W��W1����݋������sQ�_�P/�#oYN�ݖ���^b��}��F5�s���7}h�"ǳޖ���P{������p��08~f������O�{#9~��;��z0w�a��M��UnKf�A �19�ݿx�X�}ǉ?`m�<��P}(���"�_)u����M/���S;�3�޿z�����.�޿^s���Y�	�    �*���/(8�m�J/�k�ޖR��?������XU��cD�O�D/�*U!J{�m�RW/�B�S	A�*�h�������eU
�=H��ت���R��N��X~����b�s� ���UҌ9f�w����+~�ܸ-�;���w��������һZ-�n���(����P���_sܻ��~XE�`(���<�9+b����y������?�˻0_�N�?�U3���u:�-��_?ߌ�6N
�}�s��>+���}VPq���)b�'P[��
u���9�s,�z�x��%��o�n_��1�{%�{�{����^��뽄������8�"���OlČ��'��/���K�c���9���#���,Ot�GS��x��+�[���,^�)x���o���`�����.@/���;�f�����d����.��I&���|�	BI�/�07����ز��t��fW=Ω[����\�؆�zLy*���p�2<���pڣղK4� =��]0�IA$K�@�d,� M��o����W�-̹B[3}m?麰�ν4�h@��D��%�|�ӱ�sFs]å�<��M�}�p�4�7�M�}���L�tqj�~� AN��6�z(���Ys,�/y���ϤKp,�_D&HJ$�@/q�2��L�)����#q��T���i��� ��'J}�u.3�g:nSo���2��L�)�o��7U���㯢L;�K�`z�O�i:d$Y�i @$	�̠'?��SQ�(�5QbT*��&]b�N\��?q�5��l��ӒY�U�̮A�-����U��$Z��%��H��x�,'�~*�BT���"D@U ��
Q���L!
�v���������v*O��B�X� 2�pc�P"WXs�{ű\ W�.��,Y���1!�b��;���%P�y�xp�p.�N~��T��Q��Y�
�?s���8��<NH0�h� ��ޤ�qlM\�_�sQ�2D��p��EG�L�}řM@-޺�x���U��]x�Zղ���'��lg:,Y�"�p�VfDX>��;�|���!��~+�!�+�3`8H"c /��ԯq͎��$N�x0�s$�Zh�z�d�:"Omf�	�r���*�����O�3�܏�dHY~�Շں�L�n�nU����ե�CW�6�ݾ/����rc=:����T@�𧯦�Z;��t~������ܘ�������\l��^�+P�m��z��~:�:o7:z���a3�V�"ޓ��s��?�#y?2�F���ܝ|��3��ɟ�}q�G����١˜D�'X��YF,��J<A��8$ٛї�U�$:ʒ�S��"���Ý�R@K$^#)��.%�c�kt��O<!-��V���;�[�C�O���IE�(�iR��Dz�.l�}���g&�ʞH�����H����������s�vN���̃�z���c���C|�qa�d�5�������!Ki��A���]� ;�h����y��d~��G� H2K��OJOS� ɬB3,�J�Mϫ���b���Z�L���%Ȟ��}c�����$��2��gd`�2�i��I���L�49�c��g��L��Ǳ�e��UI����!���*��!]�.��䗷�����G�s	�g�������$1�@(����
����_y�M�r-+�����{�nA�F�u�@����̗w�~́������F"�%�,K� ����K?F��e�UЏE�#崮d_�����ʏ���c�K���e���S�Cd�{�V^f�;2��;t<<�k�t�p�V8F��V8���=~��Vx�]��3ޱ<[ �?(�,.K���G���sIمe�KO�����XhYV_�2���Xq������ �m���ziY��TLW����Ң�[悟)��<*͢*���$Q8�E��u�� w��YEK����C�o�A���a�j�i��DD�����is�'��?����OHOz�g[�wx�"N���$8(ɼ���	�' ���B�7��(z��Ι�qH�8�y�c�#�K�#X�a��2�H�zR)R�Q�{��i�+k�i�5z�����G���޼�>�Zy=�=DGz��������ԙ��u�pgu�4��r�_�McÎ�U��q����h����r��-� /rP�)������2�ʁc{��}r��8��,�~��CwQ2o�K��=��q��5��E	Z�HҊ�*��3)8�98ײ��칦�����x�-�۱�՛pm:��;\��u�W�s���?|:ןK�eN� ��iV�7�a)"���.��Uҁ<�fC�t�k��I�S8/K���W� ��#~Bq�1$ó��"���Iq��1�J�xRg�%�>\�.&�	��G+�7��5�?��e?i���KO	�$�2}S��?F�+a���+� j�iG��%�F��F���^���w�\��G(�`��c ��<��d�»1+�DS|���jš*���媱"�3`j̹#�2�G�(�A�ˏ+r
�e]�
cE�B�����F��2�I�'IA�@Yǁ�?�;Z�q���b�ԾK�x� �{��|�k��	����S�/�>���O"��)�\
�Wd��(�x�q�bo���T�,�_��� [�5D����u��#8/3��:���(��%��`�<)��(&9������`�0��g�oG2���Q?@��Bw����h�����\�\`�F򍇢HJ���7��X�5`����d�͡=��Bgߎ�Z?���dDF�X�r$%�,���rL��Y�W���zQI�gO(��Lq�'F��Z�g���{�&��^`�Q󀴟)�K�߫�ز��!��+V�/�t��'�1u�%�O�n0� 4�O��O	�6�5�c����k(}d�R?��J�"���>�5��E�>�  ���S͞7��V�i�¢��a�?��S�M/���!��z���:?Xo��ؙ+3�-7�Lw���aYU����EB�+��n=�\%��̓Z�֡*	L��x�I��vļ��-l�kӔF��`߄����8�.��lv \�0��z�mЍc3$��j�W`;jO��S*9-������"=�b�����"2b�+	�|��@����ޡy	���\w�!h#|��c�&�M��ly^ȍx���T�����~����%������}7�Ϗ����/��3�0X̺~�[�%�S%��S��7��߫���������@~�i|�~?QZR���x?7~��{��7���!�r�1��#�:�)5��,�2�F�/�/���I���ڠ�%�(�����%x�W��7�%��%Q+?�w�_y�}u���=\3�߷�/�E���j�~�Nѯd������������-<��[a��ѿ����B��;|{����|��w�d``+ �uD~�D��J��#	�\F��,��r\KU\Mq��v�e��AK�]iɢ偸�j�9���{��ރ�� �oY�k�>Ӿ��w��0����@�5�}��dc|��S­|�c�����E~k6E���jS�M�$q���]3P��	n�m�rS��`�Na0�kCq<��?R�IcZ��^���1d��B���~�B(�(By��߽D-;__�m��G�ز"�4!3e�50�D�m�^	=���qk�L��}��Z556W�Q���;g��R�<�n�D��.�0熳�n�����id��`�S�<�e��e[l�6�q�6�p����b���l�#6�A̍�u{�F­|�.��t�����Lحv�Y�Zh���k�hJ�,�Ĩ�c�Խ�YmP]�z��mOƞ���_ߘ]0':��d/������T�|#Y?Mɖ8'���В��`��n1�̗|�\�҈�y�����
��r���疭Fu.�#���LO��L� =�@�).[��5�2�Ѿ��Š���f���	�)67/����-���w-f6�j=��&���C�u:�h��h]b���������b�e��JOܱ�f�Te�Ůh�uXOV��S�^t�����]���z^��3W[�8<��    ��nm�p)��a��B��ռ��I���"�+�_�?]���%u<��X"6L�i�p�~�I3�d���4����YZ�-?���w�C",y9��^�uIY_���T̚9ϫJ�Rd����[{m����NB��g-���$ح3[ 㴠en�zn۶tL��Mt�4׏W�F�[�;�����t���z�h��"uX";LѮ6V����>G*�DXx�]iBt�I:���d����(�f�����9��ОO�Z���Z�ꑻZہ����ZW���r�4(� N$\W��et6�����z놭v�@��OaA�I��:����!�F4�M��|Y��xX`~���/Y	�hp`����P�)�8�n��w�+u�vo���lEwDq0�]��s�?WmD�]a��Z6X�ԥ�dL[ӑ�c��)sC���0��͜����aJ����t�s�x���I�eE�0ǜ!I��I�z��1t�^s��[�!���A{'�ǃ�p�*���nt��~
�UϘ����vM������e<0�ʨ�҉�g���ȦĔ��ӼZm����'C����� ��,Xŉ6�y�ֳ&њ�Z���j.N��J`����a$Hhfg%9'na�z���Ld�9�S��5}��.WA;�[J�F�>��*ѓ��֒��$�NƐ���,nq�v�갼n��dJ��zᴷ�#�L��ρ8����J�i�m���
����f۠�(�°�H��IC���ta+쑶�Z�V=_j�������"�&�PW���~�w��m����fk?�p����]�7�q�{�H)&r}�#�7�d��P��z�a�Ѹ��`��_&���H��p�F��8)�V�.��8�m��{b�M��ؐR���|̌V��j��]���K��&Bg;S�V��M�_ֱ�Н2�L�<I*�hnhC/Ͳݮ7�o{� To�յ�!��y �(�MCM�"Lo��.�R�@jn��Wk*����%�t���4��B$�!/����ݚX_�+Ĳ&��S��ʜ����;�$al-q�����aV���@�+|�;�<j�>��و�¶�ȵ��1�}��b��]r��ؤ[G S�Ջ�"#��~�K�1�Ϊ>�z��4���΀�s�M�@��"���3��v��UZ�Dkd���'B���`��z��U��6�V�Qg��Ð��� vV���ֱR_���J Wieԃ��'UƟ8C��E���N��%k:-���.���<��f�O\U7q}1���;�M���,���鰹3�t25& �
��F���,�^a6L'h�- ������(}m���j��X�`ev�Fs���Z%Y���f��ر��eΘ8T�4�o�m�n�i]t�"��T�mL�.{v�9x��ڙ�xM�l�S	r�0��ץ1�څ:������b�Q=^�,O�:I�U��g#f��`��&6�KV-�Ռ�(�m8㎕	������e�)�F�:2��ۭ��a�7+�n{�yT��:��8��)�2 ���p���wp �Q/���g��������]4�#hg9��Ѱ'>�t��K�0���+���mÃ�����C�0� __Bgp��p�-�]OB��34.Q<�����>��_�VY�K=���/������q�-	?�F��z�r��< .� (ǩOM���^֊�u=��'��� ���c�}8$����������oHrU�PO�U�"�33��|���8#c���K�ٗ�8M�I!)��	'(QRnp������Vk������v
'  w�v�8�S���?�/��Q�eh��i^![���Ӳ��K[������׉��_�q�S���'�`�O�0�O,�O�Y�:��$�;P �g)[`��ԊL��F[s��t�&��c���㲔$}K��nkH�qd>i����kQm;8�9Xj>�j�rP�A5t��o�ܞF�I��6� 4O@��=6ϕ})��e��B�)��H��x�OW2���ag���A}�0����ͧ�)8���Ǚ5�Lp-�vs qc�{;1��|ql��������;vAiH}kC��5�^E'�d7_��b]�G�hc�Av���Hi�fE�C6 /`R �`�X�ގpg�	`P�����ei���8�<����1�������{ٔA�:��� nҟtư>�ap��`l���V`���b.�CV���S�h��a:�7�"�n:��~��7%Ǌ�t`�����g���C)�ՌK��MC�B˖U|��ʘ��Xk���R6��#'y:Ƭ`gM�:��ty��r��F\�X����?��]������6��+�o
�5�Q8	�,�(�t�B�L���#���\��^���B�S���GQ�,�)fG���T@&(r��;�p�*'�B�Y�������OQ�v9u�]�:������Â�'���OY��t��>q�iΡǱN�|�kګ^��I�Tr箭����+��-���w�M.��ߴ<T��EW��ca���9ObN��z1�rl��vۆ�o�a����ښ�SaE@��d��-;�~�u1�v[�P׍ے��/��&�Ҫ>s&Kf��fsPi�#��b�k䳑�o�Y�E�VW�[X[���/8��Ԁͭ����/�b�=�(�[�e]����e�ş��;<{�]f��W?8X�=��&�#i����2	BF�ؔ��X�=.W8~����°�v�r]&Wطv��
�.7����'��A�<�^����0	[���Z�wGs�'� *��jj��h�L��]L�n��.b��MrHX���Zr�Ӻ���RGak:)o�U�N���֩z��S�3Udmiי�w������nJp�VG!U8	m�;v��9� ����ŏ|�p��~�?"���y��A�<^��e��඄��r�a��$rS��ab4Q��~2��Cѝݞ��#�"����A���zAW�M�11�LBk>���E}-��tE�f�n��2���\ox�HV�q��gQ+ғu/X�z�V�u�����ɢ�۬/�L����*��Ǆe�@7�a�(ۈ�^��
?\�K|G������������|�M�G֑K̜[���0�o���qdW�ЖD@$����{��� �Sv����|� �fU�0Y�p���hV_��g������/������ӓ��É��;c�M�I�C��~њ��]c��{S�7P�E��|�ۏ�f+��@(� ���e�6D�j/CB��t;��p8�ޑL~�>������8l���h��"?�]�}��)!�o��i��¢;�0�E
��8��� 2�~{�u~��o9a�WU��I_�t�T��hTθ�V��5���۔ɺu���pl.����.�Aa�`��4�t���u�J�j`Ћ����rfw��6���$��crr�5��A3r�|ȋƘ�B�rS%�z����B��u;������kv�o���5���&X������p=c72�b@(�i��@f��mn,��"j+�:�`�\�5��֥�y��uo�\��Z��[�ܔӭ�L�ԧ��N�L'\*��aFN�����}�nX��t0�T���T�N]�&�C}�a�/s��}G݌�M����h���&�5�u��@���P�LU�R��{�O�=m�/7%�ֹ��6�1�T��1E�3ߓ[�~�-�&)�U�3���Br������w���uWm�&�0I@sfo�O�m�JY��{��L{,kk��!��f0�z�]/wRj"we�7�3y�+��mF^ޛ��/��ʋ��-%�e�N0y6��M��_Y�N��V8{��5>N�8�5U5��t�%�_��E���bj��cH�9��t��9慉���䄦8�,�A��0���0��*���"~[�]�؜5��a��Y��K�|g��SFJї�R��XclA+���}KYnk�š�dŭX��DS�}�id���&>l�`э��t1�[	���`ы�$s�� ����z��D3S3�\f�N����gv-:J����z=�Ƈ:�-�}o��۬�'��GQ�c30=�i��&�x�Lw��H�����ao{�ܻlo�m��{�Ȑ��r|    ��a�6-�F�*�iչ6v۾ϫA8�/�pn��.�n7�[�1���2��������q�Gz�4ql+���%PX��y6��u�N߇S���
��z ���~S��1�z�F��~@%�aUnY�P�`��A�����ڋ(�h�ȯ����H&�Zcx0U��T�M��'��\�k�齎1t9+���:\�DJR-6߰�6�kG��*�N��Ո���xB�p8�c����r<�х���2n�G���浪���3��Z�fȭ:IY���Y:���ѻj?��p#�b�F��cV,9���p��j@:{��n��8�����kiLbl>AϺI)�mQӈ'�8�Դ�i��$V�x]i9L/�8�d����a�H�1m�ڪ�.�m7,�E^?���Qi��#y<&�ɢM8���Mf��`hux ;,�7��}����uD[���e4��i��(��q?/0��6�?������ź?^-�_�E�� skZpQ`����I�L	v8#6��Aw��l�����䧫~i��틢�.��K�w��n��Cۆ����l��6	;js��fն�^��4o�-����~ԛ���Z��:�&�ţ�T���������Ӕ�C��!�q��_{�ؕ�j�O��
�yg��AM=� ��� ��*�,f�U����$�8�&Ik��1ek������m(��P�)�·84O��^��G����_�Gz��_�~�DK^���q��� ��,�|�/�R�%a�������"�=_S���uO�:��@����_�2�:�����7R��>6o������+,�]���B�Řp�ߚ�Tc�9슱��HnM{��ұ���)S=h����3mQ?"@���G�#��� }D�>"@���G�#�z�Pi���[�:�:����r�Oԋ���Ϗ�����Hئ<}�+#Bh.LƠ)�=�5�6e�b7�}DX@("��ϋ$'(��m
o�ˮ;�M�.*�/��zE���]1�ǣ�I���~:$���A��a�@�;}i�����d[��/F��x�V�����詝]���,���(e)�B$��o�Z�G�w�ԙ�c`D�f�1��'�����!��8A`EAD�����/��ݏ��xi%�� ���3�I��X�r	� q���[p��t�`/�w��?����J��Vz��������2A�
G��dIɹ�8�+9����zN�j�'�5�>?�Gp�	��p�v<��nx?n�K��/H�LѸ����Ae��_~\z����� ��8��V��`b>C�~����& ��`:E�e.��LW ��M�\��B�)2�0IS"���ȨE_��f�5�h��r$qhߍG�����\�y�H�L���a;���k�;�v�����6g��)R��>�^�/r�X��}{�ӽ�� ���q����X�'X�&�^9���A��.��O%(W��!�s�+g���^�?��8�����oho?��/	��24dQ�H�x ^��شÒC/Zٻ��#ͳĹ�&�jξ�Aq
�3�:�3H��"�?��@@F�	R�
@4 ��xs�l�i��\I��[�Vr]��q�F��:>\�Ͼ+	Q�"C�0
 ���y'(x��<��^�����s�r1��<^�3��-$z%�S���r\�2����_�����J��7��<�01ѓ#��Vx�w�ЊU�\��<���/W��E�`\ �)�q�ٕ�*ɲ/�����h�+��X��*����=���Ƚ�zJ��{���j�!��������i���D�W�س\�N��\���w�<E*�ȌȊ�'D*7%�ݳX�l����u�JW���n}�S;���k}&�����Ꝣ���<���`�O��"S]axL��3����TH�'�C����`��F2N����zMW��]n����x��v�-��h�L�.l��v�h����?�h�b"|�<��:!/=�}��MѲBɤL��I���7����+ƽ�<���`���(P�� ̙�WK����eA��4� �_�d��{��N�)xgx=G8��vú�=�x4Ee��	TQR=��o�O�*�8�m�_O#��|8����a��I�aN�7����ک�'��Ra���Ȣ��C>/F{f$.��ÙYDs=��E��:q��];}�3!W��j[��S3�^_E��o��t70'�)І�����U~��V�ږ������&���<d9��y^�e�%dpW�t�f+�*M6�����V��5�k<Bܑ��xG��PJ�R�����$�ڵ�m���v��?�������?~�J�R�g���s�����'�z��WӸ ���=��h�_u�Ou��̪����`ŵ
	q�̐�q�����ʍ��?*ETA�"�\>ai��l˳��fv�����J��Fh9���_cWr����b���\?�����.�����X�S)g2�d�=�\:�G�!���m�%�M����c|��1£��,=��G������>�����RX�" ~��.�HUz�1��J�8�rU��D�'%W(�UD��%@�ǳ��o���4�|�A�g���ni��!4v
�#�B�#��6_ǇE/.[Y!�����i,	~�y�qcבy^o�E�'�|7$zk*��m��v�=#*������۪������ 7���
�0q�F�+�[GP���9�
�`�r�hI����Y��orr�$]�_p^h���!��<{�t�<;��՞��3m~eY,�"/�8!���?�X�1A�.�t���1]c�s��å�{� �"�Q��{��N�(�͖d,�il�i�8I}�d�>��qenK�H��b���n|;ndq^x�$YZd9	Rԍ�E��gx�}f��Õ{�	��\y
��Y]�&^nu=?Nм��N�|����xщ�5f-�E���qF�I��!N��"E�<�+�tK��W6tx�E�Q,W6 �ε�j�f�7��a��I$5ثE�_Q�zzl���W��uw����P����T�������񛨣8#A�knjj���7�2�`�Ő-ۅdZ�ƽd*�n�.u�eP]-'l(W����3�>ž����H��E��{E�ו_� ]^�>�6_��P1狺7<\+��H�ԏ�jG��$9��Y4!��2E���&)*�~� ���
�K^h?���YO���@�	x���(�����9_�e$����~YE�)p����[��g��2]K��G�V���S�|,�/��};������8 9b�{�i�o�c��{�(��)�Wr �Sh��~�ɐ�Aҁ� A2����Ƕ1��y���=>��&�$cZR��Mz�bՈS�:�uì���e�������^AG�0D�{�L,��������?�f�cF�Cr8�ONh��iF�'���MmK��l�4�3S�	���(X�O����V������	b��No��,�1CE���Z�-&�v��d�ռ;lQ������f��0Lۍ��^ĶЂU9wݙ�E0X͜�q���v�.��)sH�[}c;I�߫����jW���!�!$��PR$�tqW���͞ϲ]��դζ���w��`���~�[��C�G<ݖ�Yr]e�rNs"R��V�"�w�����l�3S��F3�Ӆn� �1� &���`��r���S�ȯ�E)�L��������x4f/% �|1����4��L@;o2ݍ?{��2��G	�	�2q%��]M�����J�%߇nO�{�n�W��#�>h��hRI�eI��)�6+ٰ���U.7A8C���q�cK�n	�W��x�=�2�B���+D~�����4IS
V�	r�p����_G�&�u�A���	�%PH׸[��t�]��w��s1F�CX�u�7���(\C^e�T����.��x\k�CO)��IaW�t�>2��4^�R��#z2h/$y2n���>0Q�\\�����n}�*kwV��l��O��r�dE��&��{�9����NY ;$�K���i~X<���W4_>��ž�%{�⫓��04,�[�I:�J0
!�C�C���MdW,o�W����    @R�Z�F�3a�%��^~�)����a�=��Z{;�8�%X�C@3(Z�ɏ)pI��eB7�eq�1}'	���WR8Yvb���!��D�_N�H?E�Eg����2���s,�H
�s� q#	<s�yQ�V1C=M^8ڞ,�!wΦ;.1���?�����`��#�?ϐ{�ED��Ir�]�"��	��?.�}�r� o� ���{�	�kFe�A�ȭ��W��8���xSv���]Ym�s}mO�5�ԛ3Մ=YVt	��a����^���ryNm+�fwo6MV�f5��1$�̩ ǉ� ]	c_���G�ЦW�����R�r"q���ĥ��ٿ���~�����_����$�3�(P����8�D�U��d3�os�����R���wV�>V�)���&��<F?��7<m`	*4$��qJ�f��D��bv�,��j? )1�z���;E�S���gt�k�'���巣e' I�<���������'�%*%���l��Wf�#��1C�s;-��jz5��;���w�NG�'�x��_����o���6J�x����di�3�$��K�SQ�}Z��/s �̩��ɓ�wK��?�qG��w@�+Y�s/�'>��������L-+	�����9�0��!�Qld�^��F��f)��X���Vg|3�i�_X�%�� ������<[����7r���{� o,�������6�q�v�XL�J�<)�$UKeY�	2�u:��&,{.[�:���N�O���W�!W��C{�m��2�G�Tb囯���b�a����|W�
����%���������͢~����J�
�$~9��;�m^i8�聳�HY�Ȋ/K�$��r��X]���'������ܷPV�{4�`������.o���� �*a�3Z�)�@Ӑ��[E�b8Q`�j��M\��i������U�,���7f%)�?�K]�_2H=>�b�5�aU�=Z<A�3˼F��D(ǷS�8�R� ��(�	p7YR��q3,�[c°�����F'wKt�{
�er�^#��J?�c��S
�q����L��
�\��	K���}�,�"C��?��YR�J��ĞH_��U�H��1_ެ���r�Ν�?X�e��a��o���Μ\]�����/+{�"��Ejgf��7���VK?'�zl͢ʾ]�&�A�Н	+:t��J��Z�(�w��B.`�l�n�z3OGj^�r3^P.=�-�V�!�u�kn��)ab�����o���dU�oO�3���^h�V������6�����;{�R�w�eH��`�%aq:E� xgp�H�$n�}�D�m#�mtٿ?�]�˿%�~�wJ���vT��P�lO&��-�5� �+����_1�
L��dH1͉!�%s$+��L�4#� R�37�ɛ���/��<��v���#W#�>'���������8s���9�P�d�@dI�x��ѽJ�EQt���$�3�5��SJ�)��ف}���{~��o�x��d*2X�B?0�(1Έ�,�7b��ߑQ|�4򢟑��e�2��r�si���1g ��E���j���V1�Ev�<�Sx��A�Uϡ�N�_A1|�&|��?��8���(ʸ@r�1�xWn\�V��� �����]:�u�f�g��Q침$Zb�Gӿǹ�)ܗO��7lW~	�� ��9�:�V���HJ`y�cd ��sf�W*#�jq.����ż۩�)��p�w�=�{��V��/�'AQ�EJ�E
���O��T�Fs���R�7ϻ쎜�@�(�g�5�|��9�/3	x��k�~�Xt�p@)�*RٴWZ��2��ɀŉ��i����=��]���C�S��_����D�c��#{�t&��A�;1{u�wb�����N]^��ן'���󍡿��������c�S�@��(
��<!��2����r�Hd=*��֮5�H��2�ݜ���IǏ�<�2��5� ���PW�����34d���M����w~/3��ᦜΓf�7fy������͍MV���kQ�1z[�+ǜ�r$PTJ[S�寱t��DW��~�\�忋�R��v�_���v�q�d94�6Y�)b��?u�<�t�]�����كH�S~w���=�Y��%����㼢�(��aG��E��:�<7����Ñ�g���0M|J�U�7�>�9�>R�%��J���"իi�#I�{�Q����9K
�B�q�8��M�bX�$� ^�����������u�!QÉsÎK�{q?�e�d����{�~x�t��@2��
+R�"C�
E���J�񾴤VI����h�o�䵆;���]��K4u~����O1p�I�7<�x�����c�C�����Y��Iܔv��8� �����d �ݮ��Br��A�d�ߚ>w��w4KЎ"�)+C�m�V�'��ti�l�C�%79j�۫˱��k�[a9��k��ɭ��$��"��žBBʻo�G&��e�H��B%��P�B ���IH�U�����S��N��#� 7�)�[z�2��}Š.�]�}Y��wr��*��d/�+C���.H*���S�	��qR $� ��!O����o�w%� ϝ�=\z���g�}EJ����?%>C�4�L�+)�� $ ���S8�Ȳ�p�t��_��t喝H��&+������34�tȞmE��(��S�Sd<Ce��H���a�aY�@ʜ$S4��n�e���;�)�_������h��Y��@��^�~�3�ν�?��)�)�22`p@I�a��)�$��>eI�n]K�Ucϛ]CF��P�)����y���s�����t$A�"�X�(S�x���u�(��~;�S?.�������a�뿼��<}L=��.�|�u�?��2����{�Q2���SC�GJ)ईCF��c�i9�������rG�㞦;��*�NἊ辱'�ט��o�]�<R&�B�$Ǳ	��4+���|A�8�B|\�w��t
�3��-vo1�A�ok���T�c��� Bx��;ѿNP9V�`����c˓���5p6���҉I�61�GF�)����,z��;�|�V}w����O����g�r"%Q4!� v��4�r�Ne���-��0��{6�=pI�(gI���&��D�Z�V�!���\OȔ9V��sIn�އLOQ�zd����0�-w��(BZ"H�e	H�" 7Gûr�2�9����2q�������2+ĸV�SD�saZ�,���{��
�-���x��]������ E!�Xb�D(�|�o�ǁLT��_"��f>��Ap
�3-�
�D��G��g"ߛ���a��	�L�=L��N"G�,K�@do~S�I�����G�C:�ؙ�S�;2��8L
�u0r
�3���2���y@�E���<_e�1,��_=���iPc�E��� �a��S⅟���dҐ&z>��|�6?q6I|���:�s&��b��_�O��/8�+o�L����n��@�t�+P"�?-��d��ۘi�N��)��BSe�O�ӯ��k�Y�������Ki敀"��	��'��M/Ņ��c��^hk�(�ǔ=����n>�ac����:��h/�����}+YS��/w�m��2/�� !(�������
 ���zV�H�d�w�>�%9�T_��Cg�]���z���f�-��І�O�v��6���ȱ��c6W�%i����t�}>`����$�0´Chku���:��Q� �����1�����:�����.(�r���^I��c��Z�h���d~�K��0�$���������mG��\^(�˺����R�AS�ĳq���mВ�rWZ��By .���k�m���ރ�� �oY�k�>Ӿ��w���-���j����kM�w��N0v�7�"?�_����E�,��4I��6�_/e�M�ߎ�z�_(?@x�Ca�t;c�.�+�[;ER�@��M\�m�w��Z��2PלׇI���D��;��=)��PVS�Fe2��bu��t��pm�    C-h�֒ۜ�]赼�:
[�iHy�h��+u�ho�N�Cޞ���"kK�ά�c��>o���lJp�VG!U8	m�;v��9� ��������!F/�G.�#���������;YЎnK,�v�N"7Y&FC��a��'�=�y���!;<�(B[��t����</��cb8���|:Y���$Z �!]ܚ-H��ˤ'�s��5#5X���B�E�HOֽ`���Z��Y��sC'�vDo���3�ƾ�x��1�X�E?�l#�{��+�p	/���C��J,��/z�����z�)�2�9:�B��2��u��)c0����s7�M��m�,�$�V3ˇv�V���I�f�ܮ�]we��ld4��8��9�6�~��`���G凙�̞X8r7l�D�ٶ�+�١q�F]:�Fu��;�L)�|���v�z��J�[-#1^ma���V ��5QUU��m�'w-v�Պ�/�R'�ټZ7��z�UU�.ݨ��y���͠�{���)�N뽐m8�lh�T��l����zX�8WXM6-k&A8�ww�zXl�`�a�4;�Y�|E���t�`sl�S�>V�E�{31ܤڮ.�~<�q�i�I����y[��8��bLQ#6W��~"�è�)�Vk���13mڳr��sCu��-*+�!f���I6Z[���b�W�pVŝ�b<�4)u��6���'����O�}1��{���f{),[ci��xkW4���a�{�[�j�XU����l���D���X2��Fa�{��u�4�pCc�qܚRlcZ��[`�t����#��P�����n3�áL#��l������^K[a\_�U �]Г�/��u�5�N��C�y�!@/n?��$̱�Qtw5�}jO#:�3�Ŷڨ[�=V��Lf�&vwƪY���\��-�������eu�1�e����� S�U�-�*>�.b�c�&��E"4hgKFAj�G��Li+�d'��$�"��&oc�յ[)�ٸ1��	�Lg;�ڬ� � ��霎�<�t2_�ϳ��'����n;*�UlJrE�$���=c��{8���(va����֞vWΎ�*�N_%�����L�tJ��DZsP��{&3`6�T3Y���CjOe��?�'�0��&Gr��f��=��N�������2ݘ$���[eA�WU�bŅ�Yw'Q�V�0k2O����L����p֒�a1���v��w-�ShhhO�:;�Z����l�T�nSê��9��oV�"���vlw�1��F�ܴ�S�M�ͦ1a�q�0�j��i-���ص�	����������fD��hl����E;�g���M�J����W>�2qs)��6��L
P�g8�vp�2#hۥ�dLi��)v��(���W����toD�b������ �d��wn���Y��n
=1,R�$m������U[�������D��_t�1�T�0hP�8B�H�����w�h�S� )���ʁ'�y�iz�>)������l /'ސ6�y��Ak6S�>=�x��>��u�]`��d�=P�ӑSl5oQD�pݞz�l��
�
U�#A���jcD�"�F;aݩ��_S�"�Ȼ]�V���i�HZN�q�TS���E�I�uP���82'�6$0�i�3��GkZ�Ȩ�����Z#[XCڑ��:a"3�����Z0VÄ`�DUu|k��nˑ𹚫cz��uS`���m��.9l�Ճqv`77�i@S(R}��bl�"�3$C�N�q2�T]f8���RV�-�{�%�f����gykƺ3a�ߎ��EQ�YcKx�&��q�٢[�l;	�&�*�wK9��~���]s{0N����S����oa[!"�Ds�������s=(F�N6��j��g��FUW*��iPmp��qg�HYH�gE�Zu�vq��q�o�jl�Li:>��Cc�Bj��u-ځ��]NZwf�lܲ�x��.��Ű�nu�i���:e�XR��%�x� ��B ۆ�Q��6�!�Y~`�;��_L����7�q\�Ğ�/T���[:�<d�p�Y�DJ5�mP$EqIqI���g�0�b���m4�@?5�z��?��o*22cPDF�ιuSI����k����kt<hX��d�eՒ�9��!G[�H)�u�!�-d#��#79�#�t��������\C_�,׭�|Ǥ،�������;���pƂS��B��H�L1R!�s�\wڲ�I�a��x����F�0Y����j?��O�p?Nv��*�������F'6�����ӎE��i��7U��i��*�LWv��t9}4��\@B�a��zƭMaQ�Ո�W��Ѓ�2�#p6�{p2ﻙtE�[i�Oe�F�B]�[\��d8Q��I�U^�r�˻C��qf5��ōy�1AXc��`��vx&=Ԃ���߅ci%O�jQ�3wW;����M{Jh����HY�G v����!�^H�('�em�)��<Q7��F�󛰺�k���݈�������F���!�� �ހq�w���C����<U8��"��p�����)��_��}�H�g�����o�A�@3�`Ja�f�[Z�&{���e1nq�j�o�
�@�u��wp�|:�O �%�|dGy̿�M
�xA�)��{�/�[{�_v�������>��e��E悃όs"�a�v5;٧�G�ߩ`�S��w�J^�FB�j(���߸V0�
��REA�����:�{ߗ޾:�L��_��{�ߩ�C+ ɸy��'/�Z���'�,��p(p	P�[7�߃?��'����W����O)0E1B�<IcE|0:S�#w��E��E�z��	Q@��F��>�	��ȉ�M����'�GΧ�}9�/BοM[���n�~������������������������������yz��SxanV�?���),��o}�N)�[��	��{���#���8d�"�Q���e�3Aa�-�7��(����� c�7��}E��%gu[K�X��nڻ�����������zX�wP�=���:���/���&�.���r0@�����O�����y=�/��_ͭI��Ȼz�C�'#��}ψǰ�a���Ży��N X�gp��7���x�Z"�B]�p�^�ύ�ߘ\>(��dp/礀�J��l��/e�>3���g�P�g�/F@�;�,��$��$��(�p���{'h����i�(L���i��`��ڽt_4��`��a���ī����P��1g����!o�����d���H�-D�4�[��ݧ�AY+�<J�fQ3:�fP�6����c'o��5+Sd�9��_0z[�+�����MV�f��7�����5H��8d�'�9�a�q���瀸��8��=�Ϗ3?�#~�?`��;Y�$�P&�z;ߏsi�K�5�\H�u��T��f=��PI:�6�,���z;2��zI�Z��i>_6���7e�c�ƹƹol���Y�Yq�����YP���l6s��L����� ���)c6G��`�:���qҺ��d�ٻ�)bͳ���P`��=��eaQ��Q1�7�I�����,]8'|���N��_7R�H��"aC���q�Z�?JG���J%@;���z1-��&����VWHeN�����fOg��SI4���U�F��1.��lbȴ*�'E�U�G��MV��`�kǪ��f�]�nm�j��X�ݢ3��j�YԘ )�[�ؖ40O�����ʚp92-s͵� �&���r'iŊR|z�p'�&;����(��ב4�ou���@��}��"���4͆����8ujC,�-�%�?W5��1Z;o�eR��aILx�CȴU�z�`�ő_�K��0���Dӈ7F��c[�)��n8��1�p�2����%$�� �iq�l"[ ���RsbjN$����?UU+҇��;��'�f'ǲ6?���\�5���z���<��j�]	U�i��e��U˖�Y�+vVV��cq2q��L^Q�j7��H�O�i���Q���U% A���f���0|\VD�    A�6:�>��C����e6��R�:O���g+���bnUM�9�3�:�ٞ�%R�Y<���j"���vc�:4�f�Ӣ���&��R��DNv����t6�����0\�'�s�C���3��u��#O_`fLy+N_�C�f^jh��˧nCem�1�yG@jhk�Q�26��0	|�-l;�N���m��L�ܽ�5��Q�ݸ���CsRW���'�a�8�Bw	�6COhK�$����]5פ���]�Ǌ�a�Nr"��F���N��%�,^�܄�')C4���#(�#jx�*#.td�+>���`�A=��N�>�y6[:��d'����1г<�e$����>zǳ����FI�1@mA
�Ex��C*�cwv4"���x�O�@.��.%�K����+t�r,{�4����~�T�n���U��ۂ���Aj쥹�O�+6|��hW�&^���L��Y!�T��)�$�Yc���&�F�*�9m��=������8ZVL:�sʜ�a(.!t�ӛU�UwFA��mf,;?��4_�\>�w�F��SO�3&j��4XD[�h�\�����u�s�_�ڎ�T��u���XF�iA��Q���j�g��~h��OCHo�"P�ޜ6�Qp���7<�Y7�p2�[�i��*;�Ϗ�ef	�唆�1�/묌U� �x��$����F�3^9'U#([�Ĵ�-;F����l�'_[N��m���Ƞ�y�0̺ܯYw#�	N�c�>g�AMF��
�%4�XG�m0UH�ٹ�Ղɲ���0���,�y߮�h�-Y��U�i*5	d��7�����nc�L&��Fȭ�����[ձ�i�#Q�9����P�@�8����8���/�L��/>�lu� �x���������2��wn뵥�;�8|j�/l�)A�W)H��?�/T�om�i&��Q�Q��7���e_8x�^i�/zu�G6�'o��L<OG��������P�,�f,:���� �(�c�(����^�N�	_Ӂ����d\�@��i1��A"��J��fQ��q��G�K��쳶&��sA����\��!��Dܐ���v��.�\���p�O��EC%�5��f�Y��\΋����:֩[������F��~������]�{lx~HOE3�qH����`ԛ����9�bUq�6�1��spҽ�y�xڋ_$|%�&��P���Ujz�������Ϥ^F2{2���~d��3����>z9�{߫��׷'A�:+G4av�\H��˗Ǘ��,	�&�a	��7�ܹ��X1�0�'������'@C\��.���0��,���!��_!�}X��$0���Ũg"N�m~�� �e��U �V��!��,��0�[��R�� ��8��8B
0�p(JP��(����_��������_�_����E]�/�}d4�;%W��`_�/ӯ�0����ogs��HC8M ,Ka8�!�B��@���M.U�_�s�.ps���~��1�x��V�c��mn�d��Z-A7��3�y�J�k���+��yU~�i�s���D�� �+Ѓ;w��|���͕�5�D
v��Y�ϕw�Nx)lx( ${g����-�/݇�}�� p��x@;��_F	��4�t)�R���}�7���q��l��ǃ*�ު�ӾM�~�� O�5�:o ���[�{)�����`��`�_�0�dm>�t�6�78a�,�- �J!�Hp��P"@3�raL6
�E��
�TW噛�Y��B�����G`��P��}q0&��BH ���#x��0����y-�ޛܼu�Q��Th�W��SxzSPH2C�����^���M�O��� 0Jà#��W=��I \B�/8D�@['~Io��֙��y�hQ0���a����6�8l��Owoϋ_v�e����i0͇Pszm����FY�0��������G��w$�U'��4G��8b�N[S�f7�&���S�$����²�4z@p���W՝�x�#����|Y���[��b;�N.��s��u����,ƭ��G��HQZ�`-ۗ	��%s�f�����ĝ���/ ��hO=���S��#Qnh���ˊ��0���4�҂��l���!f�S�:ڱ�^
Bg	�q���k��0�!Nt�Īi��)*f�f���d�腎�^�u�ƞ'��(!�%T��BDe�GDDE�x3��5�;�n��������=�t������IA�x����'�o�>5ؗ�c_�_����ʯ$����"ӊ�x�0hdu�G��$��I~)}�p���~��=@�=��=�Ax�;�t��D�Gb)O��Bi�Y�p� �g`����o~�=|���P�[�]�1���@�Џ�	��A@&�)��x���W�"��v �KE^��y�g��O��L�������<����"��E��0@]A@')�F1ԕ�!p�"�6�F!P�D�#��.!�V�$��m"��C�C3���wP��Z���ͷ�/OF�����Mf������)���(��ݪ��pr��-�ٜI'
O�" C�}��<�s�Nî�N�8��F�άz֖�n�"����֊�bט���N}�tB�i�X�c�nJ��t6��L�Y�|�)��&�%��c1��+��r)0�L��P�SKA�t!��|($J�3�A,��m�[ۢj٢>��j���eMXK�7�Ю�In��ǩgf����/�ora���K�4����[r������-�0ူ0	�"ǐo���"{���Dn�kJ��K4D�c�,Ų���P�Y�[j�i0��E&�!ߎI��y�m������E |�6ݬ/�y)�s_$������]�1����Ŵ�Z��R�I�|���v�o��M�$Y�~ϛz٥���c�-�ʟ�� 
�+F����v��uGa8O��$!����aXA7-�y7��D�����t��zX �޿�Y�y���6�]Y�H�~©�)<�	^\��%�����YX�����z|	B)�d��E(��78�1����Er��!�+8wH����g<ɾ�?�˘��_�?�E~���W�����쯠��_Ϻ�"�}{	�E����0ة�74y�x~�ҝ��B�߶�����"ދ��#w������Oэ�����w��:<�����suR�gp���ȁ��$�9��-�n4��p�1�^�^���R����*U_���_wK04�s<Er<Ɛ�&�?{]��@�/��+�W� ��@���P	�U�t�_sU�_iUd�'��)�:��R��F�_}N��_��[�__�`���B�GCS$E�,r<�B`F�7ԃ�_�Y$���F�>z��U���:Γ���Ω�}]��?B?��0��;��䩕��;�u���� /�[�7T&�����ݩ��m�_Њ�Y�Nb=�f3�_�Ex�OA�d~����0']Z�M� ��lP�Nr3�ʞ}2�QN~�x٭5��Ē�?8���=?+����n)�N�﹓�>��*���tyOo(/��?H@s�kܤ����8S�U�O��_��i�����z�?Ï�@�K�W0k��fb
ss/�ocʵ�a�j��{�,�7ːy�a�kTm{��MWk�6f�7gڧx�'�7+5ꏨ��X�b���\���w���yxwݞw�8����?������9�Y�?�n�����r�^��V۱}��%���Y��CI�s�+��cF��^�y0�)]�/��3s��ɇ�HS :݃���|������d���Aq�e���.G�e2����b��cu	����|������.�������m�Ml�?��m�aO�D1��-�߳Fu���0��zmAaؠϋ`	l���#�� �
L6��a���Yf%�[ �}�Mtʑ:���`�1�$t�io��̌��A>]\�f��s}{M6��σ��/�]��8b�1
+'h/h�Q��s/Ľ��2+�43p+���q�$�8�?�UC�$As���m�D��+i/�V�Z�ᢆ�RWRcӕN�T�^OU�n���;�    �H`زϵ�?�G�iL�IL�^rz�}
M}	d0}�����V�!��Y�%���&�Gg�V�t3��tJ�v�n�A��3���O1�� 4Ly���9���@�:�l+Zg2BNHt������1�ZM��WA;�r�=��2_r���³�����#�)�[�~�{�����nWgU�G��1l�$n+U�Z4˝��B|�\x�лY�vf6�~İ����;��%���b�Q�R�j%��i��tw�L��ύWN�1��̑l��c=�G�=�B*æ1\-�8����Hp��w�-ݷ\�Z[f���.�!�Q>M��Si�����=\�~8�-b�J�	�yI�Ĭ\UgT�v�S�q��Z58RD(HnՅQQ�=9�}�tk��Y˭*�����V'�Q�mw�h����47Am���i���̺ӒO�*I�&�B�:�c�jXĘ5����j~�籌h���Ew$R��E{��"+�������ڶ`OL�M�K��i'���Au"�2*��Χ�^��{��>����N�i�YzڡL:�M2Ly�S�Z�K�B`�N���	<ǇY�\n�mE�9łM���<F�BM~t�戈YP��M(uұ�Xo6S�0�*	�B��M���������A�jɬ��~~�se(�bp"���q�c'u���آV��:ˉ�٥��D�Ӝ�<^��	���V����c�����[?(a��@�����}���P�&T��&��!���tI��u9�
���J8kk�5<<]"��I��㵴E����δ5pŘ��(��69!���ʶ�4���)ag4�Z�`�������]�H�e�Z��tW�!`�b�G�y0�ruP7��ь#��0���c��V�0>��;$mHhI�չ�Ͼ#��	Ƈ�*"�
��اr8�L�(�<'����v���F%�S�� `T&qʳ�!p���r�X�lN:袙햳@ѷ���T�3�,ă`v��b9dw��X�s��	�jF����Mf��!�u��#b8�̮m�yr��xk�]���P�`U����y\E������E�����6I�M�#��A[s_�x�l��OV���VS����B?�h���V��(<Ck����s,Ǣ��	 �`�;��[v�@�R�!D'ufT�s�%]��R3]3�c���U(��Ҙ>P���؃�����|!O�=��QHFs6݃?J,�d��hˢ�0��ɲP���QL<b#.�F�3šp������;�K�`�1�������jN�n�+�~lv��D�Պ�q����"tO�)���Pu����ͧ�a�Dj�xE6)���e&%�-Kn�op~ma�\�EQ\�cV���˔���l�<�nQq����D1��$�R������82,���Rhb捼�����\L��2.w�x��D�ծ�ڔ�693V%b[�%�tڙ��p��{�,���MMV�<�Ԡ4C��n" |�]>Dc�QJJ@�,?��d9����Yw\��jy�N�n�b����i�	�wdo�1'�<��0SA��p��-��{&�
�&*��Ԏ�E4�'�;��F[�����>�~�M��V���N�Gdq�ǭ��K\.b[��t�c���jg&{�+m3M��|~����mK31�Dg���4&�)�,�:j���<s\N<!�clY�y|ϝ"+���L;-�Y3�il��
H��/Ct�:C�D�gm���퉬v�	�♶��`>��[�R8n�-��n�@�N>P���j�1R`�;"ɨ���bLW��cN����]�X�b���
H���d�$5X��.�4����tYp�n3
�!`������tȏ���]u�PՀ�0�����e☫�b;�y��N�x3���
���ƕTu�-:"ul�Z�G��-���_RS7u'��Ob�)�Z:�U�*����`�YZ��,�&G��&�)�P;G���pC͝��ay�z9�d~w�Ym�lw3ϝ����v!zNG��8�t�i���Jz+�š6'�c�ڼ�v��7�K�6`{��㊀J�
��"9�R�ԗ�c:��FVZtV�2�<�s1�D�Q��ۧt�;�븂�m��a-wۻ��h5K��Y�k�>8y\�# ��t����]z��|F��������{ �e��	�#�~����3�I�t�*pT_���3)�9��C��;�?���CmUU�GvES���9�Ǟ0�[[H΄@ng�ү�|y��%}Tt]�gxhwC-qL��G�t+W��Z�gD)�Gt��	o/��V*#��<��9�M����-`~S`�y��;���Pu�l��O��\��3�����7>�%Ȯ���4��4��0Œ������հuy1�8���߆`.��l�f'�j��k�U0vCSW����l��h?��+�S(��xǿf�φ�!
��8]�� �%`$G�K��&/��^�m77���$����6b��-y�  �\E���0�W�%�+�!}~���w���/�'�5��~&����]*�"đD(�
��B<M�<ˢ�@����@���M�C.K�Y���^q��W2������x�O���xe�7�+?̿��ecF�e9Q HeE�aE�ci��7B�:����~E��+~��Ϫ�P�o�k�;�{Pe������S ya~~"���??L�����Kȿ�?�_��CxD "�%0���7���Q��ޅ����"t�tw�����ᗿ�I��c>`eE����}�f�l��n]��hQ�9��?�&G3?�Ĺ����󼵘�Ã#a�o!�!�Q���o�K:h�0���,��0X�'̟I���d�Uo��~�2�A��9?7���γ�8�U���.ප��9��$�.���ª�U�_ܾ~1�/0,]��3�1�gx������~���};=�y}��h����_�"�]߻D���6�甠;?�pq�s������>�ץ���)���k`:��<��{I;<�t�=P��s=q:�O���2S7�����&��.�r�/������]��`=nn��Y��H�������(��ϼ5a��L�0����0���ä@>��e�pse> ��U��$���lf 
�9���0�U�`0�>��~l}���m�oC��t�6�O����n�]�|D�P��E�t���?C�t�8K�녕l���dƔm0$#<�~��S?�����r���z�k'��@ho���Ld�w��~o���~ }6����_�̸�B��;�ػ�k�zpx~ޓ���Ǫ>/���h��{�e��˔���~�/������� ���j����_Ҟ]�����<�Q#@3����q���>�����*xEY�}�7ﲂ�:��AT���Q��tJ��O���H`x}0���sH����L��crx�����M�e��f�b7�"�����o�"�P��R1=���ɘ�w�����H���z�zC��\ֱw8U0��	�x�^ޑA_�=�3x��/�:�b;���%���Y�]~p��q�;x}�`���{�����{��r������F���h��ҩWs�',�%�ti�;q�˻>ɗn)ĳ��G۷�>)�"��0E({���~�~�~�~�>k����~�M��&���+;����[��!`_�7&�WdN|t���'l����/m�p���R>�W0�"��=뿷z���6K�
�/5���D�=���a����ʣ�ْ���Ȳ�J�J�d=~6]�LqT�n�{�d�Y�s��!�h�ur,�񐎉�m���H�-7�K�o#�~l(l(l(l(l(�%xs��.Xw�o�X�������W�8�[ė����#Π���#,�pNQ��Y�O����o��?����w�{��J�i�B�C����V��ҭN�x(}�dҟ��$i� �>C8�a�aa5&q��|���B9��P_-���9��ը\D�>P�� �&��Fb���I2_��'�:r����B�8�&h���!���ݎ�$�%H2��QV����
>9'p$����� ���nv꾅(�w���    �1�"�Db8N���_CD��i`"�=1�����0���^J�a� 3�����g��!Mi#(�')Z�x��00�qQy3��[�|�U}��g��8���v�>�@���`�%�z^h��{��e�z)-�1#��`��)�{��n���)Ł�wR��.3@���]6��g�~
��3���㗤�!h������K��C��K�7��ĉ�1��u]$�$6��.��7�u���k(���C0����Z��G�1��1��I~��(�<�!��o�r��P��%��F��g2� s���������r��Y���
k��;�!���+�?N�r���;�z
��$��r=���1S��`��D��=�>�S�� g�_Y1"YB�Q
�Q�P��69�.�Q����XV6L?�b��#@���e/f
��.� ����Ӂ�8J�ΰL�(+o�^�wx_�%	�y]�FO���j�֧["�g���}���a��S$�q�)@�(�]"3(�b ^Dqg	�!a� x�"�Ey����J�c���| :P9�r��:��2��I.u*{��k%n�u���\G������)`|=���ϕ��D|� �/D�c�x�{�a#�����_���"p�m��z.%���(���^_8n|�Mϳ^�1�Κ n��}U���"�n۽m�XC����j����n�R�7ǚ�P��+(Na��A�Q]3�I= E.�I�[ɷ��q���B��4bh9�P�e&R�gG��8��jMXY�x.�4���z��;��%��-�v�'M$ؠ|%W���f��de��O�-=ⵥ�}qen4%�CF�l�Rahr��"7��~�z2�,?�"�()�����	`'�f��4����
�8u)X�t��W9>��w�ş"?&/E.Ey��EyP��i�	�{�(��'^X�O���~$�ζ���������v?��e1_:�
[���5/�$@� ��X�X�9��c���ާ�����mX�@Os�s4C"�L�ql@d��&���D��f��m��_���b�����������<*>v�D/� ���?����P0�d?c��ϥ{���_�D⑲o�'��������?Gmr����%C�B�%�����ɣͱv4:��|�[!�~��>�B8C���Q���,O�y�At�g0����6���k4�n�>�YM��~:�i4M��F_`toY|�jZ��E���v�耠Ȩ��fa����[�� �[sѷ�B��h�y�s���-��إ
}�4%���F#�Z�"��{�2������Щ���[n7_5-��4%I����v�٨���UL��LK�F6c����1����ab���H7c>{R1� z���= ($A��Sz�U%�e�����Xf_y�1�O�؋���(�\�$�]�E�"�Ю�M;�CA��<,Vl�l�9?��U��^J��l��8~Z6�?s?�XT����N<^_�N<~���jv�1�g=e�����s�_ұ��N<�=���xq{�!۰u{�![�%��l����G��_:������ē�z� =�}K��l����¬�M΃l�?�؃?UI?��w���	�<����2�K�`�?�&����֌�0� ���aZ�ߎ���S8&�3�^��F�Yf�>�n ��%qZ0�X���pA9�x����Qи�1�Vք�?�o��О���4���}�_�ˏ�pu0,��4�1 ���J+\2��/��z�1����jk�e�1�	���;�>k� �,��6{��L�c��k�Z*�hAAl��d���9�3D�N���'�xbOLw5咩��}�lޭ��k���o��>�0/��9�������k��!�B$걶��X4�k�nb�C{%T�I[����l�~�<��Y@�I�J��G�'k&��1^� }-�h"����=:i��e4Y��� ��4gn�p�y�M����`ƋC�X�=2=��3"�d��I����r�V�r�B��!�%�J��������	�!z��켄��BIti�ԅ�Ƒ�.᝭Ȇ4��#�Cx�μv��>���܁��U ���Sqv�D�i;�'�g����a,$���.s�0A~Wq�~9�|ik;�1EЖ��D"���,�l��F�+	*�c䄟G�ٜo��!o�v�㍯��IͳY�Y�j)���M�]a��ą�uӤ���k2����^f�E�Q蔧��ے���t��)=�B�l����K����J�Q�yM�(���j�h�1��Y�F��zK��'��\�ʉ��+|���:�Qh:���#ܰ�O��S��u"��K�4v���0T��z�T�8�Fpd%A9��i5nD~W*�v��%��rҔ!��3��&���)�#�N<�OMWG522f+�kh�ȝ���a��oFn��Ct��U?vyj�C�u[��	7�WA����Ӻ��l�eez�b1�!���6�l�l�37�����u��O�?L�K�S�����d"�Z���e��=�:L7�y����`��'#�Gg��5(*h�,��pa�`����8�Ҟ�l��������������v�ɢ�v����~Hţ�r}��Ý<r]�#��V����e�ظ^K�T�x� MZtA1��\�����Hs�I��v�:ه3�E�z0�Y�4>γ5BlVU��6�?ώy�������,��h�)l��1*�[�8G<v^"?�!��+�n��5%��SA���GKe��v�;�V�~J ��Cnw05����6�j���&��xWQ�$�N%�ZS�z<v��!�������f�3[�k��O��Ib&BG9 Yq&��c\$!c�Sׯ�@*a����|�[���.J����L��<��)����&������.���g�=gp����s=��mΦ�2f@z�Þ��v��`���(����G罿��̽l��舦�3���:��KѳP��0�[�{����e��fM'�mq���d754�=�bW]3w�텑�pi[(��
-�T���Ӊ�q�S�q.'OT����i��L۸-�HN�΁C-7Y�$j�қ3��CQtM�x��`� ���qF�����kFE�n��IuNoC5f4��<p��dZ;�Zm��4[&O$x��
v�s�L�`��Xؚ������H?��$C�T��iI��$�3����;����ͫdr�m:\�N�|*L�R$���X�0��LNZ�ۉ��Pt#ql�k�%��p��(����%��-����a��pYbY��/�QY5Y�4�cI�?��:}Gt9���9��R]��Xgrs֕|��p8�
��{r��ʽ������uE�C����r��s%`�Y�s�;ti"���B��˰C�;��d�0��	����HBId;O
��]�yT�+��w˴u�U둹H;;�8�|iV�~�\xV-C�(&����-�0��m�ȴ���:|5R�#�)������tⳠ2F�Õϒ}�zخ��eA��Z�����O�]�<��yj(dr�퀷��2��N�n3��e��O:]{�R���X?ll�sy�&j3��P�J��`eK��VOȽ�M�U`]U��JX �(�LY��մV���e}Dr8�䍐���Z�G��A�^��|(6�^'6r̢x��%�n�Zv��Z�K88��r��&�=a�U��] I7b����S]��%E�,����6/��YL�b�+�H�#��u��f�ڇF�����|� u�[3tΩ{z��G%��H1���h��RǢ��8���i�G�y�E8yz$�FraQ���C�\X�~3g�;��'d�0Ȇ3<1e��y2����Dgk�SF�$��Gklv�c9�cp��1�μ�������2�Hש�H?�<��=���dYV�ǎ����8-�z3a�a����c��L<���}�֒p��r8�]�3�6����Ω �����v9�Z��
��U�Ȥ焆��:|T[#@ g���������!~�XV�.m��S6���dW�ú�Qԓ�x,N�0����?��ݑ�n�� �j�	9�dfg*0��-�h�9�eeHaT���Nl�6�BӶ���A��:^�3    �6��J�ѲE�i��i�9'�v��l���(�M.t�޸���ص����h��C+N�ʕ`õ�Z��t��=��M���ODorۖ�.N�R�:�]����>�A*�Ǆ"�h��|��8K��k|~���8�wT��ĳh�A�zk����k.��3~���e��Ũ����x����Hux�w*�Ң�^�j�;/#�$��^m�x4-����~d:c
.�Ѵ�|�:��_e��6�8Hm�	1�-2ޫ�a;��z�|�L�=�Dd��涬��[cm�(ɳ"-�]2������p�Ϥ�W��zS��Y5�A;Y%2=,��
%��uUm��5AΊ��Sa��鞊�����d���(�, V�����[N-%���-Ҋ�Ҷ��n�|����jIEe�η�-�;5�y���-WNs�����	gy�,8l3JV'@Ӭ5%Q��hl��4�<B�H�`�pe.41����������{��<u�T�_���eo�8mb&�(�Ј �8�o�z�}���s��&������B}g����}3����0j�O[�x�*P"���;6������m�қ������8�)n�=:����'�>�������x�>�3�ĞC��r�^h	�AH졃�7��{���r-?m����
ğ���up�X��{���𧅠�*��}BA b=#,�̉��^U������ �l���%��՞(vC�����g�{
�OX��Ld>�?��#:�S"C�����m3 �>��}C~��U�;�w|C�W�l�4�AnS�4���;�y
�O���W�P#8�b��!��`��Y^�y�!�7w{�����@��U���.N�% �~�� P����?�eQ/��Wy>��^�� �����Sz;iՇ��I��U���.�"�0��a}p��������]�O�|�u)��ǀ���I4�
����?�7��:Lއ�=��(��C��J���+w^��x�~S��OM���4&1䓞�/#��j��m	ȿ�����[��a�U�R��D3O�C F�S$Fs4�S��!b��"
�p�9��{���η誀��^nG���+�>C��L��>,0E� -�_0�@)��N�DI
����0��4��8�a��7~�^�W`�����q��2�$:���&� ��'*'>�Z�[]�vnV3r��}������VZ('{�>��&%n��N	�:�C���Yy��I�'�G>���`�>8�ix�wDEYnZ:��;��Ј�7�a\H������B%�n�����z=��*��!J�i��*D�Ha;O*�Ҥ
�g3�ʧ~G�	{��C���7B��h���ҕZl/��qf�4�0�`�th2�D]J޺��V��GU2AѠ�tn9���f��C��*im���~fՔ��38+�^Y����Vkx����7Tw�t�z��&�t�m�U:z��.U���7O�D׀���y�n�)�Xׯ��S��E_G��ީ�C~[D�Yڢ+x�F�&d�%5���csv���Q_q�<�(�dd�/m�ؠ��������}d�3I&}�LlDNR�3ꂋ�u�����9S����I���%�M��l��4����t���f-����/�%R�k̮.?{^�d��813!�75������Nag!|��+U��<��d�BBfo]*Q��EÄ3�h�Cw���1���ϥ�a�'�v(4�����p��F���t��4B�����V8�̷�d�Q��N����N4�ބ���	@��-*g�Q�>�tKl�$�oI� b ��_(� ���t��j'	�N�Oَ��9ԇ!��a`�B�mә S�Us"Ά�T���� ��C={?�<�,��9Z@(�B��0�D�����j/�.��r�~h4� }���m�Bn�J��K�	�ۧ�� �ɠMaC��g�����0�B���=�`�{�@�����Q�B�My^Sgf��Dܳ~]A�r�l���Ű�J	ƻ>�q��y�y��P�H���޲��l�@��[?�a�m{�\��7Xdϯ�a0+� �}�I��a��!� ,� �=��4�ϱk-
��<<l0���f�\����y�ˎ@�����R5�{0���.���7`�(_��Y~�y�)Ҕ�ŀ;��T�	���F1Y���)r^�[��z"k!��͆v7 �]^U��]�Z���˚ݏ�ru۹vr������&g�g1n���D-u/����l_&X���	�����wF�#��(n�� j�Ѧ�eI�"��Y�s��$}}\��Q&�5�I�$�e�^�`1#��Z�ю��$�%4�I�+�%v�8���1V����]|��k���gk_�i�(~�P]F�Qm�'���_�z������K��sT􉂟�!� P0{�}|�X�֩������wt�"W"�\��x�����C?��׊������x�5\ק�E-��U�}Z!��[	�z%��B�i��E���D���I��}�4��7X�����`��'��Ɯ��?|ƺ��A�Z�0�Ė��ҝ��{h�?��%4=�,4�� �����ׯ�W1�����
�`9�~`���߀txa����@]���l�q,K|���`��������DI�DR{e��M�U$��<��L��AVLP���S�
���'���0����2����s�B��s�=��Ŏ_�f.��xo�2\^���TT�d`bB<	ٔ'	#��*f�-������Q�ς�� "��>͗���[H
���4l�%b�,�2�����?U�
��[��d}����N�e��S�����i�[����n����/�H��ɜwl���MR��G�N��/�%�	dX���Sy}��v�Kݬj�]u�����lCqv��H�jIP����ܴ`KI� ��15a�k(�`o??��xp��z+��oF�����,�O���Oǟ�4�))� 2�x2���G�x���_"�s:�Ů��˂G�=� lQ"��_��G����
�f;�H�u�k�Bc�k��޺�6[�ml>�ug�ʥ�1�	̎��5�ʂwҩ��h4�R{ki�f;\�rޠ��_�ژHL���֦��N_)��N�GZDB���������\�a�g���-�"@)!K�,�)	�l[�{�iv�1��$�r@9�Z����$�Z_��QaVgc~���c@�y9	 ^�I����ٹ��ЬD��!���MJ�O!��Ң�̲y*4�ʩ��XM����?����	�Ş���������U�Fg�G��}�|����F�%#�i�<����'�H��I�S(+34�&Z^�PO�OM�h���ǆ�d�q�&�"��e��S�o�#�
�����'\����LW��m|��ܾ�N>]�0Z�I�p�F0V�p�c�:��1P}�"��g�87P�=B_S�]8`$�!��&����c�W0�t��Sy�����P��~x
�3Z��?�=\^T/\��I_��n���q^R��!>G;�,�r������s�f����r����;<O����Zv�޻�8ص@��7�
T\�7�V@J�iC�5)P��5Tܝ������!#	ȯ�B~�j��-����4����n���C�d	��qhWR��(S6�/���1JC�ĸj�g"%�g;J%�[���J ��ݷG		��J��E�Bojed��X�{7#����j�� %�p�͟��ߥ�ݠ����� ���>n�8#$�kލ��͟���:	���,<����W���
1��YQ@Se�<^�S.����B��BǕ���*��J@ފa���K=���0}��XT>�~U�@�ݪ�2+�A��,�Z`)4���8ZW�Q{61�{�Hk��,n]	� 
8��t��Wiǿ]�U�&Y��˯��=Dݑ��z ��������]Jy�����20谚�`t�x��<���uG\��<z�+�zB1`k!�V��@���W���4N�.�] �cy\�����*�� f�bN-��-�w@{��vg���*    �;�����oM��4�28L/]�Ƹ9�1q�`G�9����1�#R@2��	Z�^90��XP��G^ ��+.Ѕ�-�qin��鎃A���w������	����W���_�C ˋ�Y�Pj��!� ��[�x�3�~�����G����_��ҹ )�m���4��̢�'$0��XpP!`Q>�
3��u%(/!K��'σ�\;7��!�M���e�)��,�?oܒ���� xp�~:b�dg�8���7��Y8���K�P�{���j'��3+~�1~;��%`#<J��s��A�7}Nh�j���	��ğ�)ީ��}Ք�q�v������Z����^TMi�2�)�E��)H��^�;�ͭ0��@� ^��� =�V���ʰ�]U�[8y= ?�N�J��~wҖ܃y���WtK&vO��~���a �o~�����I<�i>g���[�YI"({��� ��j���:�Rm�f��7t#+�ا�VZ4d� 6��C��i53,=,�C�N�5�o�]aD;��Z�1�U9X��K\�K����Oed�t��&�#�\M|�P�\��=Ŵ�����w�v�<���V�W�c\�b����􃨺K��]�FXz�WR�|0p�c%^������q�G�.)�Ǯw�o`�oO��c# =���;�������l��P� �fۯ�e�؀s�1�$00�ݪ�@���R��>w�&X����M��j���98 �x5�
hw�R��/7���Q�+��-"/�j�l��r��q�U�It��{��X��&����"�5TÁs�';�i,��I`�����:� ǵ ��&���ԑ��d� �7�����٫��� �۩���e�I� �9�ߡZ5w�J�+��8�h��.��\�c왛�s�gY-���*������Dj_
oWׁ�����������È著���į��2� 	�H��O�Y�w_����ÿ5� $�u��z{g7^���[N$>������-�Y9���ŏ����Ub�8�qq����. �v�
�5�K�e��
� �0�����^�PY���Pe��)Z�y��d�e��EB0�>��XG)�b���ar �Gߓ�5�d�^���k��Saq��0.��
���b���*�v{A�-w�0�_9��z��y��Y9�8B`�����(�f)�D��"�#8@9@���s���M���]�DS�G�VӰ���^X�܇�Cϧ�р�dw7�nK����9�s�5$����ж���aw�/
�a�Z�kbg�$�ȟ���"�أ�s)�z���}4Y�2����ڄ�]n�Ǒ���I�8�E�`��g�-�Y_]X�a��e��K'��ph����|�R��w��K)�,X�������)�����VZk^�0� �#��Kzx:oNE�"L�p	�0^���Q�ax�M/x{��z�
J#fnn��2^�#���J�5�A�B��)\~���2}�]���=\NI|�d@�>%$}�UW5��A���_^����`藘��5����cd~�12��3x�$0�� 	"!2���K��|l`g�Q���2�>��a")H��<ɀ�K"�ky���r`g����֋��`�������-��c���:h���-`5�r�ug�V铀�xsp�̰���Ц��2�������Qz�x��|@�bDO}b��X�_羙G��#:9˲׸�N�z[.�Qܦ̲z,�\ h�������I�Z��;ۤ���������߉�X��9�}o�� V\%���͟�2���W�ʰ�ڇ�1]��D��"?�8��U���h�;�C�J���m���o~	�܅��d��3���+�:z��`ߘ>����a�<,�/k�d�(bǍ�U���ߢ8y|�m����n���174��ŧe�	Ivʍ��%`t ���A�;gZyZ��?0�aV/t�y���v_��^uq��s��We���h��9�7��UE��*�o�|e`Yma��QT�6C ��*\{0)Ѽ{@�|[��S�t�ˏ���B\D�qpm� ����E��n	A�b��� �y�c%���u�-4*�Z9�>2Oq��y�nu�ʬ��$Ϡ<��d7Xw�9<-�Y��������0���� �����~�]�q�7~{e��`e��P��1��L�������i��1��=�{��,W�.�(M��E9�]>ǃ5?M��
}\P9ʫ�V�(�̝C\���w�῅�w��.��G��+�od7�\x��^�˳�*B&�|w?	�2Q�1c9�6e�P�H��Q�N\f��Q�&J�W0I�<��� ����V/��[���gI *��X��q�aw��Z�{�Ϳ���7<^p?��-��?	�E�ژ�#-��3-���?9��'c~IU��~�N�S�#�de�IND1�z#BIy��(�x�ܬ�Ր��| I����<ؽ�N��6�IO b��Ys���ߟ����}�+�y�ҧJj�����=��)rrJR��J�<j�W#x��Jǁ!����U�\��
y���&,�N�J����Y��ۜ�+�+e*x$�e-SVi:?�](e��{�U�	KC�J�|��B�{�ۨu��������j۬L�_�g:�ʡ.xBF� �dd2�J�z>���7�=o�W�x�$6�p_�-��W-�*8w
Ծ�8yrU��U^=�6��0���o����&J�K%�K��\ v}%=`���	` PD!4�b��
3oo�2�$*"؇:ɏB����w�O���e��l%���8FꜲ|�Te����j�v��1�{�i"0��F�a�m�.���5%t%j����)��J��H!��C(ɏH*�ݎ��1T�coP��ΨĩSo~)*����.�l�h��XW*l���^=����6��Q8���jBLW�4\�s)��縷�%D��abBI3�JS����۝�׀�U��%�B%��_�#��]��,C�UBA���L�=��-C�pRT�= �l���[�����H�<���S:*��w��L�6����*U�[=��=V����d�Ϳ�+ݼZ�Q���$��-�)dQ%�?�Ἳ���-̍{Rgī��-�!���ݩ�U��r�p&�#}��AT���	Ǽ2os#��e�٫���N�3!��*����K��)`�ݱ�:ZU�I`ܥ"�kl�(`Ⱦ���7TFP���XWJ]�O�=Sr��ڞ��j�e�J~��W�]n3�k/�b�a��*$��`�M���|[%�\�G�1ߕS.��&�]�2��Wf~[�L�����E����hJ}�:M��Wk5��O����9S��\�i��*1���
L���K�oS\����wTX�e��wVT�6JJ㿍�������O�L�Ӄӓ���-8$�k�xҀ����_�r����C��h3��~����f�G���O'��f�o���ߊ?v�����$����7Vx�z�]__�>���_��M����Q�18��LIS�)�y��+V��ky~���H�a�
�g�^�~�]���Z�㽖��G�n }���G4����YTq���9U!��Ӏl����;1��/��
�>�
�a�S��sI �����2-ʨ�#oz�f��e�ϛ?__��~�h!�`���	�TG��#`πU�=_�f�w^��A��g��G������(�/�$N�<&���d�X'I����0�U:ȏ�ϥ(�}��?������]ln�>�.c`�A^��>.<c�#$�^x���8��k�س�G�K0�PtF��i����0�g�~�O�!�<8;��,�3��q��q���8#���<�'6�W������f�|�0,��Di 20�$P�P�����ɢ�.#X$�����5��|CS�w�͘Ҙ)aR۫
g)D�Y�<7'� h*l.�Ѣ�g�lL�0@|"�,�����XX�OK�q�q�A�3�\����}b�4���z��i������8H�ܭ��U8���Zr���p(���@j������&��,�Y��YnǼ�ZS3ݾX����B�3F28A>�y�%    ����C0�8�Ӹ\�8��_x�*���ݞ�tqz�4u p��x���r!���m�3N��#����ց�e���f������<��`�)є����A4��</��`f�	f��2w�2�d	muk�L�� ����Fשl��#k�1@�|-1�mj�_��Z�G��?���s1�^���>S��%KH�3����G����ƗKG���������l4~�h�Ռ��W�~�����E�j��r��wT*�P(�-�D��U�ߤH���F4��*D?2r�\m�G7���g+H��6�3m<.��B�+~t�����G7��<~t�����G7��HS����GV�'đ�̸�
#�q�}���a�kF-Ŀ�A�ol�B��Y����w<`!�����~���f��N����?g1],��/���1��CE�1��U~�c�1��7�0������j;H�@^�i
ai�i�4��)�d������x�GP_;�!����@���5M=���'��M�A�Wߞ���ڎ���X���9�%�^�A��w���D������:}����v�PǦ���˼#p�}gZ�v-�e,±��Ge北j��!�����F��f0�6�X����N�l\ך(�-S�4�GdEᕙ����g�Z�oӋ�M�� j�ЙHI��#^�L$�4f��魹��I�0� 4�7.�!����ѷ?o}~�"� �ƵF�u���\��f�����N;3�5�u~0!W�����)xwV���&^v�sՐk�\��Q��BWcp�U��3#���]��Ĕs� ��udŦ��.��iF0k��s^�9�Nxͩ1��7Ȭ5���3Xg�T�AIږ����0pE^��>���K�aJ�b�w��������_��AG�Ü�`6�.�_�%����par�<=>�nW����~�w�<�V��#�%¿f�������K��*�/!�
�9Zޭ���:��a	%�����=��I��x�x�o[ ��Dᝂ
��ޏ �
b�d�=(��^�_�_E�>��xO����V�)�"�y����c��·S�n����\���-���_����Ư���u<�iQ�T��q�UǶ<��*p��/���*��T
���7l���@��-r�*xyO�-Q���ǀ/J��mi�h���{k*�����{i����Ɵ�X��HFM� ��d'�uF��P�߾O���{Z�I������*`}CE�񡕯9IW��*��+i�b �a�Ed}���ekg�]�IFb�g���<�ĕ�m��Œ0���������B�s����#I�N�ic���&�m,�g��s"��7���_Թl;�2�?���'�0.�H���X]&�b�3ƈTǎ<wL4s���(�X��5�W���!�--�;<2l낥�V4pk�%*J�v3����9|���0*FQ����x��jMl_�H�VsX�6��x��pK���W�hD{C�Es~�K���B�y��"�h{8��6;�rgH�E{=V��*��ӷ��J��"�2i����oW�f�7F�>X
��ИY�ɰ9ݳ�=������,�GD��d�6�Qkʇ-:�s�!7$wZ;��h���`C���2���0��i�U����w^�&d��qgRGc{a$���ƀ\ZLc�C'�єnk�"�z6� :�*r}����E>5G�!�y�dRN��%P�p���ׂZ��D�+:�H�!�*�86>�*�x�^�V�~��ňo�8���F��Z��]R�B�e���iY��W��t@,��Q��}���R�\����5i}���Q-�1ٸ�Eڹ^כ�So�f�K��$��V4W�U����\��ۚ6	ל��y����Q�)K�=�	���}D���[����> �E/iMIf�+���l�#k���F� �EmL�M�;�[[�?�k�O�kÉ]��r����k��ƪ��s[�)}j��ݙ��w�JpES�!�1�$�H�$;��PA�9~4�+����6���m����,��[��4���0��9D����c�-1�v:�]z��;A��voj�6�� ��ma1�z`���c�M,�l
u�t�'�������Z͎�Ԍ@d�� �I�]&�ՠ��5�����8�\K3�l��	��
�Pj�M�Y�L*�9f�Ht�G	Č`8=�U��u���;��z�pS�)�5��u[�����Xc�(x��mFfM����y�X_�[��K\#�m���������j���\��]uz����e�c,�u,�Ŵ���T���5v*���F����e���"+\�}v����J��-�6�QB����:����E�_m�f���.;�,�lr��KF�[˴�/��4��içmd����f3��V����)����+l���ݒR�ɡ�L����ȱ<2as�1HM�Gck�ַ��[#T݄��9d��ь����2����<�$������v�M�%9�h6z� nnw�^Zá���+�C��t�jE�;/�`�R`(��R�g̦(M�|iP��"���/(WJQu���$A�j{�B͢��C��쌮4������崇�込��8"��t9��cV��Z��ӝ:�Վ�n��t��w�b�s"��c$ohq�#��a�x$ٻ��z*��I�в�Q���Na�m͏����;�@��$й=�߲,wT�l���&�Z?kׄu7�0w.�lknt� ���h��̝�����]��R��,��X��V�[I��o���8�jp�]#R��#[�u1�6�nu��ɻ��$��Θ%����Y���������i({NBe�����/�CV����4����q,K��,�-+�>�]���ylK�����f�g���EI�s����m�Z?,(oާن0�V�f�5��Y�ި=D<�Q6Xo}��kdaj�����v"����9���&۝����������Fg/b�˒�N�@���1��w�=�NM�L�� kΦ푿����r##{5!��t& �o�����l��߶V�ҳ;��p��֬>�ib�4�i���D	U��tv#-��[����-1o5���%cj6e����'�
p��v�5�p3�3�n.�s�E��^�C�hF]o���k�%Z��H��c�#f� 5|�=�9�سH{�c�F��Imc�R�9��ŵ�if<Bu��<�vr~hwp(�:}��Vf �qw�[��Q�����:�h ��
{�Ƃ`�X�z(\����J�4�����Q��G���;�ؔ0�4T&Xa�o�D��G�^�G|j���,��A>;�F�P��4��)?R���o7��"o40R������iL穈R��b{��u;=�l/ /��"~
t�d�3��lS��L��/\eL�;h�Zc 9}�#���њg��n���� 칹��Na{��/�;��ڒ���2�|�Tl��ԥ;dhb�pX�ꎁ�c?^�1_�h}7F�WW;3��Z�0�T�ׁl���똻Ax�זL�N$���	�����L��Z�Yn�#��Z��&W�cU�G��O�P�����>E"ύ�a$G1���p84�Y�a��;:�(�eQ��#y�|x�;���w���Ew��v~�;�2��o�G ���@,KR���c��)�%H�IS4���s�����ΰ���p�w�y�Q�n瞲�,bs4���ۅ|�d��l����J�7�x�����*���&x��ބnYڌfkO]zIS�=�J!ȭO����7�U�	������a�+6�`���*�P�\�de`[�Iq�\z/V�V0���5$m=�#�:�G7��0�mBӻ��{��EO j�#=y�V�8>���n숅�����%B��������Z�u�g
�_N���w�ǽ������M��~��wk5}i����- ���;����=G�L��]����|��6���]a��[�_�����G�xI�$�knU^�A%�	��ү�����ΓD�J��өc�rЫ����WEd��~�zh�w��d!#� ���i�mu�f�-yׄ����@/	�Hݿ?���    ��4Y�u�W�C�k��,�S�s�KV��[�B �(r-�;��S�-��G�z�Im7�YXI���0�"���k#�Ϭ-����oGB�F�`Ey���$�Q(��#��#�;ߣ�7�E��2l��PuCG����O�䫚�+�2 ϯ�/ x�9E�F:N�u��h�z�Y��K �x�X^�3���-�Z��Pg�2nf�qn��k�P:�ծ!�iÞr�h��� ),.�I|N�s��(��9�佺�u�ԇ�`�?��T� �����)�-8��EP�|����?G�q�b/�gx	��4r��\����$TA.TK��R��u+����P�N�4�I$��<`&)s�;�,?6�䧋݆�v� �kew��ޓ��F=m6��Sܓ�wO꾜�t���᬴�����&����RWT�������68�R�8�"0��(����O�<�m:O����g&rgf��\���;7J��=,���z7�ab,�(�\��p�D���}خfd��Z��re��Ί�m����oa?ٲ�*?��Y&�����K����[&,��Va�W��ꂲY,윚\����_G>J�Ð�${M�����U�uH�Ρ�t8�a�E#8��/��:?OC�|����sH;ۻ�E��?���BF��<�$��<0��JO����n�0�6�/���U�"ܣ]�
Q.���%aR���[��n��>	��_��h+G(j,��>wq�#'|���v���ܔ�C�׶I]�%���L�NN�,�8���g�X��ant�f���G�o�A��ؿ��TI���99u'}�I��Q Sf�Q<�$G`�#����Ĉ��Ā���0g���{��N�k�,��9v�`��q5k��S֋��&��.�}�^_�0]���-��B:7<u���Q�9��
_o3�۹]�X�{J�J]p	DM�"��oS�"�/'"�0�
&9&)0`����+Q`�^Y�Ten��殽8��J??��)�����8%��w���lU$
k�*�^_������??s'���@G��=j��P$8�gg��Y���s���s|��\����QZ�I^�p�Y��e��y`I�H����o�?��7e���U���(q�x��Q~��'�k�Q?��G$}��[т��<�������y�+�2/����;~ D:k�p����R���!���(I! �4J�����CY!p
� ^��01��b��9�/&
�	�Yav�b�V��3�^=qbw&� _�]`M�[�}��.�7�� ��dӐ�bnO��`c5�i<w�i�@p�����nPGc0�m,��v:μhZm͋7�)U�ݮ��t'{{49��c��K�l�z�|�ך��7s8��GE���t���~?��� T\6��-��ڂ�la�yub��-���uA^k,gxj]9�4I;HP�ȭI�E}'B57���RGg^����[�gvM��LU�Ơ�w���q��=F�Ĳe��h��d�_p`Ͳ����i����(Y��d �B����f?����eM�����ؿ��G�e��g\��#������[���4�A��^�P�������/w���{Uv3�o^5��v��#��H�8�;C5(�,�I�n���x��4ȧPLD�D�q��V���7|R��C�(R�Ϳ���e�xY���3X9�;8�f��N���*m�T��enn����Ꮡ`�$}���O���y��O={��՘aHu��s5�����P
�ih�c�ċ�<g-����c,�S�j����P�'�+�q#�򧚉/m��Ƣߊ�f��9��͕?�����Bb������Ѕ�����gCf��?�Q+�g�-��2�v�����rr+�H+�[��P_�aA�|��e�a,e�K��;`1���5�1s�~G:M�̜fX�I��3R �:��ma�X�7�4�``y�������D9Jd�ӹS']�&?)u�6�#�����ʔ1~m̑꼽J�	EQ誓�i|�ص[+y�L������i�e�B��p,��H#����[����0�ikɡ�!��AA�"
��@�Zz@����T��i�p4�9���BD����MF�l{D3�z�����B.�Zg��#�#G�G���Αn=�#͕��$��&��8��0M`�O�9U⽩��ϑ�%@~@z�N���PN��1B��`$���[����6AWj�ic���W�=��-׷8~�8�ǃ�}���>�4�EaĒ�s����I���)4j/�x��ov�2�"-mԅ����8���ڵ���f{b���\ek�5�5y�P���l( `l]c����@^�z�٥D��u2!�F:k�jwZ)��{Ih��5B���57��t��U{<ZQ��`����Y����%����f��0�����v3�%�q�-l@���Y��s9�U�Q~����qsժ�-������}�1�y"/g�D��Bw;W����E�2]ť�;C9�h���J:C�X�Ή8�͢'^�5C� �CU�Mc�&�1j�cB�&�%�Z]o�Ȑڶ�&�p��tD��#t㲅�A?~�ݫ*ճ�x;g8|�Yg�V��,f�.WN1���x(���M�3>���͚�SQ=]�VB���oEg:Y��(4Ym#�����J��Xw�Oq�x�+������} �#���I,FwkհL�*��k�[!� V�ɃQP�}U�jn�X��"c;x��pF0���6"��	�b7m�m�JӬU_ ;z7�w�-G(��n �V�Ʃx��ܦfM7"v�|���Pz35Iٷ:ssWL�[a�o
Kn;�U�oF#uhyb���6is��a-<��)Q(i��X�iַ<���x�Ϣu䠈�q�*oq�-[,����֓�=������FT��f���;�Y0�z��� ������NG:�ё�3w�w�EF�s�b�B;#T����Ti�@
�@��d��_���&�'7F�*�!i���B�VNi�^�I����'>m�"�v:���{�mɵdݩM�c�Nd��C��v�����P�`�6֝�����.k�d��b#]m)�Hh�w�Ttӥ5���l�M�@8o��@I'(�����뇙5i	��5�-q���CԘ�tO�tʵ�5z�%\^���7dZ��Ѳ�o�)72�6�#��qѴG(
/���##WrŞJ�:)0P�{�K���-���*H[��Ɩqh�J�8�q��H{�9�k�h���l'5Yt:YR1G7��1G�,�k��v�	ک�Msm�A��n]���0u]���^��d4ku���1���3G�����a/�a{ζ�;��m����d�d����|�O�n��Phw��f5a1q �F}��Z�Xc���N缫mFf����1�Cu�y���7����&\��e��Ko6#d��O�é�Y�r�� C}g7�w<kE������*[3�΢�E��:⽍M�{�lҍ:���2��@��c"����-�s��l�)8�h�>���r���'�=c�����Hչ="�ǵ�Ps���F6�P���~�CxV���pش׽Z[��>��G�~﬌To��fN&t���Zs�7�!N}z3����Л�f�۰{"� �zu�Eu��O����Kg5��[�4t�p~��N�*�Rk���S�a6��v!0j>փ���@�Q�bc������z.p�Z5��C�A��pi�w�]�n�o9�ø�b{���`kkBM�������e1ҙ��T'�ЈV��V[[ G=f��'�~/�-.���oQ�d{��};Ȇ�:D�e�΋E�_s�>׼<m)�X[%͚Cϋ{P�t3�}7�%uqPj���D��6�ao�ܱ�`���8�e�H4�IV4�f#��ж���ž߲�c�����*\�˱=R���ؙj�vy���j�pz���]k//�0L�-�3��*�&zG��~o��jj�c
����cRs��Mg����5B3�1_��EJwy�%,�.��e>�5��Y۰:���Qj���vS��C�c��ʛP@N�q��D�7�1_��l���`��^��S�S    p	���A@8�劉��3ڎI��Yr�N��=B�b�5 ��4z�֙(�̊��ЈN$� jҝA=�����f��ְޙ�v�yG����ĵ&c �Cgt���ޡ��Z�h�"�R�X��.z0둭��fw����a-�Q�WK �2����:���Ψy ��(����/�[���>�35��u#�_8��Κꄮ3��ٙIm�S��t�׉��	TG>����S�^��Sj��c��6���N�,�"[�:FMg��0�v,q�kNU��N��6 _�ŀ�wmk;n�Z���B�4d�!=�v�>��i2����;yF�XĨK�X]�2(���g��_c:ʹ��C?�?���`|��q�`I� D�BED�7˛_�`\6��n�֖���Q�s�Y��u.�p�>��tв�k��"πN|56�Y@�(CS��4g0	�2�ΓQ`C�1��M�ө���?�D�ӱe�H�y���jc_���]\�V9+�%��G{�QB�7g��jF�K@��<�K�]$�A��f�~�D����:t���OW��in/����p�n<�ϓ�-�(����,�$l�[���=�(����Y �j�����j��*���k�)N6�� !?.[���n��~րUݙ`t@T!d��5x�Y��W�:u���l�yU��u�Z��sDF�(
`6�6����P�%N�қ�}3����]7�r!�#��e>F`��f5�d%��⣵Sv�Z�-��� ������uf��*R.�PA<�C�%�P�����>�ڇo�|��]>6�tm^!��]|��isI����5ս�͓�X�Y�K<x�Y�.�\j�
߬����x9�h
����� ��D���� �����Ϋ{U��s�p
�ˏ�Q�mu�s��p���Y���}y:p�6	{����3iU�#��FH�[�_�?6;*������z����>���3��C�+�Ҋ ��9��̒�2��Lg��,�!��^;�$$��P�`�c8V�79��w��V$qM<��T}D^c�7�e~~k��M|AnU�o�����s<-8��$³8����$J��Ro�ă��j�����w��Yq(r�����~Dc��I�{i�/�ű��w���|8�'DLBhB���H����݅�Ͳ1nݥݼ�K�������=�������{I.���<%8'�ȣ"@�$���/����_�����txd�i��p;������5��g���~�b����b�j�~|��#(·�?���rB�S��淉� �R����Y��q	!2%�$���)�� �D���\���,ua�/ξG��!�D��Sc���Џ(�=�3�yi�Eb���p�\q��8� 4?a�;��"/tgX�bH���7�����^V�f�LrI����	���� }Ax�`EJ��B�(�s`��+�XGa�
���=]���!�����̷����v/�^`��kgu|V��b$C�����*"�($8P���2E<W.d��ax�%��w���\i3��$�;���c�N��;b���]�#�����
����[�Kt\-���Δ
����̠�����P{�E�t��B/�z�Ыkvg�A�3���K��Z�.cJ5$�,��1-��^���\�2�r#oĈ/�������_��#m�Y��͎�^'�^*���Pw�Z}�^��S1ttY�U9(��A^��PD��ϠC��R����vþ�텅4"��G4���A�64Y��t�LW�>����n���TBdL�Q!h%�h�!D����ɖ�G罹g�W�����+	�W���خ��#/m��IO	��O��q�
"0���Ǌ�Ȱ��H���HW�Y�
)���:.����d��H��Q�6��6�Z�O�(��oȣ 2�R���<I���oʡ͖U����|@���k������k���H��o�8�@�P�+)��.��n�W���C?)��W�]��ǘ��<��_������O��:�b?l��._�J4l�� �^^��JR�FY�"8\Fi�x�MϿ�N�kge�YG�	�q����ߊğ��G?��q����LW�o��$v�e�c(�x�?������,�_F<�� �q�%���\&�5��w�!{��0�Ha>����+.y[��G+4��������s�$afj�gN���u`�Dp��u���z�J��+�qO�$e�� 8e����p��h��i���9+
��.�¡�s.%��I2&H�,
@[��bK�(&1�P�;@�
�H��@p�pQ`.~�K۽� !�_�B��P�!�@?��8N}`(��Y�`��i@N���+�>hg0�z�|��M�1�̾�H�c��n՘��������dD�V�_����r��J<�.:��IM�*��{i�a)5qÙ�H-1��6���a��9��A�;.���#�a��qΡ�k��;��mD�8�4W|�;��hn���_R�����Vb	�jg��d�jub3�mf���k��b���<v(E�'ͅ7Ţ=BZGB1�F|:"L��F{�wDO�8Y�-u4
{�R���3@�������ꍥ�H����'�$��"$(�	��I)�(E�7�]?��^�	�r��As�\��Ww�����7�%!��z�'Bc-��"C�GѲ�	��<N'�F7���>��F�ǆ��G4��| /m��P�������<$	�	��y���a%E$� 9I@y#�n~�MteFI����(u���E���V/���z�gN�DQ"'1@+#�Q$ D�Y���d�h^��lW�.7	̍į6���������?�?g�� !�5�Ă?~/���%��-�j�#�\�l��4���U�-H)$ Ӏ��(.H�Ρ�Q�7�;1�F����j��ݫE0�)����a��~�>u/����t�������֝x
]a�7���?z��/o�r8��ʐ�`�+8��?���a/'��U���ϊ���8��{~�{~�o�=r��g��$�����e���?��K�i���;.L?��y�˾�����W��~w��s"�r�;�o����DH��`�z�&^�i�a.����b3�sS��ϔ`�k�q�yL�⿏�����E|ÿ��	��O�r�����>��s��}|q�@�E������G�fdA�Yر�qD���y8�="�m��}��8"�zD�W�yGGP�d���@F���Y���TEH�"<�ts/���/��D^�]Č'y���,�,���Ȝ*����Y,�3#3^��׷�&}o��%�٪�h�l�y&�����iO�~9��(�p1��Ez�R��΢�{�2�;�%�wk��ʴޑ�:�uQ{��������y��:b8gB�1��?���]��1���wS;��ye>���%"z�h6�E��7;��Lh�X�q�q�1U�ۏ�ς�������v��w�c��G3�K�ggrHi����-���FC�fN�Xh�W�Bs�Bj�$��C�u�^�7��L=��In%dG2F��5��v9qb^�;�{���~���c���;����898�;V>���k�WN1��땽c�|_4M�С����p�N*��Ȇ��&j����t�&����;�g�����'�,��Y��$��,�[)�-n%����9�����tESwڜ3�cy��X�@I��Ц{B썄��Ӿ�=�=��)W�S��%'������l'm���l8K׶��86�9)�r���1�ѽ��L��Z8����"v�f��b�L"op�5���������a=4�Z��S[�����</�35uigSQ�μehx�vny["w���Ӝ���:Bk��>P����3k�	c%�Ԯ%�3�wkCl��4Gc�h��5B�	�%c��ʧ��g�ڠז�����"Ѯ�6��ǘ��!� �P3֛/�[k>������C9Vg�.i�R�Ԉ��9X,EU�Q������l�4����ֺ�vю��{��m�ђ���@�H    �u{�V���+Jm����>Wx���6�p.O7�t9Xb6.^��G�V艖'�}X,u��F��I9��u�������(�"5�޶��3kQ6�+�j8��m'r�v�e2���P�l�X�e������t:L�Op����Z�K�lI����5{���2	ؐ���e&��q�ȤQ4�[h�-Ж�2n�Ԃ���m�l���X:s0ffvLMQ�@��v�����L�I{kL��9�:����H�w�1?��Ҙ�����Z��r����Xa��I!��Z�e�q�Jڬ�B��!N͙���e�;e�����ވZ:����~;3��f��r�S�;(b�s��z�y
Na�e��o�6������m��[�-u6d�:���f�g�h7��˕\t3����a1]:�~���!��Or�n����n��=��7Ř�m���r�-����)5�|6�:�Z�l�\m;�w��E��%���SG�c�\g왓N��í95QSc�A7img���0VE\��l�UB1{�$[�t���\�O�D�|20��%e2��"jLF ��N�`��`$c�k\�7F�ѳ���[Zw?�xe�QS���A�(#��%��۸M���ٵ �H?L��}_حW��i����Z��`�j�ZGvC�ْ��l%S\�b�<t'�Xu;�o�Ӣ�0�IYW��ȝ,�MO�6A��׎�옥�F��:�(��;u�c�S���f��7͸N�3��������{���u]��oQ����v���A����<��DJ<K�s�@J�ăD� �0���H���ja#@��ns��$O�!�U��U%U���'���rY%������m��p�7y���{0�K�Å3?�g��Y5�z�w�{����86�x��Ϲ��$�y�nO�	�A_q5�>���<y`Q1:��Vv��ꈌ_��&�rBf�ʍm�@N�������t2-�=��&.õߍ��E栙n�r;����t� Y �8�0ڵ}c��gN7��&�+��%.�KK��	5	�H:	��J�u,izpR,,��eZ*�H�+�n`m�5_)N	�l*�r�������=�Yͩա���nt W�ń���$|31��˔ es:�x�N�ue�Wk<)(�C�d8<w���7iK�%e+�</3۹�F[U�κA0��m��F09�p�	�aG�	ڟ�[-�,�ڕ�'h���AYA���pk�K?(��n�&��?·��IiU�[�l�gE9�f|6��Y3k{0'���J?����\	'�=��
L��IH:���-�W�"p�
Ow4g'��h�Vu8�i�%���6�z���(���S����Ŗ0�"�i�.H���KX���J�F��ē,D#u �=�
���Æ�H��$�p?׋����60 ɫ��"{Z���J�����m+��d�(j��m�����ȸ�	>̓����R�B�H��PB|ʚ8=�o2O��֜�ٲ��Sog-/� ��	OM��*���,�%�2�@Z���|�>��#N��b����"�c������v�*��z���E�;���Z�w��"���c�(���=6�h��ul&	�Z�8��I���8"Q[o�9���1���3��1�m���	e�EՌO�q`/�h����ޣ��$�� 2tJ����m�AP�ܒ� Cہg��:9�H�����9`��-� FM�A�.�?�>O�m'#mb$KǙ�!Q�<�L���BK�Q����RW��[P��m������6�1��7���j�Q"k��<u��%ja��M���\X��A��l�NK�E����`=&��"�U��I%����iMj���8V+�d��Y�����D`mv�Ə1'�[u=�%��z�QDr��Yg�A�B{J�
��\c�sF�<m��.��)m�L4�L� ��}C֛M���U>K�!�E�Z�[��������.̧��W~�
�H��H�����vN�|�E䍺^�R�Z��o4���(� :�h�d�,��f5X��pR���Y%��6¤h�F��
e�D���G
�l��|5�*5�)Na�h鈚��}���I!�hm^�����C���ƝN�sX�8�hJ���r �b�G�����w1ll��`Q��j�T[#s�&U�{��O� 2G��$,�}EY��8�PNҜ҃����F���h�"���K}�c�L�\���@4��<�Cg�x�`hm�%.2:4��q�j6�X�o{m�9����V����p�e�I���%�So��Ǫ�ڬ�3�q��l���KF�4�M˒}o�z��_��`1���AVkN�������2+mCejE�����(�*5���Z`�'�dh���u�2Z���a��D�k�Y#��1��}O�g����y͸�����{�PT1�=_5�QLڔ#=��Z�����5�qtm��/���$'K���we�iMr|��t�.�l��u���$u��M6����9��B�֎�
#�P*&�tGƲ�G�(2����>m݅�5%�'dP��ʹ-�"TMN�x=��mܡ����3�q���&���g�՞,��*PWۤ����s}Ҍȭ���xC�f5�I�S�o*�a�]�@^MQU;%�@m�p7c��U��O�ހbOt��a:\�?�!�n�İ�ޓ檵��<֖k�	֑j�hL����AC��o�L�(6��e��F�z�U��xˌ�y$�9ش�?�[!��)Ƥ�{v�m�60�v��k���_]6d��b+5C���owv<c���3Jg7Ė�U������r]��7�;�c�4/�`�dyoD�6�6��$�Y�AZ7��C_rlUR�;8�ao�y�`^���xk%R=>ώ����N���Aq-�Vv{:.fV0�a�n^�Yyx�@�Ĥ����f�:��A��ˣ`r�҃&O/*4�xя�ܢs������ϬD�ii`�##��v|fغ�H4���pT����'�-��-Ō�#�xm0�l��i�rB��y�i�Gê��i��hZ�뇓!�X����5#��=�&Ɍ���0�)5��+J��YXK�F雔5%!�d�-��x�/�ZcaW��E�VIƸHn�N�2ҋr3�ǅ:PYB(�c5��0�)�@9�[�pY�ڹ��1���hhϭ�i�c�&G��HӬ�Xn5Zǃ}��fYy��Pe[=�65�Ґ��sHo�q�Yt@BN�H���V9-���Q�r�Cy���,M��l���*҅9����u8�c]��\g3�8#'���55�5i���s��d�ׁk(����A>�KQּx�2L>R���:��q��i~Vh�y0���1(��l�g��\[9���1]س�hn'�q(�,�;<��Yh|&N��f��H�>�
���Ó�"W���!�e�q��d@K<���K�)�-�m�ކۥ?��$����������q�����}���C��J��:���nSA=0���N������S��Ֆ*�I�;m4�i�l�"w=����{
����X��
�3\V���/cZ��yϫ��`�%;���K(��id������J�f�����������:�+7u=O��h��2Oݾl���斫h��'3m�R"����iYQ{1�,�F���<#H�� :LN���u� /,U`���A�S_�#�p#*���L��J�[G�m�Y�Yh��a�|rrCh t����J/6��fzYXA���Io2(�� �����}�f���ЈrM�x�ӤF�����3G��4��}�#VJ}Y8~���Яf��J>�`��tO�0�\h�����u��X��6+ɭ��F)	*<µQ����v$��@ڗgF7 ,f ���#���7ҳ�ٵ5�y��J�ġs��"��<el��mjn��E���l��!`��ʎbڞ��G��2?�C�;L��Ӟ�m<�V.�5i_����ȝ�������ԥx}�a�7���&����k|e�RV�b��v�
������I☑|��F7�v����9V���}�;��`gK�8��xj�;�B�Te�=�&�{��l�	u�A�AJt�i�L��%���&ȶ��EÀ�.�P�(�2p�&��-���`����Fϐ�W�b?R��4��RM��    QgO������Җ��(����F���K{�k�?.� $� �Y�Y����,��֊XcV����k?6}N�N����o	����@��d�$f4�A��9���=�����8�hI,f��jg򀔅|X��`�N�|4���!����D����f����i�Kʈ.�����ܑ[y+������L��F���Q'�L�ɱeۢGV2[ǫE�Z��S2�uٖ#e�H�a8̦>,� ��pՐ�6��y4{��-v�Ծq}�P�����jFFG�o+4�?(�xNZ��v�9���,��4f���3{�أ��z�n�x|��HC�cy1��E6�C;�,[W�Vnm���X�I���&6�kɉ�Z�<��"g��m��E*1�����b�8��E�A76�8�r�E��A=�(�p�S��F�5�z��v�*�d���Kd��P��6�+���� lg'��i¤�
E�����H�4T���sݎ'ڬ_��&T�#��
9�sq�0�|?-NE1?<q�n��w�����d;(�	������۟����S��L�(�!W��s'U�u��d}\ES'�>��V��sR͙p��MW�6��֞*g�
]DGp'i��=��j�;�eh�����.���)�K�0;Cbu��)l��lŤ��@�Μ`RE�!Գޙ9��i�H&Uڟ��x#�ݔS�7���\w�r���G�
1:�ZLϺ���4ݑ�c��zp.�H���\�G�,I�j�3�7�p�5�.�e~"�RU�I��z�?cG����>H�,0�#�O�	E@}9�/�K�q$�~E�BiCd�L]����ҽ�EN��}�>����B��
���w�n���r�9Z��i�@7��P湎����0V�) �k!p��GW�טШ�5p��vȗX|�p��׆�b0���kc~Wa0A�C@p��������	�h���A�C���ʮu���m]@~m�G��x7hs�Gw��o+��Ȯ���U���d��P"����)��ؚ	�� �i�&~Z�Y:�����!I�ie0`�U/P4����I��iT�"��>�#-��Y��*)��%D����B;M���M��p'mA�O��9��G��=a\����.�+��4��2X�z�p�:rn&�y�sݹnb�i�3n�a��"�(U9G�W���T���8+��.ū�7�1��$O�Gp]e��
0 �L����������=+�'��J|���? r����2:F��=�����c��_��}�$ő���b�6}����W����z�|������(�?fb_�D�+�h�	"Z�\B�'d��&�ѡ���7�> %~n�k��Л�%�����V9�����7�z����lwS�Uo]?�}vu��o_"�}�?Żc�L���?���|_Ɵ����O_�\�B��f����ǱE@�0NB?pH�4#�]�f����kv"$Y"�����F�]Gx�Y�Q��=�6ؗ+#�t��3-E����,R@?p2w4� ���6 ��F_37̝�F�n!:8�d!#w�u��pT�v�v�#%���A_07$I�_�R$jłB������0:���(h�sLy�l��!���sK�"�G�Wt�A4w����փ�x�+8��k��ǒ2�d�5M���Kv��U!�u�E�t}���f^�t��L!�~V��2��½h'B�O�ć��7ه��t�d>mX_m=�wֵ�X��֚-��77����Fi���&�6�$Y@y^�%Q$���@0h�h�� '1��/P�i�Ic�k�U�;��>��xx�^��gr�� ���E���a�F~4 {� 8�p9:��C� C^6������uFo��I���&x�%]R�")�[b�m�)Fm����ݙ��@�h��J/[c�X�� ��f���;�f�壕�/�=��E�>'��I�$���&s
>�|b=ML��ު<�҆stB�Y�,RJ7��2�y~I� ,���ƞ���q��y<��L#�T�blb��� ��9�����,�˾)ɧ2�}7��	5���X�0R6�`Ԧ��{&�-=�TUC�:"c񒪘X.��\�Iˁ�x���e�Y:�7p����s�vN&q�B���;F�!\ ]D��n��2��I�Tq�+�~Kߤ��k�}ٜ��o�#;:H��1` I�;�$�l�@]�cfv0(xlG�o���ɛ��Ѿ�0��|��`UǸ�O�8�U�+i��XjIs�.4�N7#�y8�����E�<�s9�υ+M?�pU���-�\M��Hy���!���"6v.���L�5v1�r(���w�ᬋ�G�g���Rb�D ���:�.��- ������{Ŝ�O�~]AP���q=�d����R���p,m̉���35P]�Wmy$v�T"��fxR��E|�I3��x�=���5sN�(�)(rr����'��̾����E������_
�=Ұ������~x
>�лR���m>P�Mċ
ҿG@��y�?}yo�����]��g��B�(��Q���G!�B���?
�B�(��Q���G!�B���?
�B�(��Q���G!�B���?
�B�(��Q���G!�B���?
���
���Y�(:S
�Lp��i� �q���,.\-����$}-Ma]35�d�å)�F���-0~��E�4 �]��,u���;�I�4�z���;�eh�aiB�`z���?R����R��vb�(���1G�L�c�B����#�_������N����Ĝ36ʚ�y;����2P���c�z�fMP�b�ȫ����ԧ�~��6;��!<�w>�5=�Eΐ��F��x�� ?U3S��Ku*S���P�-˞6cu3ܰD��H�.��@~��ʽ��&Y�im�0�u�	Hx�gcT �܉�z�~�vLϭx�s�ڳN�r�z���bK��U�v���T�-kc�����e_��$	P�cqYP4!C��%�y�m��҇��}T��>Z��Au�ؠ{�>���U��r�=�E2����{m^����}�^���~{�H�L��t� NJIB��$�"��}�]��J>����ӷh	�t�I�����/A}얄t��@�z�C��t ����P����]r��+���]u�ا;�FK���(_�����$�/n����cE�b�<+�{v}��֝}�~�4M��uf���?��f�㊷8n�ֹ	�c���T�V3r�r�˥�,4����_.[��s��c��������C%���+��q�є�GϪ�>����QU���e�$�����1������Oh�U-��|q�������/�	�dV�;�L�9��)dB�8!3x#/�7e��>�9/���/5�%�djB�۔߽6�W�6���~����D� �<]?s��$��6���î�AvM�RS�K� ��2W�Оb�oRV~y�/�#������f��� �0��5�;$V��q���߳k)A����D�@`(V~S��/ޫ�-M_j$�����ὲWE��{���e;� 9F� +�2� ��A�#&�$�|���7Vd]_�����w���������U��_�o�=�^u\����ݬ��&�Z��6K�=�K\U�_���2�A�n����AH����-o���{����MatS�Ad�/���;�����)�I��+�BN��kk�b�$�?�`}���]�=��EfO,�?����zE��yR���J���ȴ�N ��x\|ã۫�r}��Lua^�|jB]�I��S=���z�S�!�
|��L~n\��9�q޿����Q�!�XĜ����N,��4NO��q3X@�������9HѲ�w��ԯO���tS�����n8O��J�W�l��z榑U�^U�*ŏY�d��EW�c� �<���_|y�<:���E�,�ьE�HI$�!OP4q=�1�j��a��d�o�!Txm�/'[�K�,��C�#�F����!Y2�Fg�����!�ƝH+�:�l�SN�f3�*6a�-��\E����a��4K��L��B-ֳҷ�6t��(Fy�v��v5I    �y�g����ϓ-R��-y��F�O�2��F['���%�ܧ�1�N��^1����*��Y|o|걶kp�ax�M²�q�{=�.��8g�� cS�x� �;Z���-�|FV�Of�F���:kI��`��ʨ�y�q�m����T�h[CˮU�ĕ�3�O9�s�97�mb��&Q�d'18%�̊�L�$�c��$`d�`D��o�y�Q?/�B�[���)E��7ʩ�6ЗU��ʇ	�I�H� <E���C	ȼ$R8�;Xtr����ǿ�o�������o�U,�`�	qo�QO]+��ۛ�.x]�>u�'p�aO�FB[�~���/؄W^|�%�^�I�e dq����c��q��-d��e�x�<����=T��!C�A��!	�RZ�����.���aٟ�Zz�+)2I�?=BWg�q�A�8ZbD	�-P4'2�d� e���U�>��EEtrP�� �����6I�׆��%����p�Q��K2��Q ��,D��3wD�%;�@
#i]@]�#�8����Jn�'�Y�L��f�)�x�2d�ے���T\��fϜ�x(���l�hc)[b�g&"�X���D����	�;P����5��Ǔ��d6� �(��n���������謂Ӌ}S-H&���k�2j9�svs�MZ1�Ogz�y�Q��kf���t/�=�s���]K�mo/�m��E������2���zҢt۹bb�#�ބ� ���*
j=:��JLl �	�q�[8�б$�3���cD�:k�8�q!ُq�����7��f�]��nҼ��D���Gz�[{���"=�M�׌�|f���e��b��%���x� �g%��x��&�A��I r:��$EC n�{po��e�_x�}�3	d����[H?צ|G᷐$?jS������N&��/�/_qe�_�K�Y7�ǰ�C|�~j�wwx?G_�H!�����D����bN"7��]���`tG��QLG�w�	���&���?e�;��6CN�;�38v��>-���Q�<N��_��S��U|�6�^��؎�,3$���flbF�X[���[I�Lu"S��ģ�x�1�e���О������@�qM��9۳OC��xXܷL��&��M����)��r43����p�[��c�LkW݄�Ǒ0�*?>�/p2~���w�����օ/)W)"����� q|�j1h�F�@1���0��~�����3#��u�)1�H��Hr]i����Y����/�G���*��Q�
X1q�g��f�.z�t)Lg�l�o���X͗�<LW�p�i�	L��s��?�8^R9i�9�Wל �S��1 :
�.��<I|`]K�K�=03}�|ĉ�<K�t��qvX�������^�S��LBf���b��`�P�n$I(LL�cmזę����O>��Z�x^uT�l$A��l�똼�9' �^��X���r�������2g��/�r�'�#|9���7��J��e1��}H�)�%k[P��T�,�:�`��5N�����ƦJ��Td�,�u*[Y��$�mѧ��P8�u�Ɔq�L�Ь 38�:ɚD�e����X3��2�x�{y.[Gf��À�&� �u���m���2}��܄��xϚ%7h^NO��./a��~�&��kr�C8�v���k���Hv�_�tk����9�������y�����\ƻ5:�%��8��D\��G����Ӥ�S[�*5p��{�G2�
��O1))��Zf1Q@�<�2` �dF���J�o�a��e�y�#��z���3��L	���u��l@�kC�z�Z� �P�a��?�)��1N��nJ0��͋$�e���޲vv4s%�:�<��B,�	n)~�T�k�}1����Z���
X���HȦ��x@��!>H�Zod��W�L�W�}��[])w8x+��ڸ+7��{uL�6d���_[���U�.)!���7q}�_lk���1��I>Y���;�c�Y4�`����8�r���������a�]$�lW,������j�%�گΦ��Ů}JqP
?�jo���#[��t*n�D�.��@�7�,O�������ڽu��V�����X�D;،�RC5<�&�������]n�Ή��l-hx�OLn)�s�rY�Lթ�Y#��d'��l�f�e�V$��p��ddI����)��<-�x�eh����~D��s
�:ni�Y~y� )��ȇ�§���ltY�/�DW���xe�/y�ݐ�"��������?�@/��H�A��1	@S$	�e�(��8�"���1		xu�Z�z�2����Ng5h�~`槷Q�E��%-uSU?��A|��6�z��t����d��|ڞ������(�S�G����O���ү��P�W���c�9ܡ]��r�]~�7�p*�q�'��b7�-N)�����y��'�u�7�&R�!��,N����\�j�P�ӫՄ���=�O��^d�F��������Xz����r���{�|`86f�O����o���Jg���j.&�7�����Hp���ؕ-4�\r��#�+ČGs���7X��`]����>}���'9����RH��%����ѺC&��`����,�;|b~�n*4�ͪ�a�?x���{��@�!M��m'�c���&?��GP��vV���.m��h�A�s�\D2k��86��N�����O6_����s˔��,}�����@�'
�q
b�y�;�v~���}-(M3�?S5/���c��e���߁��yҙ���/�󳱅��^��|W�'���Ѓ|v�4�!Q�'��R��;� @!&A�[�_�͙����Dha���u��,W�����D2�nI]�&�e �����w�gn�g���,�n�_���k��G��tO���G�r�FZS΍���԰W �L[їó�gD 	;0� ���/�I�A�>t$F�|N��~���p�z�o<~
�x�&�o��<௖�"i�3��\W\��o�mF6Cy�6���ģ���-kӫ6�0�ptOHڴ�!Z��hߞ�?����ǉ?Ħ����zәl{�6�^��t@Vj��?�͝M�H�וD��$��1�� ��]j�^���Y���%��[�"/��_��6z�����^g����_���q��ѽ��D�E� , ��,�R1��hl$E�qգȏ�[P�XCkl.��x֜[";�f+�A^
�a�QA�?7����#�>n�d�ɗۙ�픞�,�ڙ{�L����$e#��]�H�I�Gk�1��v����eo���f0<�`8�� c�	�1��0�6��HΧ҈�����q���ڹ�n�ښ��Gu1�<N8�I;\mG)���;[�W�N���H^��ʖ��+Y�T�,"���CI-���e	N^��^6�Yo��E�m�`70x�܄� �`R@���i�b�Pۼ���{['�z����!�0�������N���o�r��1��M�Z�v4�'W��]����4OYz�إEN���\�\��Я���1��������m�z�X�3���1���l�}k��G�՞Ӛ��OM��ź���R�>�Sy��}�7�qMݖ��}z��X�9E��&94U�y�R;u�<�ZZG��1?�w�H)W�{���$H��!�)޿'�ӃM��3uّ�G�����������|�G��L]�-�Q�r7/�C>�X=�"�O��u�	�D����v�i�'R��c�*�{�+u����O�Dz��5�Opٗ���k_;�~����<ܽ���3wH	�En���Y?MW��{���c�8�g˶Om'r��;>9���1J�c�����pv_��lN�	�,2L[F� ��=��<��(3�jU�dCo��ID��
��`7.%X��]$��N�a�1��U9)d�S܉�^�N,���ZQgsv�D����y�f'L�y�0�l.������A;l��kq'�$W��t\�ƪ8��~�W
,���/�Ҙ颮�N�;�h_A�U\V��vv��:���O�X�f$�����>h�=82��CՕ+��eV���4�s��    �a'KN�-�C�T0Sy�	��7��w����Db��33���M�k�y�&��⺕?�5�f�GcA�LZS�#��L�aJ]�-B��洌��������ȋaE��^!&RCq��<%�<-S�c9C��Af��9����"���� �ۄ�_��!r���!r��h�bI�b	t�G���;���iǮfvR�T�^x��f�9{����5���f�A=�\��6�Pu��t�W������}�ϩޢk"3��&�n��J���,�ެ�wu$I��?����ZR�*�e����O����=���ԽmoM���:��Sd0+�2�T�J����Ge��}}�]ͭ5�>D˒$,�v�rO��f�^�#�󴧮hiv*;1K�+V�i&�	zRMw3p$�0���v�����8�8�=dHɎX,w�8.5����i�Ib��WhW����9�Bf�,�+���/� ,�(˂w��n����n��2�	��_o��+�B���B~�}L�/�K���p�#o)�U��X��P�+����w��Ocz�$��.�!���';�u��Gs������/����X��>��D2D����7H��JN@Cwd��	8-ʴ(r,:�H[ ���!���J����	��VJ�ᾬ០��Đ[I�!��2��IG�{1B��g����s
����]	�>1�S��i����D�Fǻ;ٞ��l�Q�r@�\��)A�')���=m��1���p���ђ������)⦥U�9�����T[�����f,|��01�鴚+�FZ풍��Y	�.)Aq=Ӗk���\���u�v�(���8Lϻ|?1��b�j��;Z�W� �?U�{y�6H����+����^��a{��tk�t���I'�{;clA���ٖR�N7��Z�#5H�p'#��ɹ��?��e�&�b�,O#q$�H6!�$�2�r$C��t�<]�)(?��������_��o;g��J��}���^ʷ2�R��m�-_��������gd|qZ������q+Һ	p�@��\���H���F!�.���}�ؓ��*���[#n�!0��=K�{kc�۸��K��1ʗ��j����͟�!� � �L��x1@c���4��|�^�c�1��$��`��A�=�K!�?}����W�yR��=4$���O�%�#����;�uϒ_8s4$X���̼ڡ�ϔ$r<�Ѳ�ԏ!�14M�@`	�Ě��>����晀'qw`��o	�U���2o䟚y{m���pd�����5�@�k�6;���	y^����1Q-|:�_� � �z�>�{ab���Nٌ*G��}�<��	�̦Up
�Y� 7g�JX��>G1Ae�20����	^-'2�΂7���X����)��}�\>E�K��NcDI �l� 	Ȥ )�P�ӬL_�N�� ����S�x�w�\�(�|�d=b�'G��@�����+��׆��w��љ���&���q�s��.��4��
�#:� �n�`H
C7�F�P��~5�gM����&sǟ.C���i|���-�s[>96R�W>K|ݾ(MP�ʮ�[��e�W���d�%g�Rw�U�ӣ�=�b$GjI⚗:/=������K��D�ᙬKr�xJ�:#�^B���b�V8��*�h��w�Ie!D��Y�f͐ ����V� =l�����݋^*����	�v�ǻZx��H����\tk���0��*d�,6w��t�@{�ɥ��}�Y6���Q�����>�D�!_��ofH|<�Ę�=�ŚG���+ԟ�PMI�q@ d�c!יI�=tt��a��w<���=.a-�o)���qP�-F}� ӟ��RJ��V/�'\�����H_����%���>�{���ta�',���_�i�m���jw���<��R��S���C��$K,{<)
"�����x�f�7,Q����{��%K�c\���Y�>�-,��F�-y��2K�Au9�����[�d����<��޿�[d��TDDo�%	ނ `߲l��� $�u`Ĳ�j��D�9�Q���Q7\޴>�x����?=I��-��tZ���,ؑD����:��^�a#������X�1��ӆ_���e�=e������uȔ����)>2K��n[�7r(K�����R���Ϗ�VUa����X�����jnՑ9X$�`�+�	�'���'{c�/VK�#-γS���A��W�E������Ay?�5g?��8��	�#N��sX� ���u��nG!���l�E��{�����-^���,�Ml����M;6���mt�z���i�=`M�֒���$��I�l鮼YX������f��	��&�����	��u��i͎�;oHeP2�#õk��-�y�RZ�KB���ء�,�"G����ge庞�h{�H�j�2��KL-�V�I��F���E6?�O�:8ұ�����)=���x~lkkҍQ�8;LUy\��[�Y�#���񏀃�&zŚ���:��A�dFU�y;�c��=pp%��S��'USr$Q���>��p��}4-GG"N�fPz��dh;��=���Ui����M�#��A����µۣ`�
ƥD��v�$��zFP3��p2H���.	�3�j��Պ�'3�I�Ԩ!:l���Lm��J��('�&UI�r5�W$�	��sb<`	�2dq����y�dx��" A_�~`c:6���{�/���'�?򁱝�H��G$�?;�2�#h�ߎeRt���Ñ#��' z�ண�,�L I��WI��ؽ��l<;x{�+
�=]�OoGo��.v�!EsT�пfiiY��������+����E���g�>�Sz;pa7vDj�<vѡ0��c���p��l��s�� ���z�A��r'���J].V�~u�F8(�2Zqn�l-wh��S�1��Lfy�c�h;l�3Y��3���˱�y��k�3�ӓ��)���-�=�DC��2�IC�wo����{��<���!��)w#��S=�t�o3ոB��y�� s'��I� �q�%����:
�<�)ZD�!{��{����'oY�)���>6Ŀ���|�/���o��?cF�ܟnL��8d)�DG,H�J�9��g�^���t�k�"c&�)O�%���ᾨ#Y������!)�CfT'S����uGb��0K]�0Mv��*d���Ӹ��͇�nM|3��������qGg�T��"��V�
T
~]�{�� s�0|PF�j3ٮb�3����gF��s�hM?l�8�_O��7�	�,fak���2�&Pc��O��1p�����}E���(��|֗vp��:�L���uZW��j<�4���4H��ҽ���.rl��3+3aǖz����~h�{�J�~�N�˪Vj�-����%&�Y�b���h܂@K��$9��Y���T�k��+�<�@�C@�g��/�����6�ꮯxׇ������,��nb�����(�(�~/oМ�>Fٯ�{){��$���-r .���@�ӿ�{H�M�&qJ`!'��L}�
�rE}AV��W��k��� �%�a%ʐ�C��������/n��t�/�ri�#��~C��r������`�����٣1ܼ��C���wyU�+���!��2��������o���d�"���$���܃��^�^�A��^	�IL`"�5i�Aq$�x��F>�GR����I{� <Mf���]�茱���?Q �k�@A[�+W\Q�6���&�Y�����C��#�nH��,$(��4�,��,�"+�]őCs&ϧoG���Լ�e#,�[�й���8�oi����>F�y������T.Y0?��0٩#&��m]�+���G��,���QF�$xd��W�����<?�2��!CxC�4$+�����$|
�KV`�3?aky�ݜʉ�	+;l�ɘ�<��A#���+�W#���=≻��/�3��]�[���?��r��A��AS���!P�,2I@t�!�s���E�K��ZsK^�w�e�-b���e|��+�t��&���Q�S    �е- ��3`ww$ �@����j4�� ����Ε���p+-�kҹ�������Ϗ���g�c?O��6�S�	!��1�A����&Y�OA��z�^M��M�p����W{�bތE���p��(K��A3�F����N��@�eVzI�z��*G}�n��T���������Ԣu����Vp�}U�}OK������UA��9�ƛ�K5e��M?�(=�!�	��'LɐF�Fs3��g�x��Z-��uo��1֗�,@��q�c�$�"r5$����h��M��c��7�a�<��b����E� �X�s@���ژ_1���#���$�f����t96.Q��!{U�E Ґh��E/����]��zƮϼC� �%؏ b�!������J�@�W�x!�|�/�@�}R���FȂ�
[�g�7���4NQߧ{7�o�dR!���$_*� ��W��V���],ח�bq�������/]���7U��[އ��������x����}�z��Av�nN鍝g�տ�m'�k�7��O�_����O���C�#���BUT�ܫteG�t�.R�PM�����_��~��y{�-�h't1�5v������OZ�Av� ��}��eG��"���sM����r������}J2^�-�nS������c�;��T#�K�=���-���f����C��������Ǟd�<S6 ����9}n�����$�bk�g��s�f����O����˔�����\?K9]��"^��[�4��]qO�[3ި�lO�m�S�CM�y�MQ(���K�
�PM%���P�%��pb�r	���c�9�NfD�.dW���˥r�
�N�HSِe����L� �ɚ���K�~��4R���)-�z��E�\����c��V7�j��W�>����Ƶ�� q�ԫ���S6N�x�o�]o����� ���N��wd#�}�u��U00�n�rhK�P�V;<�6vO+����c�A��8��w����jv|n��g�l��
�<߬_d�f��r��|py��;����u�Wm3K+g�zR>���n�zxw�[��w��۱]���։�gm�?�|���~�Ъ�,��l:u��-ϯ��~�����oۧ;���N���V|y���f��c��
Gw)@�d�+��Lf�T�uG'�e�]��#�q�x�^ۇg�g�u�̥�tƇTFSy j�ƻؕ�]���fȥ��뿗�����d���8����hH��ؔ�y��d4B���9���� 
�uR�����+��4��0~FN!|t�g����KzQ���[����Ļ�*���R#�h�7lbTܚ���F�~�ﳋ����E�}����GOXկ��U�ڻ=�⌷f�iԟ�e�4�u�c�#D�Φ��� �Y&Z��C������e����H����$+�9�eɺ�O�lI�a��w�I�t���~��S@�	K	�F�u�� ���?7��<O}�զ}�	܎D�D��?��&��G�x]��#Q��]ȵ���'Q��AdCX%�O��`�+X4�9H�$��W�#���i�#��Q��J%�� ��Iβ0��:=}�5RGa���c.tM/ot��V���{��#�⢣^��������~�v����U��w����1w|�ʦ����3Wfkv¥ަKyl��ڤ����
iY�!m֞DW�a/�\h����x��Z����S��+4�f2�xO4�,5-Wk�������x�a�-���U��9?_��FS�e��b�K'OL�ݏ��X��b��0˓��R�M���+��#3��2s�g���nFY�7�1�].
�"����SL��28q�}���'���]�[ei���h�WK髥��YJ��?Z��[(}K�uh�2V�}C��7���|�&�= ��ɒm��}��-�
�5Y��;��t�r5;e�!M�m �$��}���QB�΁}��_C���hrv������B��&2Q^�6Y��
-�+���M��%�CvKA�d��"�&��na2H�����Q�پm�����*��k���_����;B�g�P"���CS��4��L��]���X�g���@�v�����IW���n{�bodGVF}��]W�e)�@`0����9�)Y+�B���*j�dš�g�8���%�\��5]z���:�v�*b���(ӫ��M�^yR�lj`�����Ŏ���l�2<x�2W�4�PV�4�ht������}�*�5E�^e�uQ�}�2�:�E#�"���<]�m�6uv����xH�J���+�Ƀ
Q^0yp��Ƀ2!O#��&���A�XP�a�kb� ���]+�f��0�L���N����Zǫ�F�B����+��ش9�D��VRzP�^��d��(ߒK��^*�o�zM��,��#y�tI����T�g��2�V-Eu,#
�|8P� k> ��nw�F�f�K<�$��<"*ẖ�)/�V�x�!��i�L�9�2�>�B~ePE���V$8u?m�P����+���ː��|���?�1<�Q	3=���c�
��KTǐ�g]�1���͂+0�D̂�Y-8i��S��1���_+Z�?Q���u�ٯ�/h��dUO5v9S������^$ u��,�øӯmҭÓ�~s_�/��}vx@[��������|eE{I��]ݔ8󾃫�g�[�ef�͐�����UtbPGkd9
\rqf�|.W�m��yVp��T��MƲ�K��(��Փ7?]�ɡ�XC9��K�ܱ��?�Z�i;ra��ˣ͎Y>]�ĵ����k+jճ��,ag���:3��F�Cs��1��հn��o��QP��O����*�A�oF����6��T�UB+u/�p`�,>`��n��;��w\��G�������;��j���xR�>�e�s5۰��PM�i�Np�!N_��6�'y#��;�%���,�����K���1~�����g�EA�3������:�	e�g�U@͵���#G��5��F:�t��[�[��I�/3Or�q�Zm�ay���4��]� qd�T|�s�[��{^uU���L��5���o�o�^�x#+k��QM_�\�r)y�g�Ȯ:��1gέjvG�Rt�3�i��H��
��,�w���j��0�cxx�����LD��H%�ZYt�(���R-���=	%��:�D�8�<�S����7�1����?��o�h?��� �J�~P�î��&�G �0���i���p3$YR��3�I����!�8S���Q��E]�'��'�_�R���q����/>�+���t��d����㒝IBJ�bRη9�.oG�P��@��~��k0G�f�u�;�F�4ɸ'�� ��0t�&�x�0�<�'�za{�/p3�+�F7,�b	_`I��D�8 � ���ȉ?����A�����g����R�4-��Kt��UC�
����G1�v��<	(�l&]x#�Y���GMЂ�\3dh�&�0��Ug�����7H0�	�"Ey���l�\��l��&���&�!��/��� �!IމԊ��v�
�p�,j�D�V�2���l$8���r����"'�^���?��%XS�[�OD��e|�J�t�2��~�2w�<n���7�	Yܨ7�{ Ap��	Ծ��X��& ��>%�Pp���	�E%����U�
SdW>�b�{�!O�kH��S�s�����$r'&yjGIC�;�)`�-�s �3�&���ց�틛�T%�in����|������B��L�,\P��m"<9�&_�*1��5��Z��{ Ƅ8��׊xo�>v��SH/��
�b޼� �PД#�&_���@#�md��"ŒD�WְS�ݰۀ��{8��9I�;M��6��\��ps=�I���>�7YӠg����n(�+�,��G(��0��!��N�0`�-0��)��^�ok B���oy-ꌆ�9$�D$`�b�*h}�sm���hA�Jb�^2�/z��=��\*���v����ꂺS�9����陑Л�C$���	����� �~ާ���
m��ۂ����X#��E����=r�/k�+�ޤL}� �  ��Ef��9�*��.c��(��aP}�p(v5l�����
3؏��13��{ߣ*��4��uf��g�H���/R�&�=�"����B�T]���E��g���9>s[����6TS4
�&������xo�a�=�nI�]�߅�jə�:|��,���1(�5�T}[���w4�Sϲ���+~�ް
6�`zI_�@��k����w]�"�w`��,��)��Nz�R�G�I}�A�ʫǿ�6��� K�����m���tO�4�'���Y��ۼ��¢��j���z����CJl��y��=�BG���-m���p{��[�.r}�-�T���	�R�MJ�LӘljZ.�?o�U����Q
�� ��$�R��Y�}m����]BI�#N�K�o��/����      W   8   x�3��I��W0�44�"##c]C]#C3+S+S3=m�R�\1z\\\ ��      c     x���AJ�0�ur��TtB�Ҥ�;q�Fp5��F��!ff�	��[�17�$� Ce�؅��߃��+v��0��\;b/�������!�.��z:s�q�A��Gv�����%���<l#��~��0^ɥ��w4d�I0�ַ�A�z��
(l�n�ͅ��D�E������������BU��=D\���R��~�.��2�i�Za�7��9�w�1W����>��#^���e����WE��D����_����B5��#���O�WB      Q   �  x���n�0���S�h/ ��I�����:�:�B9���z$v��n!�\\8lHӐx�y�`����X��@+
ڡjը��'�?�6��aF5��)؊�)�J��!���Z	H%�C����f��k�)��WE.ٞ�y�Š�&�X��!��}i�u�0��V\hjk&�:�ك��ؑvo�������q��-GO3n�?�)K��r&�@�%HG�^���GK�Z8����(S�M3�Br��b!�4q���y���&î¤��b��R�ؗ����}�Ͽ�@	`B�P��>} 	�0����
nb��c�i>��@S<|k���:?���K�*�+礩��ᷚ��>�(�}Z�t�|�y[*�/h�xج��U�",c�mQ�5��N�f��Ck��Cu��%J�\��"]v�;e��Aܱ3+��Y+sה	�G��ʾ�=�+Rc����q�����
q&0\z(��Mܡj����X�4�0
�<2/tT��蚹ו�b(�$E�ÄRE�P%�Y�	9=*���F��uK�0���OImR���yXm��`�i^�ߚ����<~��9X�y��_�y.=~i�[��aޮ2F�Ha�ha�9`��h4R��ۯf��Z�S��h� ?14G����]ٕ�(�ON\�ʀ�,mi��+x��/�I�%*�+�@�a��Ǡ�Ip�ˈ�$�3*&'�9��"�C�r�x��ĭ��
�<�q�'��ȷ��#_d��6NA��!b^�C�m�&dz�1��L?��8�xR���B�:-S:      [      x������ � �      e      x������ � �      C   �  x��X�r�&}�W�4�<�<UOŕe��%/X��KH#�'��\���B�3�.��8�۹DJq���8�eCUF�R݇����YT�kJ�j�L)E�[.Z�y�7�����El '�9@#��g�F���y���\+�u���;�l{���n��T����	��h�hxU[H��b�YL�4�EӾZ'D\�����Z�z8c���4s���s���cJ�$*��<;'E5W�ނ�V���H�ub����1��t}{���n����`�S윤�֕<�J����Iތ�u��`	&�-�R��P�ŉ�$�fIny!l�"�9&c]in뎘��׻���H
V�ȞT���Z��_v�IYJ�T&��}�/🉯�.pl)O'�ҷC�����9��m�ی�Q�����%,�����k����J^nySr�*I �(F㑽�}%�|�A4)���mhM@u>�:CϢ$![˩�޽#�"��� �]g�n�Ż�����B��Ž����P��d3t,��0lS��aJ���P]���]˟���lJ�1N�f��2x�����%Ǭ4Ⱥu�{L̂�%���<H�c�1�� �o��&2l�xą����bstΛ�|��4׃��,#U<�r�mM\��:o$���(�v vT��K�z�W$4Y�[;��N�ڡWԟv�Uҩ��R�Bs�z�Dj�c�&��sȳ���b4iS�nZ�WR�_��~m.=��x�"���i���x��x���/(@l��F����������J������)Ùi-(Yf��v�e(�'T����8��C]q��7�Z�հq�X)�b��A��Δ�3�N�R\?���?0����"4O{N.&te�1E�J�Ms�
[J��» �yw��j�
� �9�9�>��A��&m���w�/�n�9�^|u�?��##u��kU�lq�4�4���!�6� ���E�BЩu��+�g�β��� b%��SZ�Z)�����M?7�[m�:��n��#Ƃg��օ�e�� �e�Χy���5��>㏟��LHX��=���17��sa���^C�Y�H6T�c �{�P�{Ŵm!���Y1vd�8�����L	�|�v�,���d���� �7BjL�d�
|k�l�{У�D]�d���\mzg�x�7SÓ*�j��l6���mUxe�O�W^���!ρ@�O��!EOle���O��IA�Z�}��	T w�xjۗ��Z��}lU6�8F�?��>����n��_      O   �  x���?O�0�g�StG�|���#!��bR�DM�;R��DĉJ�CI�w������,7��4/��A�i���5�5�+��%dB�2'b8�e�6��o��,�\��1C���w�u�rF���0�+6גRO�&k������T�3�S%h$ zH��r�����>4��^�h�+QLx��X[���3%���i�LRE�b���s	83V�$�6����vNB��+�x	��34cOؙ�9��<8�0S�MՇd���$�̍��A^B�b{z���@/u"n�i��+��_�8��=p�kw{p��9st�,�����i�Z����xץ5�m<�,�e���iρ4�>iD�H�(?uo��%�@��)!��d���{7�⊀�d8+�5�i�0            x������ � �      g      x������ � �      Y      x������ � �      h      x������ � �      _   �  x��XI��8<;_��A"%j�#�}���1A9�L�t�,ԡ"�D�������8s�I�'���<v�G�'g͝[�u(S�枨�G�"o�?�z�������^)�I7��r� ZV�k��z�����,�����W�GwygIm����c�纡盬g)��{��H�nQv"�R��2��jsV���L��'�r\�p��n���F,e�r�B��Cx��=>�����-uG�*&�p�R�V�fb����<)a��T��>g������5M/��\�i&j��L4N�	�ꏄR?^��@��p�"��v͒FT�E(���-q�7_����Y�y�[�
Aj=�{�
�Z(ܚT�Co��|�=?�5!�4�[�n!C�Fj_�ҐZέ˰D
P�'��P4��+㧯d��$q�ZVUKPPԪ&W�.�Z>9�P�%-��G4HlN�\�8�:Gw�{��)�z^n�M�SK4�.��I}���Ub��}q�g��UJ�B���p� ٕS�k5W	j|*�ޣ�|���������Qf��P�w�r��qN��q�¥o]+D��I�E�����e%��xn��Hq� rF.Mk]��G�0�������y�s�rI$uԵ��t؞��G�ˢcD#��T�Q`S���.�6��[:�8՘�XG���D�;_��s�luN^�����^�XbC�h��_mpN�}�a�Z��J�]+7�=�D� �|M�R�n���6c>�RZr��@��������Bd�|�@��
�1t���1�����|7�BV%&�>�R�`2��J} \�T7\���	1zc��� C���B�8]�P����7�:&��g=��!D�d�VC{MeeB��H'��	c��ih!C�]�pU��l�X�"g"���삱2��B�t�I�/z�X�t�a���������i8g���ج�~�-�id&R�� ��ݠ�Zm<���bH	�gbdc�AƤ�yZ��1���1� ����.zGr1T`�ڌ'�>��"��(?Љt�Нَ[2����)�5�X��sMO=q0��;Z~��p0�v����t��;� e�۩��h�Z��rB��/d@��M�o]�ݬ;ʵ㸸�������D��5�?�뒺4���v�kD>�j"��>h�{��N���?����      I   �  x��Y�n��u��}��.�#YŮ_V����+���ZR�v�f[Ƣ�*J��&�$[;;A���M��7��1 �!ȝ��O0��S��b+	��\� Y��W����N��t^�����fY��~Z�jޘ
ߘyY��Y�'A��_��������t6���l�h���4����`v����ƙ�S�g��"�wy��ט��:�"&,������P�0j�zM���i�0ÈT	N�p&�I�4��P���$�e~�wצ��r���۟5E�p�/��<�ScKL#�(ѡf��f=��.J!c��.J�H<J�6(�;�V!1�"�"�$6�Y�j�)��wPrz�%@[�52������������������������<B)cŌ\�G(�� W��@S�A�(c4�8�!Â�	�(Opq�ʔh�(?s��C���9��.d�2R�n^_i���?�/\]�+W�kW����%�_��i�M�`�9l��ˢ��.�CԸ�M979\�v_§��Z��1r�����/_� :��/&�����B�.i��CS�����x����.��C%F_8S�
�w�V:ߞ{\�K��9��f�߸Ό��}�t��ܞyr>��~2��V�?�;�ݞ=q���������K�Kפ����� �X6�?=᬴ >-����i��xm�\5��Q�
��1:+?���ˀ�g��-����Q����9z�}4 ;�o\��K8v<D�~�������w�r�r_W���)�����d��7�lè+ ]���o����{���!�{U�Ws�Yp{�l^���La��Q���xQ&��pD��@n��Z �����4W�;�����E⪽xOJJ#��(D��%����[n��^�.+8^p�O�+e�`O�+1�e.��D	bN�8AR#�V�F�3��a.yG	�w=ɣ'	T��q�Kº0s�jlI4Ot�M�)Д�x�~���(��]a,X�E u�j�����*	� �;�u�!4!F2�(l��{��=pL��`��'�����H�D�����s��C��(56ɴ�&%�0��HBpF"���A���S���?0��;�~����,�:|�&H���nR��0 f�Xhf*���LXdX�%�{�lV�D�[�2���X�1#��]zb�gsН�!���;� YdeC����	M4�&u�=�J�W=�zF���^��D��A U��db�_1��N�!b=e2��A���;M��)��&21��t�-�){%������������Ȋ4�8��҉R�N�tXF��c�Ļ����	�r�P���u�^6naY�����3ޥ��U��,�
�u]��r��������upg��Bo]ޔ`�pw�$�[�&�ȇ,���;N=�,�B�b�h
8�8rY�'aT+g3G�q��LW���;c��*7�(Q�ÑZ��dz��ח�'���t:F_�Ά��l3�^ޔh� ��e���P+����*�禽��z������x ��d�~N�P_D<����e1F__x�{|:���}=���#��}ݺ���w�'ó�@4���<�e�^�'�����x2�´��`�A)@n!�WW�Ŵl�F��OZ Ӌɫ� ��t::����<����B�=$��fvլ�$}s���A>t�>���jx����!Z�5D�?
t��h�GW���-�Al��v�&pU��`��<��Q��2�r��5�y����H竼��D�_CZ�����-�Ck�5d�� �-��������&���|����:�����)8�b6:�l�}���+����ީ`��Vo�~���gc���O�nz�j8��1�j�^G��:��e����"p�h�au��x�2q��0���>j?x�c�b�L�����L�w|��w����ß��>����l��4����w�y�B�䩃��8l��߯]��I�����p��e��C�L>�� ��7�]y��bk����K�sO
�ϭ�*��vn���OZ����x�����?��lxv��z1����⍫�6�@�'�����G��t�����C��9|��Z	,`��6������^ޙi�J���s8S�H�=_M�7KT����U�C���5�����b6������襫
o��^-W-[�L5�u<>�f�,�Ja �w�$q*c�At�w?I����.A�$�8W��s�(�'B*�%!	3�tS������th̷�b%}��ƌ��7��"�⨗$Fp�4���'�,S�8HC�EW�Qy�������m�)�#�#�@�ޥ��h��[��izr��Ȇ`	�% �Zu�28% �&��Yڅ�ù���5�U[��Z����[\.�/Rs����]��j�K�'�
 TUW��!�8��NաSaHB$�I�Ȥ����*�<��Bu=#�ؓ���SH��-D�.!@�Bi�E�IG�D;l"����,��,����&N��kE~�������ZJ(��.� ۩����X���S��[��{�nj�����Yb",��=f)��#aTW�I�L�&fym� �$-�St����>��]��)�>�X�h�/��q�1�f3�5l�+�N��� ������?���' R�]��>U#A��5�*�X��
u�����MK��>�˯��@�zކt��V=����|SF��U���Yu�D�u�8}\�˶�꒰�.�o����nGFiKl�1ߑ!��AL4fFF"q���k�iɀ-�\r���E�D|]��d��$P��(q�eq@ �~;*j��u�f(@X�t��o����=�,�H�^��h-�D+ȷ��(R#$\j-h�)O��]*pJ�H9[��z�n���~����
-O� �D 6?hlq�=Bz�t��9�ೆ��:p4�@e��;a����y���\�ܫ���c^���ba^�Rv�h�g-d�,��#��3GCb�L�V]Ӑ��Cr|M1���=0��Lue �����K�7�6
�\�*L�4�d�IewT�Cf=57pz�����+�p��wWP�6P^�oL}�F�V^���"�c.N�Yn&�ț������ӷ�dzv��=�E�dz2�|?"��<��I�?�mY��:�ΘP���'K���B�N9��N�~P�/�U5�g�˛>*5�ATv�P�c���ǈ�$�e@�@56\$�	FB�ጨ�?P�ę�?�(��e����b�S��j˺V<ì���se@	1�ŵ˫5�z����ɺ�L7��HɄ�ļ��s�f#�\��V� W'T-�e�ҘC�I�ɝ�J�3B�M�&�FPK}�H�aH�g�(5i�S����*[�n���b������OR��?)+$�V���* tk���:46��1���^��� 6Ol����GC�-�ZS	zCj�M�A �k��5Վ�0�b��_n���zk|Z]Ц�V� �G����2�n���i�)��h�y��BaB��01� �d����N�Nu&I���>�쳿�9��      S   �   x���M
!�ᵞ��2!꘳��稫iB	��x�ET
F�����"69M����T��C�^N�	2x/˹֔��~V#�1O�iI},��H���kZ2�M���R��3�)  ��r�Ĕk�v�5�>�G�OK�I�����n$@g�G�iIW���6))��8Z(�iɠ6)�ڔ�@��;���      a   b   x�u���0�j{
z�폓�!���砠j�$�� #'��c3�<CF�(XU�	��c��D�6��1��TOS)޿�7�B�I���Ԑ��7�S��]+/"      E   l  x�m�Kw�0��u�]t7�1	!�"
(�xG�l@.�\�^~��휙R6	�m��p@+"/�c}O��t;�M�@7��yE�WÌ�E��z�2�|3ѝ��b����B�|��g��,�;�b>>Fw"�Fo��`&,�"���п�B8		*G<�9^� 40���ϯ���a+a�L���}G]�3�pj*i =��S5e���e���>j����XΊ련�/�b��^P	�a�T`��?��[?O�G�ϧ�zBz��s��ny���w��̜��_��x6���@욊/g��
Z�Z�JH�"��z�H��Ș���ˣ0��^d���hu
J�PV�#s0R���=��s\����BPv뮹
&��@�A	5��1��?�KP������U3:��m�KS5��V����j�B���j�FJ�V���c�Q��<���</��0q����w�|�t���O�{�8Q�u�D�
���l��nh�Ȁ��MG�c{?�q:��T���t�ML[�|'�"G �Ղ�9,�T����7��� �q�ȏc���;������\���kء��0:�A|��Mo�N#��b�_q�lf�Q�$D� ��-�Ǟ�X�	�6�?�1�      R   7   x�3�4�4202�54�52U04�21�24�365�60�#�e�iB�NS2u��qqq g& P      L   �  x�}R=o�0��_q��"� �_��8�؃;j9IW��D
$�$?�c�v+� ��Ȫ?�У�"�� (�߽�t���B\n��ˏW+���d��x
�<���,	&��<_�đ��Y0�.=����Z�D(6Uw�>#ԭtr�����o��t�JY�b��ƵXA��D[]�Nje�dj%w�h8S�cMF��B����{��Q�hh� �3PJC��R�6%1�p�B�D$��_?6��;_�h�䭆B+�,��5(m-�ec�b��L_��{*�h�֖��.��M-��X�4�u�Uv� de��V��fz{m�;#�N`9V{��?Zڵ��z[7����d�O�b߾{Q[�dG�7+��fY���]��9ۚ���*���v�hU��rC��
�4'{J����$�N���Fi��9�lm���*Bx�&R���k�b�<�ްF3!������\��<�L��|q2��"�'�<�y��1��&S�L����8�'��Ȃ�h���     