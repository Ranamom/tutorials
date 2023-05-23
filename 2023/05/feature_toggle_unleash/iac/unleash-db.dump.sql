--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

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

ALTER TABLE ONLY public.user_splash DROP CONSTRAINT user_splash_user_id_fkey;
ALTER TABLE ONLY public.user_notifications DROP CONSTRAINT user_notifications_user_id_fkey;
ALTER TABLE ONLY public.user_notifications DROP CONSTRAINT user_notifications_notification_id_fkey;
ALTER TABLE ONLY public.user_feedback DROP CONSTRAINT user_feedback_user_id_fkey;
ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_type_fkey;
ALTER TABLE ONLY public.segments DROP CONSTRAINT segments_segment_project_id_fkey;
ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_user_id_fkey;
ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_role_id_fkey;
ALTER TABLE ONLY public.role_permission DROP CONSTRAINT role_permission_role_id_fkey;
ALTER TABLE ONLY public.reset_tokens DROP CONSTRAINT reset_tokens_user_id_fkey;
ALTER TABLE ONLY public.public_signup_tokens_user DROP CONSTRAINT public_signup_tokens_user_user_id_fkey;
ALTER TABLE ONLY public.public_signup_tokens_user DROP CONSTRAINT public_signup_tokens_user_secret_fkey;
ALTER TABLE ONLY public.public_signup_tokens DROP CONSTRAINT public_signup_tokens_role_id_fkey;
ALTER TABLE ONLY public.project_stats DROP CONSTRAINT project_stats_project_fkey;
ALTER TABLE ONLY public.project_settings DROP CONSTRAINT project_settings_project_fkey;
ALTER TABLE ONLY public.project_environments DROP CONSTRAINT project_environments_project_id_fkey;
ALTER TABLE ONLY public.project_environments DROP CONSTRAINT project_environments_environment_name_fkey;
ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_user_id_fkey;
ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_event_id_fkey;
ALTER TABLE ONLY public.group_user DROP CONSTRAINT group_user_user_id_fkey;
ALTER TABLE ONLY public.group_user DROP CONSTRAINT group_user_group_id_fkey;
ALTER TABLE ONLY public.group_role DROP CONSTRAINT group_role_role_id_fkey;
ALTER TABLE ONLY public.group_role DROP CONSTRAINT group_role_group_id_fkey;
ALTER TABLE ONLY public.group_role DROP CONSTRAINT fk_group_role_project;
ALTER TABLE ONLY public.feature_tag DROP CONSTRAINT feature_tag_tag_type_tag_value_fkey;
ALTER TABLE ONLY public.feature_tag DROP CONSTRAINT feature_tag_feature_name_fkey;
ALTER TABLE ONLY public.feature_strategy_segment DROP CONSTRAINT feature_strategy_segment_segment_id_fkey;
ALTER TABLE ONLY public.feature_strategy_segment DROP CONSTRAINT feature_strategy_segment_feature_strategy_id_fkey;
ALTER TABLE ONLY public.feature_strategies DROP CONSTRAINT feature_strategies_feature_name_fkey;
ALTER TABLE ONLY public.feature_strategies DROP CONSTRAINT feature_strategies_environment_fkey;
ALTER TABLE ONLY public.feature_environments DROP CONSTRAINT feature_environments_feature_name_fkey;
ALTER TABLE ONLY public.feature_environments DROP CONSTRAINT feature_environments_environment_fkey;
ALTER TABLE ONLY public.favorite_projects DROP CONSTRAINT favorite_projects_user_id_fkey;
ALTER TABLE ONLY public.favorite_projects DROP CONSTRAINT favorite_projects_project_fkey;
ALTER TABLE ONLY public.favorite_features DROP CONSTRAINT favorite_features_user_id_fkey;
ALTER TABLE ONLY public.favorite_features DROP CONSTRAINT favorite_features_feature_fkey;
ALTER TABLE ONLY public.change_requests DROP CONSTRAINT change_requests_project_fkey;
ALTER TABLE ONLY public.change_requests DROP CONSTRAINT change_requests_environment_fkey;
ALTER TABLE ONLY public.change_requests DROP CONSTRAINT change_requests_created_by_fkey;
ALTER TABLE ONLY public.change_request_settings DROP CONSTRAINT change_request_settings_project_fkey;
ALTER TABLE ONLY public.change_request_settings DROP CONSTRAINT change_request_settings_environment_fkey;
ALTER TABLE ONLY public.change_request_events DROP CONSTRAINT change_request_events_feature_fkey;
ALTER TABLE ONLY public.change_request_events DROP CONSTRAINT change_request_events_created_by_fkey;
ALTER TABLE ONLY public.change_request_events DROP CONSTRAINT change_request_events_change_request_id_fkey;
ALTER TABLE ONLY public.change_request_comments DROP CONSTRAINT change_request_comments_created_by_fkey;
ALTER TABLE ONLY public.change_request_comments DROP CONSTRAINT change_request_comments_change_request_fkey;
ALTER TABLE ONLY public.change_request_approvals DROP CONSTRAINT change_request_approvals_created_by_fkey;
ALTER TABLE ONLY public.change_request_approvals DROP CONSTRAINT change_request_approvals_change_request_id_fkey;
ALTER TABLE ONLY public.api_token_project DROP CONSTRAINT api_token_project_secret_fkey;
ALTER TABLE ONLY public.api_token_project DROP CONSTRAINT api_token_project_project_fkey;
DROP INDEX public.user_splash_user_id_idx;
DROP INDEX public.user_feedback_user_id_idx;
DROP INDEX public.segments_name_index;
DROP INDEX public.role_user_user_id_idx;
DROP INDEX public.role_permission_role_id_idx;
DROP INDEX public.reset_tokens_user_id_idx;
DROP INDEX public.project_environments_environment_idx;
DROP INDEX public.login_events_ip_idx;
DROP INDEX public.idx_unleash_session_expired;
DROP INDEX public.idx_client_metrics_f_name;
DROP INDEX public.feature_tag_tag_type_and_value_idx;
DROP INDEX public.feature_strategy_segment_segment_id_index;
DROP INDEX public.feature_strategies_feature_name_idx;
DROP INDEX public.feature_strategies_environment_idx;
DROP INDEX public.feature_name_idx;
DROP INDEX public.feature_environments_feature_name_idx;
DROP INDEX public.events_project_idx;
DROP INDEX public.events_environment_idx;
DROP INDEX public.client_instances_environment_idx;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
ALTER TABLE ONLY public.user_splash DROP CONSTRAINT user_splash_pkey;
ALTER TABLE ONLY public.user_notifications DROP CONSTRAINT user_notifications_pkey;
ALTER TABLE ONLY public.user_feedback DROP CONSTRAINT user_feedback_pkey;
ALTER TABLE ONLY public.unleash_session DROP CONSTRAINT unleash_session_pkey;
ALTER TABLE ONLY public.roles DROP CONSTRAINT unique_name;
ALTER TABLE ONLY public.change_request_approvals DROP CONSTRAINT unique_approvals;
ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
ALTER TABLE ONLY public.tag_types DROP CONSTRAINT tag_types_pkey;
ALTER TABLE ONLY public.strategies DROP CONSTRAINT strategies_pkey;
ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
ALTER TABLE ONLY public.segments DROP CONSTRAINT segments_pkey;
ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_pkey;
ALTER TABLE ONLY public.reset_tokens DROP CONSTRAINT reset_tokens_pkey;
ALTER TABLE ONLY public.public_signup_tokens_user DROP CONSTRAINT public_signup_tokens_user_pkey;
ALTER TABLE ONLY public.public_signup_tokens DROP CONSTRAINT public_signup_tokens_pkey;
ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
ALTER TABLE ONLY public.project_stats DROP CONSTRAINT project_stats_project_key;
ALTER TABLE ONLY public.project_settings DROP CONSTRAINT project_settings_pkey;
ALTER TABLE ONLY public.project_environments DROP CONSTRAINT project_environments_pkey;
ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
ALTER TABLE ONLY public.login_history DROP CONSTRAINT login_events_pkey;
ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
ALTER TABLE ONLY public.group_user DROP CONSTRAINT group_user_pkey;
ALTER TABLE ONLY public.group_role DROP CONSTRAINT group_role_pkey;
ALTER TABLE ONLY public.features DROP CONSTRAINT features_pkey;
ALTER TABLE ONLY public.feature_types DROP CONSTRAINT feature_types_pkey;
ALTER TABLE ONLY public.feature_tag DROP CONSTRAINT feature_tag_pkey;
ALTER TABLE ONLY public.feature_strategy_segment DROP CONSTRAINT feature_strategy_segment_pkey;
ALTER TABLE ONLY public.feature_strategies DROP CONSTRAINT feature_strategies_pkey;
ALTER TABLE ONLY public.feature_environments DROP CONSTRAINT feature_environments_pkey;
ALTER TABLE ONLY public.favorite_projects DROP CONSTRAINT favorite_projects_pkey;
ALTER TABLE ONLY public.favorite_features DROP CONSTRAINT favorite_features_pkey;
ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
ALTER TABLE ONLY public.environments DROP CONSTRAINT environments_pkey;
ALTER TABLE ONLY public.context_fields DROP CONSTRAINT context_fields_pkey;
ALTER TABLE ONLY public.client_metrics_env DROP CONSTRAINT client_metrics_env_pkey;
ALTER TABLE ONLY public.client_instances DROP CONSTRAINT client_instances_pkey;
ALTER TABLE ONLY public.client_applications DROP CONSTRAINT client_applications_pkey;
ALTER TABLE ONLY public.change_requests DROP CONSTRAINT change_requests_pkey;
ALTER TABLE ONLY public.change_request_settings DROP CONSTRAINT change_request_settings_project_environment_key;
ALTER TABLE ONLY public.change_request_settings DROP CONSTRAINT change_request_settings_pkey;
ALTER TABLE ONLY public.change_request_events DROP CONSTRAINT change_request_events_pkey;
ALTER TABLE ONLY public.change_request_comments DROP CONSTRAINT change_request_comments_pkey;
ALTER TABLE ONLY public.change_request_approvals DROP CONSTRAINT change_request_approvals_pkey;
ALTER TABLE ONLY public.api_tokens DROP CONSTRAINT api_tokens_pkey;
ALTER TABLE ONLY public.addons DROP CONSTRAINT addons_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.segments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.login_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.change_requests ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.change_request_events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.change_request_comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.change_request_approvals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.addons ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP TABLE public.user_splash;
DROP TABLE public.user_notifications;
DROP TABLE public.user_feedback;
DROP TABLE public.unleash_session;
DROP TABLE public.tags;
DROP TABLE public.tag_types;
DROP TABLE public.strategies;
DROP TABLE public.settings;
DROP SEQUENCE public.segments_id_seq;
DROP TABLE public.segments;
DROP SEQUENCE public.roles_id_seq;
DROP TABLE public.roles;
DROP TABLE public.role_user;
DROP TABLE public.role_permission;
DROP TABLE public.reset_tokens;
DROP TABLE public.public_signup_tokens_user;
DROP TABLE public.public_signup_tokens;
DROP TABLE public.projects;
DROP TABLE public.project_stats;
DROP TABLE public.project_settings;
DROP TABLE public.project_environments;
DROP SEQUENCE public.personal_access_tokens_id_seq;
DROP TABLE public.personal_access_tokens;
DROP SEQUENCE public.permissions_id_seq;
DROP TABLE public.permissions;
DROP SEQUENCE public.notifications_id_seq;
DROP TABLE public.notifications;
DROP SEQUENCE public.migrations_id_seq;
DROP TABLE public.migrations;
DROP SEQUENCE public.login_events_id_seq;
DROP TABLE public.login_history;
DROP SEQUENCE public.groups_id_seq;
DROP TABLE public.groups;
DROP TABLE public.group_user;
DROP TABLE public.group_role;
DROP VIEW public.features_view;
DROP TABLE public.features;
DROP TABLE public.feature_types;
DROP TABLE public.feature_tag;
DROP TABLE public.feature_strategy_segment;
DROP TABLE public.feature_strategies;
DROP TABLE public.feature_environments;
DROP TABLE public.favorite_projects;
DROP TABLE public.favorite_features;
DROP SEQUENCE public.events_id_seq;
DROP TABLE public.events;
DROP TABLE public.environments;
DROP TABLE public.context_fields;
DROP TABLE public.client_metrics_env;
DROP TABLE public.client_instances;
DROP TABLE public.client_applications;
DROP SEQUENCE public.change_requests_id_seq;
DROP TABLE public.change_requests;
DROP TABLE public.change_request_settings;
DROP SEQUENCE public.change_request_events_id_seq;
DROP TABLE public.change_request_events;
DROP SEQUENCE public.change_request_comments_id_seq;
DROP TABLE public.change_request_comments;
DROP SEQUENCE public.change_request_approvals_id_seq;
DROP TABLE public.change_request_approvals;
DROP TABLE public.api_tokens;
DROP TABLE public.api_token_project;
DROP SEQUENCE public.addons_id_seq;
DROP TABLE public.addons;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: addons; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.addons (
    id integer NOT NULL,
    provider text NOT NULL,
    description text,
    enabled boolean DEFAULT true,
    parameters json,
    events json,
    created_at timestamp with time zone DEFAULT now(),
    projects jsonb DEFAULT '[]'::jsonb,
    environments jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.addons OWNER TO unleash;

--
-- Name: addons_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.addons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addons_id_seq OWNER TO unleash;

--
-- Name: addons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.addons_id_seq OWNED BY public.addons.id;


--
-- Name: api_token_project; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.api_token_project (
    secret text NOT NULL,
    project text NOT NULL
);


ALTER TABLE public.api_token_project OWNER TO unleash;

--
-- Name: api_tokens; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.api_tokens (
    secret text NOT NULL,
    username text NOT NULL,
    type text NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    expires_at timestamp with time zone,
    seen_at timestamp with time zone,
    environment character varying,
    alias text
);


ALTER TABLE public.api_tokens OWNER TO unleash;

--
-- Name: change_request_approvals; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.change_request_approvals (
    id integer NOT NULL,
    change_request_id integer NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.change_request_approvals OWNER TO unleash;

--
-- Name: change_request_approvals_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.change_request_approvals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_request_approvals_id_seq OWNER TO unleash;

--
-- Name: change_request_approvals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.change_request_approvals_id_seq OWNED BY public.change_request_approvals.id;


--
-- Name: change_request_comments; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.change_request_comments (
    id integer NOT NULL,
    change_request integer NOT NULL,
    text text NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    created_by integer NOT NULL
);


ALTER TABLE public.change_request_comments OWNER TO unleash;

--
-- Name: change_request_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.change_request_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_request_comments_id_seq OWNER TO unleash;

--
-- Name: change_request_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.change_request_comments_id_seq OWNED BY public.change_request_comments.id;


--
-- Name: change_request_events; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.change_request_events (
    id integer NOT NULL,
    feature character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    payload jsonb DEFAULT '[]'::jsonb NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    change_request_id integer NOT NULL
);


ALTER TABLE public.change_request_events OWNER TO unleash;

--
-- Name: change_request_events_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.change_request_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_request_events_id_seq OWNER TO unleash;

--
-- Name: change_request_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.change_request_events_id_seq OWNED BY public.change_request_events.id;


--
-- Name: change_request_settings; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.change_request_settings (
    project character varying(255) NOT NULL,
    environment character varying(100) NOT NULL,
    required_approvals integer DEFAULT 1
);


ALTER TABLE public.change_request_settings OWNER TO unleash;

--
-- Name: change_requests; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.change_requests (
    id integer NOT NULL,
    environment character varying(100),
    state character varying(255) NOT NULL,
    project character varying(255),
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    min_approvals integer DEFAULT 1
);


ALTER TABLE public.change_requests OWNER TO unleash;

--
-- Name: change_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.change_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_requests_id_seq OWNER TO unleash;

--
-- Name: change_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.change_requests_id_seq OWNED BY public.change_requests.id;


--
-- Name: client_applications; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.client_applications (
    app_name character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    seen_at timestamp with time zone,
    strategies json,
    description character varying(255),
    icon character varying(255),
    url character varying(255),
    color character varying(255),
    announced boolean DEFAULT false,
    created_by text
);


ALTER TABLE public.client_applications OWNER TO unleash;

--
-- Name: client_instances; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.client_instances (
    app_name character varying(255) NOT NULL,
    instance_id character varying(255) NOT NULL,
    client_ip character varying(255),
    last_seen timestamp with time zone DEFAULT now(),
    created_at timestamp with time zone DEFAULT now(),
    sdk_version character varying(255),
    environment character varying(255) DEFAULT 'default'::character varying NOT NULL
);


ALTER TABLE public.client_instances OWNER TO unleash;

--
-- Name: client_metrics_env; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.client_metrics_env (
    feature_name character varying(255) NOT NULL,
    app_name character varying(255) NOT NULL,
    environment character varying(100) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    yes bigint DEFAULT 0,
    no bigint DEFAULT 0
);


ALTER TABLE public.client_metrics_env OWNER TO unleash;

--
-- Name: context_fields; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.context_fields (
    name character varying(255) NOT NULL,
    description text,
    sort_order integer DEFAULT 10,
    legal_values json,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    stickiness boolean DEFAULT false
);


ALTER TABLE public.context_fields OWNER TO unleash;

--
-- Name: environments; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.environments (
    name character varying(100) NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    sort_order integer DEFAULT 9999,
    type text NOT NULL,
    enabled boolean DEFAULT true,
    protected boolean DEFAULT false
);


ALTER TABLE public.environments OWNER TO unleash;

--
-- Name: events; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.events (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    type character varying(255) NOT NULL,
    created_by character varying(255) NOT NULL,
    data json,
    tags json DEFAULT '[]'::json,
    project text,
    environment text,
    feature_name text,
    pre_data jsonb
);


ALTER TABLE public.events OWNER TO unleash;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO unleash;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: favorite_features; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.favorite_features (
    feature character varying(255) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.favorite_features OWNER TO unleash;

--
-- Name: favorite_projects; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.favorite_projects (
    project character varying(255) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.favorite_projects OWNER TO unleash;

--
-- Name: feature_environments; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.feature_environments (
    environment character varying(100) DEFAULT 'default'::character varying NOT NULL,
    feature_name character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    variants jsonb DEFAULT '[]'::jsonb NOT NULL
);


ALTER TABLE public.feature_environments OWNER TO unleash;

--
-- Name: feature_strategies; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.feature_strategies (
    id text NOT NULL,
    feature_name character varying(255) NOT NULL,
    project_name character varying(255) NOT NULL,
    environment character varying(100) DEFAULT 'default'::character varying NOT NULL,
    strategy_name character varying(255) NOT NULL,
    parameters jsonb DEFAULT '{}'::jsonb NOT NULL,
    constraints jsonb,
    sort_order integer DEFAULT 9999 NOT NULL,
    created_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.feature_strategies OWNER TO unleash;

--
-- Name: feature_strategy_segment; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.feature_strategy_segment (
    feature_strategy_id text NOT NULL,
    segment_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.feature_strategy_segment OWNER TO unleash;

--
-- Name: feature_tag; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.feature_tag (
    feature_name character varying(255) NOT NULL,
    tag_type text NOT NULL,
    tag_value text NOT NULL,
    created_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.feature_tag OWNER TO unleash;

--
-- Name: feature_types; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.feature_types (
    id character varying(255) NOT NULL,
    name character varying NOT NULL,
    description character varying,
    lifetime_days integer,
    created_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.feature_types OWNER TO unleash;

--
-- Name: features; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.features (
    created_at timestamp with time zone DEFAULT now(),
    name character varying(255) NOT NULL,
    description text,
    archived boolean DEFAULT false,
    variants json DEFAULT '[]'::json,
    type character varying DEFAULT 'release'::character varying,
    stale boolean DEFAULT false,
    project character varying DEFAULT 'default'::character varying,
    last_seen_at timestamp with time zone,
    impression_data boolean DEFAULT false,
    archived_at timestamp with time zone
);


ALTER TABLE public.features OWNER TO unleash;

--
-- Name: features_view; Type: VIEW; Schema: public; Owner: unleash
--

CREATE VIEW public.features_view AS
 SELECT features.name,
    features.description,
    features.type,
    features.project,
    features.stale,
    feature_environments.variants,
    features.impression_data,
    features.created_at,
    features.last_seen_at,
    features.archived_at,
    feature_environments.enabled,
    feature_environments.environment,
    environments.name AS environment_name,
    environments.type AS environment_type,
    environments.sort_order AS environment_sort_order,
    feature_strategies.id AS strategy_id,
    feature_strategies.strategy_name,
    feature_strategies.parameters,
    feature_strategies.constraints,
    feature_strategies.sort_order,
    fss.segment_id AS segments
   FROM ((((public.features
     LEFT JOIN public.feature_environments ON (((feature_environments.feature_name)::text = (features.name)::text)))
     LEFT JOIN public.feature_strategies ON ((((feature_strategies.feature_name)::text = (feature_environments.feature_name)::text) AND ((feature_strategies.environment)::text = (feature_environments.environment)::text))))
     LEFT JOIN public.environments ON (((feature_environments.environment)::text = (environments.name)::text)))
     LEFT JOIN public.feature_strategy_segment fss ON ((fss.feature_strategy_id = feature_strategies.id)));


ALTER TABLE public.features_view OWNER TO unleash;

--
-- Name: group_role; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.group_role (
    group_id integer NOT NULL,
    role_id integer NOT NULL,
    created_by text,
    created_at timestamp with time zone DEFAULT now(),
    project text NOT NULL
);


ALTER TABLE public.group_role OWNER TO unleash;

--
-- Name: group_user; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.group_user (
    group_id integer NOT NULL,
    user_id integer NOT NULL,
    created_by text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.group_user OWNER TO unleash;

--
-- Name: groups; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.groups (
    id integer NOT NULL,
    name text NOT NULL,
    description text,
    created_by text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    mappings_sso jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.groups OWNER TO unleash;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_seq OWNER TO unleash;

--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;


--
-- Name: login_history; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.login_history (
    id integer NOT NULL,
    username text NOT NULL,
    auth_type text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    successful boolean NOT NULL,
    ip inet,
    failure_reason text
);


ALTER TABLE public.login_history OWNER TO unleash;

--
-- Name: login_events_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.login_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.login_events_id_seq OWNER TO unleash;

--
-- Name: login_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.login_events_id_seq OWNED BY public.login_history.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    run_on timestamp without time zone NOT NULL
);


ALTER TABLE public.migrations OWNER TO unleash;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO unleash;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.notifications (
    id integer NOT NULL,
    event_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.notifications OWNER TO unleash;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO unleash;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.permissions (
    id integer NOT NULL,
    permission character varying(255) NOT NULL,
    display_name text,
    type character varying(255),
    created_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.permissions OWNER TO unleash;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO unleash;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.personal_access_tokens (
    secret text NOT NULL,
    description text,
    user_id integer NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    seen_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.personal_access_tokens OWNER TO unleash;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO unleash;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: project_environments; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.project_environments (
    project_id character varying(255) NOT NULL,
    environment_name character varying(100) NOT NULL
);


ALTER TABLE public.project_environments OWNER TO unleash;

--
-- Name: project_settings; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.project_settings (
    project character varying(255) NOT NULL,
    default_stickiness character varying(100),
    project_mode character varying(100)
);


ALTER TABLE public.project_settings OWNER TO unleash;

--
-- Name: project_stats; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.project_stats (
    project character varying(255) NOT NULL,
    avg_time_to_prod_current_window double precision DEFAULT 0,
    project_changes_current_window integer DEFAULT 0,
    project_changes_past_window integer DEFAULT 0,
    features_created_current_window integer DEFAULT 0,
    features_created_past_window integer DEFAULT 0,
    features_archived_current_window integer DEFAULT 0,
    features_archived_past_window integer DEFAULT 0,
    project_members_added_current_window integer DEFAULT 0
);


ALTER TABLE public.project_stats OWNER TO unleash;

--
-- Name: projects; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.projects (
    id character varying(255) NOT NULL,
    name character varying NOT NULL,
    description character varying,
    created_at timestamp without time zone DEFAULT now(),
    health integer DEFAULT 100,
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.projects OWNER TO unleash;

--
-- Name: public_signup_tokens; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.public_signup_tokens (
    secret text NOT NULL,
    name text,
    expires_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by text,
    role_id integer NOT NULL,
    url text,
    enabled boolean DEFAULT true
);


ALTER TABLE public.public_signup_tokens OWNER TO unleash;

--
-- Name: public_signup_tokens_user; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.public_signup_tokens_user (
    secret text NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.public_signup_tokens_user OWNER TO unleash;

--
-- Name: reset_tokens; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.reset_tokens (
    reset_token text NOT NULL,
    user_id integer,
    expires_at timestamp with time zone NOT NULL,
    used_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now(),
    created_by text
);


ALTER TABLE public.reset_tokens OWNER TO unleash;

--
-- Name: role_permission; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.role_permission (
    role_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    permission_id integer,
    environment character varying(100)
);


ALTER TABLE public.role_permission OWNER TO unleash;

--
-- Name: role_user; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.role_user (
    role_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    project character varying(255) NOT NULL
);


ALTER TABLE public.role_user OWNER TO unleash;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name text NOT NULL,
    description text,
    type text DEFAULT 'custom'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone
);


ALTER TABLE public.roles OWNER TO unleash;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO unleash;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: segments; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.segments (
    id integer NOT NULL,
    name text NOT NULL,
    description text,
    created_by text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    constraints jsonb DEFAULT '[]'::jsonb NOT NULL,
    segment_project_id character varying(255)
);


ALTER TABLE public.segments OWNER TO unleash;

--
-- Name: segments_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.segments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.segments_id_seq OWNER TO unleash;

--
-- Name: segments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.segments_id_seq OWNED BY public.segments.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.settings (
    name character varying(255) NOT NULL,
    content json
);


ALTER TABLE public.settings OWNER TO unleash;

--
-- Name: strategies; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.strategies (
    created_at timestamp with time zone DEFAULT now(),
    name character varying(255) NOT NULL,
    description text,
    parameters json,
    built_in integer DEFAULT 0,
    deprecated boolean DEFAULT false,
    sort_order integer DEFAULT 9999,
    display_name text
);


ALTER TABLE public.strategies OWNER TO unleash;

--
-- Name: tag_types; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.tag_types (
    name text NOT NULL,
    description text,
    icon text,
    created_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.tag_types OWNER TO unleash;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.tags (
    type text NOT NULL,
    value text NOT NULL,
    created_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.tags OWNER TO unleash;

--
-- Name: unleash_session; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.unleash_session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    expired timestamp with time zone NOT NULL
);


ALTER TABLE public.unleash_session OWNER TO unleash;

--
-- Name: user_feedback; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.user_feedback (
    user_id integer NOT NULL,
    feedback_id text NOT NULL,
    given timestamp with time zone,
    nevershow boolean DEFAULT false NOT NULL
);


ALTER TABLE public.user_feedback OWNER TO unleash;

--
-- Name: user_notifications; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.user_notifications (
    notification_id integer NOT NULL,
    user_id integer NOT NULL,
    read_at timestamp with time zone
);


ALTER TABLE public.user_notifications OWNER TO unleash;

--
-- Name: user_splash; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.user_splash (
    user_id integer NOT NULL,
    splash_id text NOT NULL,
    seen boolean DEFAULT false NOT NULL
);


ALTER TABLE public.user_splash OWNER TO unleash;

--
-- Name: users; Type: TABLE; Schema: public; Owner: unleash
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255),
    username character varying(255),
    email character varying(255),
    image_url character varying(255),
    password_hash character varying(255),
    login_attempts integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT now(),
    seen_at timestamp without time zone,
    settings json,
    permissions json DEFAULT '[]'::json,
    deleted_at timestamp with time zone,
    is_service boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO unleash;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: unleash
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO unleash;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unleash
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: addons id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.addons ALTER COLUMN id SET DEFAULT nextval('public.addons_id_seq'::regclass);


--
-- Name: change_request_approvals id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_approvals ALTER COLUMN id SET DEFAULT nextval('public.change_request_approvals_id_seq'::regclass);


--
-- Name: change_request_comments id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_comments ALTER COLUMN id SET DEFAULT nextval('public.change_request_comments_id_seq'::regclass);


--
-- Name: change_request_events id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_events ALTER COLUMN id SET DEFAULT nextval('public.change_request_events_id_seq'::regclass);


--
-- Name: change_requests id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_requests ALTER COLUMN id SET DEFAULT nextval('public.change_requests_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: groups id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);


--
-- Name: login_history id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.login_history ALTER COLUMN id SET DEFAULT nextval('public.login_events_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: segments id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.segments ALTER COLUMN id SET DEFAULT nextval('public.segments_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: addons; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.addons (id, provider, description, enabled, parameters, events, created_at, projects, environments) FROM stdin;
\.


--
-- Data for Name: api_token_project; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.api_token_project (secret, project) FROM stdin;
default:development.unleash-insecure-api-token	default
default:development.unleash-insecure-frontend-api-token	default
\.


--
-- Data for Name: api_tokens; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.api_tokens (secret, username, type, created_at, expires_at, seen_at, environment, alias) FROM stdin;
default:development.unleash-insecure-frontend-api-token	admin	frontend	2023-05-23 18:15:58.054976+00	\N	\N	development	\N
default:development.unleash-insecure-api-token	admin	client	2023-05-23 18:15:58.05469+00	\N	2023-05-23 21:45:57.897+00	development	\N
\.


--
-- Data for Name: change_request_approvals; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.change_request_approvals (id, change_request_id, created_by, created_at) FROM stdin;
\.


--
-- Data for Name: change_request_comments; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.change_request_comments (id, change_request, text, created_at, created_by) FROM stdin;
\.


--
-- Data for Name: change_request_events; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.change_request_events (id, feature, action, payload, created_by, created_at, change_request_id) FROM stdin;
\.


--
-- Data for Name: change_request_settings; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.change_request_settings (project, environment, required_approvals) FROM stdin;
\.


--
-- Data for Name: change_requests; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.change_requests (id, environment, state, project, created_by, created_at, min_approvals) FROM stdin;
\.


--
-- Data for Name: client_applications; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.client_applications (app_name, created_at, updated_at, seen_at, strategies, description, icon, url, color, announced, created_by) FROM stdin;
app-django-python	2023-05-23 18:16:12.829083+00	2023-05-23 21:32:38.151+00	2023-05-23 21:32:38.151+00	["applicationHostname","default","gradualRolloutRandom","gradualRolloutSessionId","gradualRolloutUserId","remoteAddress","userWithId","flexibleRollout"]	\N	\N	\N	\N	t	::ffff:172.22.0.1
\.


--
-- Data for Name: client_instances; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.client_instances (app_name, instance_id, client_ip, last_seen, created_at, sdk_version, environment) FROM stdin;
app-django-python	unleash-client-python	::ffff:172.22.0.1	2023-05-23 21:33:07.607+00	2023-05-23 18:16:12.830858+00	unleash-client-python:5.6.0	development
\.


--
-- Data for Name: client_metrics_env; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.client_metrics_env (feature_name, app_name, environment, "timestamp", yes, no) FROM stdin;
ALLOW_PROFILE_MANAGEMENT	app-django-python	development	2023-05-23 20:00:00+00	4	0
GAME_SHARK_MODE	app-django-python	development	2023-05-23 20:00:00+00	0	4
PROFILE_MANAGEMENT_BUTTON_SCHEME	app-django-python	development	2023-05-23 20:00:00+00	4	0
SHOW_PROFILES	app-django-python	development	2023-05-23 20:00:00+00	4	0
TEXT_PRESENTATION	app-django-python	development	2023-05-23 20:00:00+00	4	0
ALLOW_PROFILE_MANAGEMENT	app-django-python	development	2023-05-23 21:00:00+00	13	0
GAME_SHARK_MODE	app-django-python	development	2023-05-23 21:00:00+00	0	13
PROFILE_MANAGEMENT_BUTTON_SCHEME	app-django-python	development	2023-05-23 21:00:00+00	13	0
SHOW_PROFILES	app-django-python	development	2023-05-23 21:00:00+00	13	0
TEXT_PRESENTATION	app-django-python	development	2023-05-23 21:00:00+00	13	0
YOU_ARE_SPECIAL_FOR_US	app-django-python	development	2023-05-23 21:00:00+00	7	4
\.


--
-- Data for Name: context_fields; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.context_fields (name, description, sort_order, legal_values, created_at, updated_at, stickiness) FROM stdin;
environment	Allows you to constrain on application environment	0	\N	2023-05-23 18:15:57.47781	2023-05-23 18:15:57.47781	f
userId	Allows you to constrain on userId	1	\N	2023-05-23 18:15:57.47781	2023-05-23 18:15:57.47781	f
appName	Allows you to constrain on application name	2	\N	2023-05-23 18:15:57.47781	2023-05-23 18:15:57.47781	f
currentTime	Allows you to constrain on date values	3	\N	2023-05-23 18:15:57.676422	2023-05-23 18:15:57.676422	f
cnpj	The unique identifier regarding a company.	10	[]	2023-05-23 21:27:41.026101	2023-05-23 21:27:41.026101	f
\.


--
-- Data for Name: environments; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.environments (name, created_at, sort_order, type, enabled, protected) FROM stdin;
development	2023-05-23 18:15:57.621922+00	100	development	t	f
production	2023-05-23 18:15:57.621922+00	200	production	t	f
default	2023-05-23 18:15:57.61425+00	1	production	f	t
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.events (id, created_at, type, created_by, data, tags, project, environment, feature_name, pre_data) FROM stdin;
1	2023-05-23 18:15:57.444143+00	strategy-created	migration	{"name":"default","description":"Default on or off Strategy."}	[]	\N	\N	\N	\N
2	2023-05-23 18:15:57.467973+00	strategy-created	migration	{"name":"userWithId","description":"Active for users with a userId defined in the userIds-list","parameters":[{"name":"userIds","type":"list","description":"","required":false}]}	[]	\N	\N	\N	\N
3	2023-05-23 18:15:57.467973+00	strategy-created	migration	{"name":"applicationHostname","description":"Active for client instances with a hostName in the hostNames-list.","parameters":[{"name":"hostNames","type":"list","description":"List of hostnames to enable the feature toggle for.","required":false}]}	[]	\N	\N	\N	\N
4	2023-05-23 18:15:57.467973+00	strategy-created	migration	{"name":"gradualRolloutRandom","description":"Randomly activate the feature toggle. No stickiness.","parameters":[{"name":"percentage","type":"percentage","description":"","required":false}]}	[]	\N	\N	\N	\N
5	2023-05-23 18:15:57.467973+00	strategy-created	migration	{"name":"gradualRolloutSessionId","description":"Gradually activate feature toggle. Stickiness based on session id.","parameters":[{"name":"percentage","type":"percentage","description":"","required":false},{"name":"groupId","type":"string","description":"Used to define a activation groups, which allows you to correlate across feature toggles.","required":true}]}	[]	\N	\N	\N	\N
6	2023-05-23 18:15:57.467973+00	strategy-created	migration	{"name":"gradualRolloutUserId","description":"Gradually activate feature toggle for logged in users. Stickiness based on user id.","parameters":[{"name":"percentage","type":"percentage","description":"","required":false},{"name":"groupId","type":"string","description":"Used to define a activation groups, which allows you to correlate across feature toggles.","required":true}]}	[]	\N	\N	\N	\N
7	2023-05-23 18:15:57.467973+00	strategy-created	migration	{"name":"remoteAddress","description":"Active for remote addresses defined in the IPs list.","parameters":[{"name":"IPs","type":"list","description":"List of IPs to enable the feature toggle for.","required":true}]}	[]	\N	\N	\N	\N
8	2023-05-23 18:15:57.476271+00	strategy-created	migration	{"name":"flexibleRollout","description":"Gradually activate feature toggle based on sane stickiness","parameters":[{"name":"rollout","type":"percentage","description":"","required":false},{"name":"stickiness","type":"string","description":"Used define stickiness. Possible values: default, userId, sessionId, random","required":true},{"name":"groupId","type":"string","description":"Used to define a activation groups, which allows you to correlate across feature toggles.","required":true}]}	[]	\N	\N	\N	\N
9	2023-05-23 18:15:58.063354+00	api-token-created	init-api-tokens	{"username":"admin","type":"frontend","environment":"development","projects":["default"],"alias":null,"project":"default","createdAt":"2023-05-23T18:15:58.054Z"}	[]	default	development	\N	\N
10	2023-05-23 18:15:58.064695+00	api-token-created	init-api-tokens	{"username":"admin","type":"client","environment":"development","projects":["default"],"alias":null,"project":"default","createdAt":"2023-05-23T18:15:58.054Z"}	[]	default	development	\N	\N
11	2023-05-23 18:20:57.831388+00	application-created	::ffff:172.22.0.1	{"appName":"app-django-python","createdAt":"2023-05-23T18:16:12.829Z","updatedAt":"2023-05-23T18:20:47.833Z","description":null,"strategies":["applicationHostname","default","gradualRolloutRandom","gradualRolloutSessionId","gradualRolloutUserId","remoteAddress","userWithId","flexibleRollout"],"createdBy":"::ffff:172.22.0.1","url":null,"color":null,"icon":null}	[]	\N	\N	\N	\N
12	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"ADD_POST","description":"It allows a person adding a post or not. Only for the C# App.","type":"release","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":true,"archivedAt":null,"archived":false}	[]	default	\N	ADD_POST	\N
13	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"ALLOW_PROFILE_MANAGEMENT","description":"User can manage profiles","type":"permission","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":true,"archivedAt":null,"archived":false}	[]	default	\N	ALLOW_PROFILE_MANAGEMENT	\N
14	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"BUTTON_SCHEME_VALUE","description":"Change the button appearance by changing its CSS class. Only for the C# App.","type":"experiment","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":true,"archivedAt":null,"archived":false}	[]	default	\N	BUTTON_SCHEME_VALUE	\N
15	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"DISABLE_CLAIMS_PAGE","description":"","type":"permission","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":false,"archivedAt":null,"archived":false}	[]	default	\N	DISABLE_CLAIMS_PAGE	\N
16	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"ENABLE_PROFILE_ADMIN","description":"","type":"permission","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":false,"archivedAt":null,"archived":false}	[]	default	\N	ENABLE_PROFILE_ADMIN	\N
17	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"ENABLE_PROFILE_API","description":"","type":"kill-switch","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":false,"archivedAt":null,"archived":false}	[]	default	\N	ENABLE_PROFILE_API	\N
18	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"GAME_SHARK_MODE","description":"","type":"kill-switch","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":true,"archivedAt":null,"archived":false}	[]	default	\N	GAME_SHARK_MODE	\N
19	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"PROFILE_MANAGEMENT_BUTTON_SCHEME","description":"It changes the button scheme in terms of color and dimension","type":"experiment","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":true,"archivedAt":null,"archived":false}	[]	default	\N	PROFILE_MANAGEMENT_BUTTON_SCHEME	\N
20	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"SHOW_EASTER_EGG","description":"","type":"release","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":false,"archivedAt":null,"archived":false}	[]	default	\N	SHOW_EASTER_EGG	\N
21	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"SHOW_PROFILES","description":"Users can see the profiles list","type":"permission","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":true,"archivedAt":null,"archived":false}	[]	default	\N	SHOW_PROFILES	\N
22	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"SHOW_TAGS","description":"Either show or not tags when consulting posts from the C# App.","type":"permission","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":true,"archivedAt":null,"archived":false}	[]	default	\N	SHOW_TAGS	\N
23	2023-05-23 20:10:26.05959+00	feature-created	admin	{"name":"TEXT_PRESENTATION","description":"","type":"experiment","project":"default","stale":false,"createdAt":"2023-05-23T20:10:26.059Z","lastSeenAt":null,"impressionData":true,"archivedAt":null,"archived":false}	[]	default	\N	TEXT_PRESENTATION	\N
24	2023-05-23 20:10:26.05959+00	feature-environment-variants-updated	admin	{"variants":[{"name":"BTN-DARK","weight":250,"payload":{"type":"string","value":"btn-dark"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"BTN-LIGHT","weight":250,"payload":{"type":"string","value":"btn-light"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"BTN-PRIMARY","weight":250,"payload":{"type":"string","value":"btn-primary"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"BTN-SECONDARY","weight":250,"payload":{"type":"string","value":"btn-secondary"},"overrides":[],"stickiness":"random","weightType":"variable"}]}	[]	default	development	BUTTON_SCHEME_VALUE	{"variants": []}
25	2023-05-23 20:10:26.05959+00	feature-environment-variants-updated	admin	{"variants":[{"name":"BLUE","weight":334,"payload":{"type":"string","value":"btn-primary"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"DARK-WITHOUT-OUTLINE","weight":333,"payload":{"type":"string","value":"btn-dark"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"OUTLINE-DARK","weight":333,"payload":{"type":"string","value":"btn-outline-dark"},"overrides":[],"stickiness":"random","weightType":"variable"}]}	[]	default	development	PROFILE_MANAGEMENT_BUTTON_SCHEME	{"variants": []}
26	2023-05-23 20:10:26.05959+00	feature-environment-variants-updated	admin	{"variants":[{"name":"DEFAULT","weight":500,"payload":{"type":"json","value":"{\\n\\"title\\": \\"Hello there 😄!\\",\\n\\"subTitle\\": \\"Change how this app behave by changing the feature toggle tool ⚒\\",\\n\\"profileTitle\\": \\"Registered profiles\\"\\n}"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"FRIENDLIER","weight":500,"payload":{"type":"json","value":"{ \\"title\\": \\"Hello you handsome 😉!\\", \\"subTitle\\": \\"Psiu! You can change how this thing behaves. Just change the feature toggles ⚒\\", \\"profileTitle\\": \\"Profiles we've found\\" }"},"overrides":[],"stickiness":"random","weightType":"variable"}]}	[]	default	development	TEXT_PRESENTATION	{"variants": []}
27	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"ac0c4101-a2ab-4bc1-b1de-d0856b9063eb","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"ADD_POST","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	ADD_POST	\N
28	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"95dc4a3c-db03-4723-85b2-950659b32570","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"ALLOW_PROFILE_MANAGEMENT","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	ALLOW_PROFILE_MANAGEMENT	\N
29	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"8e3fefb3-e7c0-4127-8acd-ad2f95829003","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"BUTTON_SCHEME_VALUE","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	BUTTON_SCHEME_VALUE	\N
30	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"8a92aef0-ebef-4678-b1a4-d6e5431957dc","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"DISABLE_CLAIMS_PAGE","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	DISABLE_CLAIMS_PAGE	\N
31	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"31da1fa6-1a11-4c4c-819e-7831fd7d284e","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"ENABLE_PROFILE_ADMIN","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	ENABLE_PROFILE_ADMIN	\N
32	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"f317532f-0167-485d-a30c-f49cdea76101","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"ENABLE_PROFILE_API","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	ENABLE_PROFILE_API	\N
33	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"5b1efaa9-5873-451e-8161-2760adea8ac2","name":"userWithId","constraints":[],"parameters":{"userIds":"d821cbc0-2e4d-49fc-a5b4-990eb991beec"},"segments":[]}	[]	default	development	GAME_SHARK_MODE	\N
34	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"78096f58-134a-4860-84f2-b117280eb936","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"PROFILE_MANAGEMENT_BUTTON_SCHEME","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	PROFILE_MANAGEMENT_BUTTON_SCHEME	\N
35	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"03738c11-28f2-4eb8-be8d-1b1f9bd6e5b8","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"SHOW_EASTER_EGG","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	SHOW_EASTER_EGG	\N
36	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"89e40924-945f-4e47-9ab1-bbf7bcbef30d","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"SHOW_PROFILES","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	SHOW_PROFILES	\N
37	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"969dff29-f1ce-4833-9214-a29faca80148","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"SHOW_TAGS","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	SHOW_TAGS	\N
38	2023-05-23 20:10:26.05959+00	feature-strategy-add	admin	{"id":"67d46638-c091-471a-b39e-04884ae6e625","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"TEXT_PRESENTATION","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	TEXT_PRESENTATION	\N
39	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	ADD_POST	\N
40	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	ALLOW_PROFILE_MANAGEMENT	\N
41	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	BUTTON_SCHEME_VALUE	\N
42	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	DISABLE_CLAIMS_PAGE	\N
43	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	ENABLE_PROFILE_API	\N
44	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	GAME_SHARK_MODE	\N
45	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	PROFILE_MANAGEMENT_BUTTON_SCHEME	\N
46	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	SHOW_PROFILES	\N
47	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	SHOW_TAGS	\N
48	2023-05-23 20:10:26.05959+00	feature-environment-enabled	admin	\N	[]	default	development	TEXT_PRESENTATION	\N
49	2023-05-23 20:10:26.05959+00	features-imported	admin	\N	[]	default	development	\N	\N
50	2023-05-23 21:27:41.027447+00	context-field-created	admin	{"name":"cnpj","description":"The unique identifier regarding a company.","legalValues":[],"stickiness":false}	[]	\N	\N	\N	\N
51	2023-05-23 21:28:54.138381+00	feature-created	admin	{"name":"YOU_ARE_SPECIAL_FOR_US","description":"It will show a welcome message only for selected companies.","type":"experiment","project":"default","stale":false,"createdAt":"2023-05-23T21:28:54.121Z","lastSeenAt":null,"impressionData":true,"archivedAt":null,"archived":false}	[]	default	\N	YOU_ARE_SPECIAL_FOR_US	\N
52	2023-05-23 21:29:12.259751+00	feature-strategy-add	admin	{"id":"08d1a467-0b64-4560-8685-bd5970bd5fad","name":"flexibleRollout","constraints":[],"parameters":{"groupId":"YOU_ARE_SPECIAL_FOR_US","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	YOU_ARE_SPECIAL_FOR_US	\N
53	2023-05-23 21:29:12.262208+00	feature-environment-enabled	admin	\N	[]	default	development	YOU_ARE_SPECIAL_FOR_US	\N
54	2023-05-23 21:31:06.022436+00	feature-strategy-update	admin	{"id":"08d1a467-0b64-4560-8685-bd5970bd5fad","name":"flexibleRollout","constraints":[{"values":["60832098000175","79456582000175","66606413000122","59878210000120"],"inverted":false,"operator":"IN","contextName":"cnpj","caseInsensitive":false}],"parameters":{"groupId":"YOU_ARE_SPECIAL_FOR_US","rollout":"100","stickiness":"default"},"segments":[]}	[]	default	development	YOU_ARE_SPECIAL_FOR_US	{"id": "08d1a467-0b64-4560-8685-bd5970bd5fad", "name": "flexibleRollout", "segments": [], "parameters": {"groupId": "YOU_ARE_SPECIAL_FOR_US", "rollout": "100", "stickiness": "default"}, "constraints": []}
55	2023-05-23 21:40:13.160129+00	features-exported	admin	{"features":[{"name":"ADD_POST","description":"It allows a person adding a post or not. Only for the C# App.","type":"release","project":"default","stale":false,"impressionData":true,"archived":false},{"name":"ALLOW_PROFILE_MANAGEMENT","description":"User can manage profiles","type":"permission","project":"default","stale":false,"impressionData":true,"archived":false},{"name":"BUTTON_SCHEME_VALUE","description":"Change the button appearance by changing its CSS class. Only for the C# App.","type":"experiment","project":"default","stale":false,"impressionData":true,"archived":false},{"name":"DISABLE_CLAIMS_PAGE","description":"","type":"permission","project":"default","stale":false,"impressionData":false,"archived":false},{"name":"ENABLE_PROFILE_ADMIN","description":"","type":"permission","project":"default","stale":false,"impressionData":false,"archived":false},{"name":"ENABLE_PROFILE_API","description":"","type":"kill-switch","project":"default","stale":false,"impressionData":false,"archived":false},{"name":"GAME_SHARK_MODE","description":"","type":"kill-switch","project":"default","stale":false,"impressionData":true,"archived":false},{"name":"PROFILE_MANAGEMENT_BUTTON_SCHEME","description":"It changes the button scheme in terms of color and dimension","type":"experiment","project":"default","stale":false,"impressionData":true,"archived":false},{"name":"SHOW_EASTER_EGG","description":"","type":"release","project":"default","stale":false,"impressionData":false,"archived":false},{"name":"SHOW_PROFILES","description":"Users can see the profiles list","type":"permission","project":"default","stale":false,"impressionData":true,"archived":false},{"name":"SHOW_TAGS","description":"Either show or not tags when consulting posts from the C# App.","type":"permission","project":"default","stale":false,"impressionData":true,"archived":false},{"name":"TEXT_PRESENTATION","description":"","type":"experiment","project":"default","stale":false,"impressionData":true,"archived":false},{"name":"YOU_ARE_SPECIAL_FOR_US","description":"It will show a welcome message only for selected companies.","type":"experiment","project":"default","stale":false,"impressionData":true,"archived":false}],"featureStrategies":[{"name":"flexibleRollout","id":"ac0c4101-a2ab-4bc1-b1de-d0856b9063eb","featureName":"ADD_POST","parameters":{"groupId":"ADD_POST","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"95dc4a3c-db03-4723-85b2-950659b32570","featureName":"ALLOW_PROFILE_MANAGEMENT","parameters":{"groupId":"ALLOW_PROFILE_MANAGEMENT","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"8e3fefb3-e7c0-4127-8acd-ad2f95829003","featureName":"BUTTON_SCHEME_VALUE","parameters":{"groupId":"BUTTON_SCHEME_VALUE","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"8a92aef0-ebef-4678-b1a4-d6e5431957dc","featureName":"DISABLE_CLAIMS_PAGE","parameters":{"groupId":"DISABLE_CLAIMS_PAGE","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"31da1fa6-1a11-4c4c-819e-7831fd7d284e","featureName":"ENABLE_PROFILE_ADMIN","parameters":{"groupId":"ENABLE_PROFILE_ADMIN","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"f317532f-0167-485d-a30c-f49cdea76101","featureName":"ENABLE_PROFILE_API","parameters":{"groupId":"ENABLE_PROFILE_API","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"userWithId","id":"5b1efaa9-5873-451e-8161-2760adea8ac2","featureName":"GAME_SHARK_MODE","parameters":{"userIds":"d821cbc0-2e4d-49fc-a5b4-990eb991beec"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"78096f58-134a-4860-84f2-b117280eb936","featureName":"PROFILE_MANAGEMENT_BUTTON_SCHEME","parameters":{"groupId":"PROFILE_MANAGEMENT_BUTTON_SCHEME","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"03738c11-28f2-4eb8-be8d-1b1f9bd6e5b8","featureName":"SHOW_EASTER_EGG","parameters":{"groupId":"SHOW_EASTER_EGG","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"89e40924-945f-4e47-9ab1-bbf7bcbef30d","featureName":"SHOW_PROFILES","parameters":{"groupId":"SHOW_PROFILES","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"969dff29-f1ce-4833-9214-a29faca80148","featureName":"SHOW_TAGS","parameters":{"groupId":"SHOW_TAGS","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"67d46638-c091-471a-b39e-04884ae6e625","featureName":"TEXT_PRESENTATION","parameters":{"groupId":"TEXT_PRESENTATION","rollout":"100","stickiness":"default"},"constraints":[],"segments":[]},{"name":"flexibleRollout","id":"08d1a467-0b64-4560-8685-bd5970bd5fad","featureName":"YOU_ARE_SPECIAL_FOR_US","parameters":{"groupId":"YOU_ARE_SPECIAL_FOR_US","rollout":"100","stickiness":"default"},"constraints":[{"values":["60832098000175","79456582000175","66606413000122","59878210000120"],"inverted":false,"operator":"IN","contextName":"cnpj","caseInsensitive":false}],"segments":[]}],"featureEnvironments":[{"enabled":true,"featureName":"ADD_POST","environment":"development","variants":[],"name":"ADD_POST"},{"enabled":true,"featureName":"ALLOW_PROFILE_MANAGEMENT","environment":"development","variants":[],"name":"ALLOW_PROFILE_MANAGEMENT"},{"enabled":true,"featureName":"BUTTON_SCHEME_VALUE","environment":"development","variants":[{"name":"BTN-DARK","weight":250,"payload":{"type":"string","value":"btn-dark"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"BTN-LIGHT","weight":250,"payload":{"type":"string","value":"btn-light"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"BTN-PRIMARY","weight":250,"payload":{"type":"string","value":"btn-primary"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"BTN-SECONDARY","weight":250,"payload":{"type":"string","value":"btn-secondary"},"overrides":[],"stickiness":"random","weightType":"variable"}],"name":"BUTTON_SCHEME_VALUE"},{"enabled":true,"featureName":"DISABLE_CLAIMS_PAGE","environment":"development","variants":[],"name":"DISABLE_CLAIMS_PAGE"},{"enabled":false,"featureName":"ENABLE_PROFILE_ADMIN","environment":"development","variants":[],"name":"ENABLE_PROFILE_ADMIN"},{"enabled":true,"featureName":"ENABLE_PROFILE_API","environment":"development","variants":[],"name":"ENABLE_PROFILE_API"},{"enabled":true,"featureName":"GAME_SHARK_MODE","environment":"development","variants":[],"name":"GAME_SHARK_MODE"},{"enabled":true,"featureName":"PROFILE_MANAGEMENT_BUTTON_SCHEME","environment":"development","variants":[{"name":"BLUE","weight":334,"payload":{"type":"string","value":"btn-primary"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"DARK-WITHOUT-OUTLINE","weight":333,"payload":{"type":"string","value":"btn-dark"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"OUTLINE-DARK","weight":333,"payload":{"type":"string","value":"btn-outline-dark"},"overrides":[],"stickiness":"random","weightType":"variable"}],"name":"PROFILE_MANAGEMENT_BUTTON_SCHEME"},{"enabled":false,"featureName":"SHOW_EASTER_EGG","environment":"development","variants":[],"name":"SHOW_EASTER_EGG"},{"enabled":true,"featureName":"SHOW_PROFILES","environment":"development","variants":[],"name":"SHOW_PROFILES"},{"enabled":true,"featureName":"SHOW_TAGS","environment":"development","variants":[],"name":"SHOW_TAGS"},{"enabled":true,"featureName":"TEXT_PRESENTATION","environment":"development","variants":[{"name":"DEFAULT","weight":500,"payload":{"type":"json","value":"{\\n\\"title\\": \\"Hello there 😄!\\",\\n\\"subTitle\\": \\"Change how this app behave by changing the feature toggle tool ⚒\\",\\n\\"profileTitle\\": \\"Registered profiles\\"\\n}"},"overrides":[],"stickiness":"random","weightType":"variable"},{"name":"FRIENDLIER","weight":500,"payload":{"type":"json","value":"{ \\"title\\": \\"Hello you handsome 😉!\\", \\"subTitle\\": \\"Psiu! You can change how this thing behaves. Just change the feature toggles ⚒\\", \\"profileTitle\\": \\"Profiles we've found\\" }"},"overrides":[],"stickiness":"random","weightType":"variable"}],"name":"TEXT_PRESENTATION"},{"enabled":true,"featureName":"YOU_ARE_SPECIAL_FOR_US","environment":"development","variants":[],"name":"YOU_ARE_SPECIAL_FOR_US"}],"contextFields":[{"name":"cnpj","description":"The unique identifier regarding a company.","stickiness":false,"sortOrder":10,"legalValues":[]}],"featureTags":[],"segments":[],"tagTypes":[]}	[]	\N	\N	\N	\N
\.


--
-- Data for Name: favorite_features; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.favorite_features (feature, user_id, created_at) FROM stdin;
\.


--
-- Data for Name: favorite_projects; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.favorite_projects (project, user_id, created_at) FROM stdin;
\.


--
-- Data for Name: feature_environments; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.feature_environments (environment, feature_name, enabled, variants) FROM stdin;
production	ADD_POST	f	[]
production	ALLOW_PROFILE_MANAGEMENT	f	[]
production	BUTTON_SCHEME_VALUE	f	[]
production	DISABLE_CLAIMS_PAGE	f	[]
development	ENABLE_PROFILE_ADMIN	f	[]
production	ENABLE_PROFILE_ADMIN	f	[]
production	ENABLE_PROFILE_API	f	[]
production	GAME_SHARK_MODE	f	[]
production	PROFILE_MANAGEMENT_BUTTON_SCHEME	f	[]
development	SHOW_EASTER_EGG	f	[]
production	SHOW_EASTER_EGG	f	[]
production	SHOW_PROFILES	f	[]
production	SHOW_TAGS	f	[]
production	TEXT_PRESENTATION	f	[]
development	ADD_POST	t	[]
development	ALLOW_PROFILE_MANAGEMENT	t	[]
development	BUTTON_SCHEME_VALUE	t	[{"name": "BTN-DARK", "weight": 250, "payload": {"type": "string", "value": "btn-dark"}, "overrides": [], "stickiness": "random", "weightType": "variable"}, {"name": "BTN-LIGHT", "weight": 250, "payload": {"type": "string", "value": "btn-light"}, "overrides": [], "stickiness": "random", "weightType": "variable"}, {"name": "BTN-PRIMARY", "weight": 250, "payload": {"type": "string", "value": "btn-primary"}, "overrides": [], "stickiness": "random", "weightType": "variable"}, {"name": "BTN-SECONDARY", "weight": 250, "payload": {"type": "string", "value": "btn-secondary"}, "overrides": [], "stickiness": "random", "weightType": "variable"}]
development	DISABLE_CLAIMS_PAGE	t	[]
development	ENABLE_PROFILE_API	t	[]
development	GAME_SHARK_MODE	t	[]
development	PROFILE_MANAGEMENT_BUTTON_SCHEME	t	[{"name": "BLUE", "weight": 334, "payload": {"type": "string", "value": "btn-primary"}, "overrides": [], "stickiness": "random", "weightType": "variable"}, {"name": "DARK-WITHOUT-OUTLINE", "weight": 333, "payload": {"type": "string", "value": "btn-dark"}, "overrides": [], "stickiness": "random", "weightType": "variable"}, {"name": "OUTLINE-DARK", "weight": 333, "payload": {"type": "string", "value": "btn-outline-dark"}, "overrides": [], "stickiness": "random", "weightType": "variable"}]
development	SHOW_PROFILES	t	[]
development	SHOW_TAGS	t	[]
development	TEXT_PRESENTATION	t	[{"name": "DEFAULT", "weight": 500, "payload": {"type": "json", "value": "{\\n\\"title\\": \\"Hello there 😄!\\",\\n\\"subTitle\\": \\"Change how this app behave by changing the feature toggle tool ⚒\\",\\n\\"profileTitle\\": \\"Registered profiles\\"\\n}"}, "overrides": [], "stickiness": "random", "weightType": "variable"}, {"name": "FRIENDLIER", "weight": 500, "payload": {"type": "json", "value": "{ \\"title\\": \\"Hello you handsome 😉!\\", \\"subTitle\\": \\"Psiu! You can change how this thing behaves. Just change the feature toggles ⚒\\", \\"profileTitle\\": \\"Profiles we've found\\" }"}, "overrides": [], "stickiness": "random", "weightType": "variable"}]
production	YOU_ARE_SPECIAL_FOR_US	f	[]
development	YOU_ARE_SPECIAL_FOR_US	t	[]
\.


--
-- Data for Name: feature_strategies; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.feature_strategies (id, feature_name, project_name, environment, strategy_name, parameters, constraints, sort_order, created_at) FROM stdin;
ac0c4101-a2ab-4bc1-b1de-d0856b9063eb	ADD_POST	default	development	flexibleRollout	{"groupId": "ADD_POST", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
95dc4a3c-db03-4723-85b2-950659b32570	ALLOW_PROFILE_MANAGEMENT	default	development	flexibleRollout	{"groupId": "ALLOW_PROFILE_MANAGEMENT", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
8e3fefb3-e7c0-4127-8acd-ad2f95829003	BUTTON_SCHEME_VALUE	default	development	flexibleRollout	{"groupId": "BUTTON_SCHEME_VALUE", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
8a92aef0-ebef-4678-b1a4-d6e5431957dc	DISABLE_CLAIMS_PAGE	default	development	flexibleRollout	{"groupId": "DISABLE_CLAIMS_PAGE", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
31da1fa6-1a11-4c4c-819e-7831fd7d284e	ENABLE_PROFILE_ADMIN	default	development	flexibleRollout	{"groupId": "ENABLE_PROFILE_ADMIN", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
f317532f-0167-485d-a30c-f49cdea76101	ENABLE_PROFILE_API	default	development	flexibleRollout	{"groupId": "ENABLE_PROFILE_API", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
5b1efaa9-5873-451e-8161-2760adea8ac2	GAME_SHARK_MODE	default	development	userWithId	{"userIds": "d821cbc0-2e4d-49fc-a5b4-990eb991beec"}	[]	9999	2023-05-23 20:10:26.05959+00
78096f58-134a-4860-84f2-b117280eb936	PROFILE_MANAGEMENT_BUTTON_SCHEME	default	development	flexibleRollout	{"groupId": "PROFILE_MANAGEMENT_BUTTON_SCHEME", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
03738c11-28f2-4eb8-be8d-1b1f9bd6e5b8	SHOW_EASTER_EGG	default	development	flexibleRollout	{"groupId": "SHOW_EASTER_EGG", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
89e40924-945f-4e47-9ab1-bbf7bcbef30d	SHOW_PROFILES	default	development	flexibleRollout	{"groupId": "SHOW_PROFILES", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
969dff29-f1ce-4833-9214-a29faca80148	SHOW_TAGS	default	development	flexibleRollout	{"groupId": "SHOW_TAGS", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
67d46638-c091-471a-b39e-04884ae6e625	TEXT_PRESENTATION	default	development	flexibleRollout	{"groupId": "TEXT_PRESENTATION", "rollout": "100", "stickiness": "default"}	[]	9999	2023-05-23 20:10:26.05959+00
08d1a467-0b64-4560-8685-bd5970bd5fad	YOU_ARE_SPECIAL_FOR_US	default	development	flexibleRollout	{"groupId": "YOU_ARE_SPECIAL_FOR_US", "rollout": "100", "stickiness": "default"}	[{"values": ["60832098000175", "79456582000175", "66606413000122", "59878210000120"], "inverted": false, "operator": "IN", "contextName": "cnpj", "caseInsensitive": false}]	9999	2023-05-23 21:29:12.257102+00
\.


--
-- Data for Name: feature_strategy_segment; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.feature_strategy_segment (feature_strategy_id, segment_id, created_at) FROM stdin;
\.


--
-- Data for Name: feature_tag; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.feature_tag (feature_name, tag_type, tag_value, created_at) FROM stdin;
\.


--
-- Data for Name: feature_types; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.feature_types (id, name, description, lifetime_days, created_at) FROM stdin;
release	Release	Release feature toggles are used to release new features.	40	2023-05-23 18:15:57.499979+00
experiment	Experiment	Experiment feature toggles are used to test and verify multiple different versions of a feature.	40	2023-05-23 18:15:57.499979+00
operational	Operational	Operational feature toggles are used to control aspects of a rollout.	7	2023-05-23 18:15:57.499979+00
kill-switch	Kill switch	Kill switch feature toggles are used to quickly turn on or off critical functionality in your system.	\N	2023-05-23 18:15:57.499979+00
permission	Permission	Permission feature toggles are used to control permissions in your system.	\N	2023-05-23 18:15:57.499979+00
\.


--
-- Data for Name: features; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.features (created_at, name, description, archived, variants, type, stale, project, last_seen_at, impression_data, archived_at) FROM stdin;
2023-05-23 20:10:26.05959+00	ADD_POST	It allows a person adding a post or not. Only for the C# App.	f	[]	release	f	default	\N	t	\N
2023-05-23 20:10:26.05959+00	BUTTON_SCHEME_VALUE	Change the button appearance by changing its CSS class. Only for the C# App.	f	[]	experiment	f	default	\N	t	\N
2023-05-23 20:10:26.05959+00	DISABLE_CLAIMS_PAGE		f	[]	permission	f	default	\N	f	\N
2023-05-23 20:10:26.05959+00	ENABLE_PROFILE_ADMIN		f	[]	permission	f	default	\N	f	\N
2023-05-23 20:10:26.05959+00	ENABLE_PROFILE_API		f	[]	kill-switch	f	default	\N	f	\N
2023-05-23 20:10:26.05959+00	SHOW_EASTER_EGG		f	[]	release	f	default	\N	f	\N
2023-05-23 20:10:26.05959+00	SHOW_TAGS	Either show or not tags when consulting posts from the C# App.	f	[]	permission	f	default	\N	t	\N
2023-05-23 20:10:26.05959+00	ALLOW_PROFILE_MANAGEMENT	User can manage profiles	f	[]	permission	f	default	2023-05-23 21:33:27.899+00	t	\N
2023-05-23 20:10:26.05959+00	GAME_SHARK_MODE		f	[]	kill-switch	f	default	2023-05-23 21:33:27.899+00	t	\N
2023-05-23 20:10:26.05959+00	PROFILE_MANAGEMENT_BUTTON_SCHEME	It changes the button scheme in terms of color and dimension	f	[]	experiment	f	default	2023-05-23 21:33:27.899+00	t	\N
2023-05-23 20:10:26.05959+00	SHOW_PROFILES	Users can see the profiles list	f	[]	permission	f	default	2023-05-23 21:33:27.899+00	t	\N
2023-05-23 20:10:26.05959+00	TEXT_PRESENTATION		f	[]	experiment	f	default	2023-05-23 21:33:27.899+00	t	\N
2023-05-23 21:28:54.121995+00	YOU_ARE_SPECIAL_FOR_US	It will show a welcome message only for selected companies.	f	[]	experiment	f	default	2023-05-23 21:33:27.899+00	t	\N
\.


--
-- Data for Name: group_role; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.group_role (group_id, role_id, created_by, created_at, project) FROM stdin;
\.


--
-- Data for Name: group_user; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.group_user (group_id, user_id, created_by, created_at) FROM stdin;
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.groups (id, name, description, created_by, created_at, mappings_sso) FROM stdin;
\.


--
-- Data for Name: login_history; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.login_history (id, username, auth_type, created_at, successful, ip, failure_reason) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.migrations (id, name, run_on) FROM stdin;
1	/20141020151056-initial-schema	2023-05-23 18:15:57.438
2	/20141110144153-add-description-to-features	2023-05-23 18:15:57.44
3	/20141117200435-add-parameters-template-to-strategies	2023-05-23 18:15:57.442
4	/20141117202209-insert-default-strategy	2023-05-23 18:15:57.443
5	/20141118071458-default-strategy-event	2023-05-23 18:15:57.444
6	/20141215210141-005-archived-flag-to-features	2023-05-23 18:15:57.446
7	/20150210152531-006-rename-eventtype	2023-05-23 18:15:57.448
8	/20160618193924-add-strategies-to-features	2023-05-23 18:15:57.45
9	/20161027134128-create-metrics	2023-05-23 18:15:57.453
10	/20161104074441-create-client-instances	2023-05-23 18:15:57.455
11	/20161205203516-create-client-applications	2023-05-23 18:15:57.458
12	/20161212101749-better-strategy-parameter-definitions	2023-05-23 18:15:57.464
13	/20170211085502-built-in-strategies	2023-05-23 18:15:57.467
14	/20170211090541-add-default-strategies	2023-05-23 18:15:57.471
15	/20170306233934-timestamp-with-tz	2023-05-23 18:15:57.473
16	/20170628205541-add-sdk-version-to-client-instances	2023-05-23 18:15:57.474
17	/20190123204125-add-variants-to-features	2023-05-23 18:15:57.475
18	/20191023184858-flexible-rollout-strategy	2023-05-23 18:15:57.477
19	/20200102184820-create-context-fields	2023-05-23 18:15:57.481
20	/20200227202711-settings	2023-05-23 18:15:57.485
21	/20200329191251-settings-secret	2023-05-23 18:15:57.486
22	/20200416201319-create-users	2023-05-23 18:15:57.49
23	/20200429175747-users-settings	2023-05-23 18:15:57.492
24	/20200805091409-add-feature-toggle-type	2023-05-23 18:15:57.496
25	/20200805094311-add-feature-type-to-features	2023-05-23 18:15:57.497
26	/20200806091734-add-stale-flag-to-features	2023-05-23 18:15:57.499
27	/20200810200901-add-created-at-to-feature-types	2023-05-23 18:15:57.5
28	/20200928194947-add-projects	2023-05-23 18:15:57.504
29	/20200928195238-add-project-id-to-features	2023-05-23 18:15:57.505
30	/20201216140726-add-last-seen-to-features	2023-05-23 18:15:57.506
31	/20210105083014-add-tag-and-tag-types	2023-05-23 18:15:57.513
32	/20210119084617-add-addon-table	2023-05-23 18:15:57.517
33	/20210121115438-add-deprecated-column-to-strategies	2023-05-23 18:15:57.518
34	/20210127094440-add-tags-column-to-events	2023-05-23 18:15:57.519
35	/20210208203708-add-stickiness-to-context	2023-05-23 18:15:57.52
36	/20210212114759-add-session-table	2023-05-23 18:15:57.524
37	/20210217195834-rbac-tables	2023-05-23 18:15:57.531
38	/20210218090213-generate-server-identifier	2023-05-23 18:15:57.532
39	/20210302080040-add-pk-to-client-instances	2023-05-23 18:15:57.534
40	/20210304115810-change-default-timestamp-to-now	2023-05-23 18:15:57.536
41	/20210304141005-add-announce-field-to-application	2023-05-23 18:15:57.537
42	/20210304150739-add-created-by-to-application	2023-05-23 18:15:57.538
43	/20210322104356-api-tokens-table	2023-05-23 18:15:57.541
44	/20210322104357-api-tokens-convert-enterprise	2023-05-23 18:15:57.542
45	/20210323073508-reset-application-announcements	2023-05-23 18:15:57.544
46	/20210409120136-create-reset-token-table	2023-05-23 18:15:57.548
47	/20210414141220-fix-misspellings-in-role-descriptions	2023-05-23 18:15:57.55
48	/20210415173116-rbac-rename-roles	2023-05-23 18:15:57.551
49	/20210421133845-add-sort-order-to-strategies	2023-05-23 18:15:57.553
50	/20210421135405-add-display-name-and-update-description-for-strategies	2023-05-23 18:15:57.554
51	/20210423103647-lowercase-all-emails	2023-05-23 18:15:57.556
52	/20210428062103-user-permission-to-rbac	2023-05-23 18:15:57.557
53	/20210428103922-patch-role-table	2023-05-23 18:15:57.558
54	/20210428103923-onboard-projects-to-rbac	2023-05-23 18:15:57.56
55	/20210428103924-patch-admin-role-name	2023-05-23 18:15:57.561
56	/20210428103924-patch-admin_role	2023-05-23 18:15:57.563
57	/20210428103924-patch-role_permissions	2023-05-23 18:15:57.566
58	/20210504101429-deprecate-strategies	2023-05-23 18:15:57.568
59	/20210520171325-update-role-descriptions	2023-05-23 18:15:57.569
60	/20210602115555-create-feedback-table	2023-05-23 18:15:57.573
61	/20210610085817-features-strategies-table	2023-05-23 18:15:57.578
62	/20210615115226-migrate-strategies-to-feature-strategies	2023-05-23 18:15:57.58
63	/20210618091331-project-environments-table	2023-05-23 18:15:57.583
64	/20210618100913-add-cascade-for-user-feedback	2023-05-23 18:15:57.585
65	/20210624114602-change-type-of-feature-archived	2023-05-23 18:15:57.589
66	/20210624114855-drop-strategies-column-from-features	2023-05-23 18:15:57.59
67	/20210624115109-drop-enabled-column-from-features	2023-05-23 18:15:57.591
68	/20210625102126-connect-default-project-to-global-environment	2023-05-23 18:15:57.592
69	/20210629130734-add-health-rating-to-project	2023-05-23 18:15:57.593
70	/20210830113948-connect-projects-to-global-envrionments	2023-05-23 18:15:57.595
71	/20210831072631-add-sort-order-and-type-to-env	2023-05-23 18:15:57.598
72	/20210907124058-add-dbcritic-indices	2023-05-23 18:15:57.605
73	/20210907124850-add-dbcritic-primary-keys	2023-05-23 18:15:57.607
74	/20210908100701-add-enabled-to-environments	2023-05-23 18:15:57.608
75	/20210909085651-add-protected-field-to-environments	2023-05-23 18:15:57.609
76	/20210913103159-api-keys-scoping	2023-05-23 18:15:57.61
77	/20210915122001-add-project-and-environment-columns-to-events	2023-05-23 18:15:57.613
78	/20210920104218-rename-global-env-to-default-env	2023-05-23 18:15:57.615
79	/20210921105032-client-api-tokens-default	2023-05-23 18:15:57.617
80	/20210922084509-add-non-null-constraint-to-environment-type	2023-05-23 18:15:57.618
81	/20210922120521-add-tag-type-permission	2023-05-23 18:15:57.62
82	/20210928065411-remove-displayname-from-environments	2023-05-23 18:15:57.621
83	/20210928080601-add-development-and-production-environments	2023-05-23 18:15:57.622
84	/20210928082228-connect-default-environment-to-all-existing-projects	2023-05-23 18:15:57.623
85	/20211004104917-client-metrics-env	2023-05-23 18:15:57.626
86	/20211011094226-add-environment-to-client-instances	2023-05-23 18:15:57.629
87	/20211013093114-feature-strategies-parameters-not-null	2023-05-23 18:15:57.631
88	/20211029094324-set-sort-order-env	2023-05-23 18:15:57.632
89	/20211105104316-add-feature-name-column-to-events	2023-05-23 18:15:57.633
90	/20211105105509-add-predata-column-to-events	2023-05-23 18:15:57.634
91	/20211108130333-create-user-splash-table	2023-05-23 18:15:57.638
92	/20211109103930-add-splash-entry-for-users	2023-05-23 18:15:57.639
93	/20211126112551-disable-default-environment	2023-05-23 18:15:57.64
94	/20211130142314-add-updated-at-to-projects	2023-05-23 18:15:57.642
95	/20211202120808-add-custom-roles	2023-05-23 18:15:57.651
96	/20211209205201-drop-client-metrics	2023-05-23 18:15:57.653
97	/20220103134659-add-permissions-to-project-roles	2023-05-23 18:15:57.655
98	/20220103143843-add-permissions-to-editor-role	2023-05-23 18:15:57.656
99	/20220111112804-update-permission-descriptions	2023-05-23 18:15:57.658
100	/20220111115613-move-feature-toggle-permission	2023-05-23 18:15:57.659
101	/20220111120346-roles-unique-name	2023-05-23 18:15:57.661
102	/20220111121010-update-project-for-editor-role	2023-05-23 18:15:57.663
103	/20220111125620-role-permission-empty-string-for-non-environment-type	2023-05-23 18:15:57.665
104	/20220119182603-update-toggle-types-description	2023-05-23 18:15:57.666
105	/20220125200908-convert-old-feature-events	2023-05-23 18:15:57.668
106	/20220128081242-add-impressiondata-to-features	2023-05-23 18:15:57.669
107	/20220129113106-metrics-counters-as-bigint	2023-05-23 18:15:57.673
108	/20220131082150-reset-feedback-form	2023-05-23 18:15:57.674
109	/20220224081422-remove-project-column-from-roles	2023-05-23 18:15:57.675
110	/20220224111626-add-current-time-context-field	2023-05-23 18:15:57.676
111	/20220307130902-add-segments	2023-05-23 18:15:57.684
112	/20220331085057-add-api-link-table	2023-05-23 18:15:57.687
113	/20220405103233-add-segments-name-index	2023-05-23 18:15:57.689
114	/20220408081222-clean-up-duplicate-foreign-key-role-permission	2023-05-23 18:15:57.69
115	/20220411103724-add-legal-value-description	2023-05-23 18:15:57.693
116	/20220425090847-add-token-permission	2023-05-23 18:15:57.696
117	/20220511111823-patch-broken-feature-strategies	2023-05-23 18:15:57.698
118	/20220511124923-fix-patch-broken-feature-strategies	2023-05-23 18:15:57.699
119	/20220528143630-dont-cascade-environment-deletion-to-apitokens	2023-05-23 18:15:57.7
120	/20220603081324-add-archive-at-to-feature-toggle	2023-05-23 18:15:57.702
121	/20220704115624-add-user-groups	2023-05-23 18:15:57.71
122	/20220711084613-add-projects-and-environments-for-addons	2023-05-23 18:15:57.711
123	/20220808084524-add-group-permissions	2023-05-23 18:15:57.713
124	/20220808110415-add-projects-foreign-key	2023-05-23 18:15:57.714
125	/20220816121136-add-metadata-to-api-keys	2023-05-23 18:15:57.715
126	/20220817130250-alter-api-tokens	2023-05-23 18:15:57.717
127	/20220908093515-add-public-signup-tokens	2023-05-23 18:15:57.722
128	/20220912165344-pat-tokens	2023-05-23 18:15:57.725
129	/20220916093515-add-url-to-public-signup-tokens	2023-05-23 18:15:57.727
130	/20220927110212-add-enabled-to-public-signup-tokens	2023-05-23 18:15:57.728
131	/20221010114644-pat-auto-increment	2023-05-23 18:15:57.732
132	/20221011155007-add-user-groups-mappings	2023-05-23 18:15:57.733
133	/20221103111940-fix-migrations	2023-05-23 18:15:57.734
134	/20221103112200-change-request	2023-05-23 18:15:57.741
135	/20221103125732-change-request-remove-unique	2023-05-23 18:15:57.742
136	/20221104123349-change-request-approval	2023-05-23 18:15:57.745
137	/20221107121635-move-variants-to-per-environment	2023-05-23 18:15:57.75
138	/20221107132528-change-request-project-options	2023-05-23 18:15:57.752
139	/20221108114358-add-change-request-permissions	2023-05-23 18:15:57.756
140	/20221110104933-add-change-request-settings	2023-05-23 18:15:57.758
141	/20221110144113-revert-change-request-project-options	2023-05-23 18:15:57.759
142	/20221114150559-change-request-comments	2023-05-23 18:15:57.764
143	/20221115072335-add-required-approvals	2023-05-23 18:15:57.767
144	/20221121114357-add-permission-for-environment-variants	2023-05-23 18:15:57.77
145	/20221121133546-soft-delete-user	2023-05-23 18:15:57.771
146	/20221124123914-add-favorites	2023-05-23 18:15:57.775
147	/20221125185244-change-request-unique-approvals	2023-05-23 18:15:57.777
148	/20221128165141-change-request-min-approvals	2023-05-23 18:15:57.779
149	/20221205122253-skip-change-request	2023-05-23 18:15:57.78
150	/20221220160345-user-pat-permissions	2023-05-23 18:15:57.781
151	/20221221144132-service-account-users	2023-05-23 18:15:57.783
152	/20230125065315-project-stats-table	2023-05-23 18:15:57.785
153	/20230127111638-new-project-stats-field	2023-05-23 18:15:57.787
154	/20230130113337-revert-user-pat-permissions	2023-05-23 18:15:57.788
155	/20230208084046-project-api-token-permissions	2023-05-23 18:15:57.789
156	/20230208093627-assign-project-api-token-permissions-editor	2023-05-23 18:15:57.79
157	/20230208093750-assign-project-api-token-permissions-owner	2023-05-23 18:15:57.791
158	/20230208093942-assign-project-api-token-permissions-member	2023-05-23 18:15:57.792
159	/20230222084211-add-login-events-table	2023-05-23 18:15:57.795
160	/20230222154915-create-notiications-table	2023-05-23 18:15:57.801
161	/20230224093446-drop-createdBy-from-notifications-table	2023-05-23 18:15:57.803
162	/20230227115320-rename-login-events-table-to-sign-on-log	2023-05-23 18:15:57.804
163	/20230227120500-change-display-name-for-variants-per-env-permission	2023-05-23 18:15:57.805
164	/20230227123106-add-setting-for-sign-on-log-retention	2023-05-23 18:15:57.806
165	/20230302133740-rename-sign-on-log-table-to-login-history	2023-05-23 18:15:57.807
166	/20230306103400-add-project-column-to-segments	2023-05-23 18:15:57.809
167	/20230306103400-remove-direct-link-from-segment-permissions-to-admin	2023-05-23 18:15:57.812
168	/20230309174400-add-project-segment-permission	2023-05-23 18:15:57.813
169	/20230314131041-project-settings	2023-05-23 18:15:57.816
170	/20230316092547-remove-project-stats-column	2023-05-23 18:15:57.817
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.notifications (id, event_id, created_at) FROM stdin;
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.permissions (id, permission, display_name, type, created_at) FROM stdin;
1	ADMIN	Admin	root	2023-05-23 18:15:57.642809+00
2	CREATE_FEATURE	Create feature toggles	project	2023-05-23 18:15:57.642809+00
3	CREATE_STRATEGY	Create activation strategies	root	2023-05-23 18:15:57.642809+00
4	CREATE_ADDON	Create addons	root	2023-05-23 18:15:57.642809+00
5	DELETE_ADDON	Delete addons	root	2023-05-23 18:15:57.642809+00
6	UPDATE_ADDON	Update addons	root	2023-05-23 18:15:57.642809+00
7	UPDATE_FEATURE	Update feature toggles	project	2023-05-23 18:15:57.642809+00
8	DELETE_FEATURE	Delete feature toggles	project	2023-05-23 18:15:57.642809+00
9	UPDATE_APPLICATION	Update applications	root	2023-05-23 18:15:57.642809+00
10	UPDATE_TAG_TYPE	Update tag types	root	2023-05-23 18:15:57.642809+00
11	DELETE_TAG_TYPE	Delete tag types	root	2023-05-23 18:15:57.642809+00
12	CREATE_PROJECT	Create projects	root	2023-05-23 18:15:57.642809+00
13	UPDATE_PROJECT	Update project	project	2023-05-23 18:15:57.642809+00
14	DELETE_PROJECT	Delete project	project	2023-05-23 18:15:57.642809+00
15	UPDATE_STRATEGY	Update strategies	root	2023-05-23 18:15:57.642809+00
16	DELETE_STRATEGY	Delete strategies	root	2023-05-23 18:15:57.642809+00
17	UPDATE_CONTEXT_FIELD	Update context fields	root	2023-05-23 18:15:57.642809+00
18	CREATE_CONTEXT_FIELD	Create context fields	root	2023-05-23 18:15:57.642809+00
19	DELETE_CONTEXT_FIELD	Delete context fields	root	2023-05-23 18:15:57.642809+00
20	READ_ROLE	Read roles	root	2023-05-23 18:15:57.642809+00
21	UPDATE_ROLE	Update roles	root	2023-05-23 18:15:57.642809+00
22	UPDATE_API_TOKEN	Update API tokens	root	2023-05-23 18:15:57.642809+00
23	CREATE_API_TOKEN	Create API tokens	root	2023-05-23 18:15:57.642809+00
24	DELETE_API_TOKEN	Delete API tokens	root	2023-05-23 18:15:57.642809+00
25	CREATE_FEATURE_STRATEGY	Create activation strategies	environment	2023-05-23 18:15:57.642809+00
26	UPDATE_FEATURE_STRATEGY	Update activation strategies	environment	2023-05-23 18:15:57.642809+00
27	DELETE_FEATURE_STRATEGY	Delete activation strategies	environment	2023-05-23 18:15:57.642809+00
29	UPDATE_FEATURE_VARIANTS	Create/edit variants	project	2023-05-23 18:15:57.642809+00
30	MOVE_FEATURE_TOGGLE	Change feature toggle project	project	2023-05-23 18:15:57.658915+00
31	CREATE_SEGMENT	Create segments	root	2023-05-23 18:15:57.677431+00
32	UPDATE_SEGMENT	Edit segments	root	2023-05-23 18:15:57.677431+00
33	DELETE_SEGMENT	Delete segments	root	2023-05-23 18:15:57.677431+00
34	READ_API_TOKEN	Read API token	root	2023-05-23 18:15:57.694879+00
42	READ_PROJECT_API_TOKEN	Read api tokens for a specific project	project	2023-05-23 18:15:57.78884+00
43	CREATE_PROJECT_API_TOKEN	Create api tokens for a specific project	project	2023-05-23 18:15:57.78884+00
44	DELETE_PROJECT_API_TOKEN	Delete api tokens for a specific project	project	2023-05-23 18:15:57.78884+00
37	UPDATE_FEATURE_ENVIRONMENT_VARIANTS	Update variants	environment	2023-05-23 18:15:57.768679+00
28	UPDATE_FEATURE_ENVIRONMENT	Enable/disable toggles	environment	2023-05-23 18:15:57.642809+00
35	APPROVE_CHANGE_REQUEST	Approve change requests	environment	2023-05-23 18:15:57.755472+00
36	APPLY_CHANGE_REQUEST	Apply change requests	environment	2023-05-23 18:15:57.755472+00
38	SKIP_CHANGE_REQUEST	Skip change request process (API-only)	environment	2023-05-23 18:15:57.78016+00
45	UPDATE_PROJECT_SEGMENT	Create/edit project segment	project	2023-05-23 18:15:57.812917+00
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.personal_access_tokens (secret, description, user_id, expires_at, seen_at, created_at, id) FROM stdin;
\.


--
-- Data for Name: project_environments; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.project_environments (project_id, environment_name) FROM stdin;
default	development
default	production
\.


--
-- Data for Name: project_settings; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.project_settings (project, default_stickiness, project_mode) FROM stdin;
\.


--
-- Data for Name: project_stats; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.project_stats (project, avg_time_to_prod_current_window, project_changes_current_window, project_changes_past_window, features_created_current_window, features_created_past_window, features_archived_current_window, features_archived_past_window, project_members_added_current_window) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.projects (id, name, description, created_at, health, updated_at) FROM stdin;
default	Default	Default project	2023-05-23 18:15:57.501305	100	2023-05-23 21:15:57.861+00
\.


--
-- Data for Name: public_signup_tokens; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.public_signup_tokens (secret, name, expires_at, created_at, created_by, role_id, url, enabled) FROM stdin;
\.


--
-- Data for Name: public_signup_tokens_user; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.public_signup_tokens_user (secret, user_id, created_at) FROM stdin;
\.


--
-- Data for Name: reset_tokens; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.reset_tokens (reset_token, user_id, expires_at, used_at, created_at, created_by) FROM stdin;
\.


--
-- Data for Name: role_permission; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.role_permission (role_id, created_at, permission_id, environment) FROM stdin;
4	2023-05-23 18:15:57.654458+00	25	development
4	2023-05-23 18:15:57.654458+00	26	development
4	2023-05-23 18:15:57.654458+00	27	development
4	2023-05-23 18:15:57.654458+00	28	development
4	2023-05-23 18:15:57.654458+00	25	production
4	2023-05-23 18:15:57.654458+00	26	production
4	2023-05-23 18:15:57.654458+00	27	production
4	2023-05-23 18:15:57.654458+00	28	production
4	2023-05-23 18:15:57.654458+00	25	default
4	2023-05-23 18:15:57.654458+00	26	default
4	2023-05-23 18:15:57.654458+00	27	default
4	2023-05-23 18:15:57.654458+00	28	default
5	2023-05-23 18:15:57.654458+00	25	development
5	2023-05-23 18:15:57.654458+00	26	development
5	2023-05-23 18:15:57.654458+00	27	development
5	2023-05-23 18:15:57.654458+00	28	development
5	2023-05-23 18:15:57.654458+00	25	production
5	2023-05-23 18:15:57.654458+00	26	production
5	2023-05-23 18:15:57.654458+00	27	production
5	2023-05-23 18:15:57.654458+00	28	production
5	2023-05-23 18:15:57.654458+00	25	default
5	2023-05-23 18:15:57.654458+00	26	default
5	2023-05-23 18:15:57.654458+00	27	default
5	2023-05-23 18:15:57.654458+00	28	default
2	2023-05-23 18:15:57.656254+00	25	development
2	2023-05-23 18:15:57.656254+00	26	development
2	2023-05-23 18:15:57.656254+00	27	development
2	2023-05-23 18:15:57.656254+00	28	development
2	2023-05-23 18:15:57.656254+00	25	production
2	2023-05-23 18:15:57.656254+00	26	production
2	2023-05-23 18:15:57.656254+00	27	production
2	2023-05-23 18:15:57.656254+00	28	production
2	2023-05-23 18:15:57.656254+00	25	default
2	2023-05-23 18:15:57.656254+00	26	default
2	2023-05-23 18:15:57.656254+00	27	default
2	2023-05-23 18:15:57.656254+00	28	default
2	2023-05-23 18:15:57.642809+00	2	
2	2023-05-23 18:15:57.642809+00	3	
2	2023-05-23 18:15:57.642809+00	4	
2	2023-05-23 18:15:57.642809+00	5	
2	2023-05-23 18:15:57.642809+00	6	
2	2023-05-23 18:15:57.642809+00	7	
2	2023-05-23 18:15:57.642809+00	8	
2	2023-05-23 18:15:57.642809+00	9	
2	2023-05-23 18:15:57.642809+00	10	
2	2023-05-23 18:15:57.642809+00	11	
2	2023-05-23 18:15:57.642809+00	12	
2	2023-05-23 18:15:57.642809+00	13	
2	2023-05-23 18:15:57.642809+00	14	
2	2023-05-23 18:15:57.642809+00	15	
2	2023-05-23 18:15:57.642809+00	16	
2	2023-05-23 18:15:57.642809+00	17	
2	2023-05-23 18:15:57.642809+00	18	
2	2023-05-23 18:15:57.642809+00	19	
2	2023-05-23 18:15:57.642809+00	29	
4	2023-05-23 18:15:57.642809+00	2	
4	2023-05-23 18:15:57.642809+00	7	
4	2023-05-23 18:15:57.642809+00	8	
4	2023-05-23 18:15:57.642809+00	13	
4	2023-05-23 18:15:57.642809+00	14	
4	2023-05-23 18:15:57.642809+00	29	
5	2023-05-23 18:15:57.642809+00	2	
5	2023-05-23 18:15:57.642809+00	7	
5	2023-05-23 18:15:57.642809+00	8	
5	2023-05-23 18:15:57.642809+00	29	
1	2023-05-23 18:15:57.642809+00	1	
2	2023-05-23 18:15:57.658915+00	30	
4	2023-05-23 18:15:57.658915+00	30	
2	2023-05-23 18:15:57.677431+00	31	\N
2	2023-05-23 18:15:57.677431+00	32	\N
2	2023-05-23 18:15:57.677431+00	33	\N
2	2023-05-23 18:15:57.694879+00	34	\N
1	2023-05-23 18:15:57.694879+00	34	\N
4	2023-05-23 18:15:57.768679+00	37	development
4	2023-05-23 18:15:57.768679+00	37	production
4	2023-05-23 18:15:57.768679+00	37	default
5	2023-05-23 18:15:57.768679+00	37	development
5	2023-05-23 18:15:57.768679+00	37	production
5	2023-05-23 18:15:57.768679+00	37	default
2	2023-05-23 18:15:57.768679+00	37	development
2	2023-05-23 18:15:57.768679+00	37	production
2	2023-05-23 18:15:57.768679+00	37	default
2	2023-05-23 18:15:57.789773+00	42	\N
2	2023-05-23 18:15:57.789773+00	43	\N
2	2023-05-23 18:15:57.789773+00	44	\N
4	2023-05-23 18:15:57.790752+00	42	\N
4	2023-05-23 18:15:57.790752+00	43	\N
4	2023-05-23 18:15:57.790752+00	44	\N
5	2023-05-23 18:15:57.791691+00	42	\N
5	2023-05-23 18:15:57.791691+00	43	\N
5	2023-05-23 18:15:57.791691+00	44	\N
\.


--
-- Data for Name: role_user; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.role_user (role_id, user_id, created_at, project) FROM stdin;
1	1	2023-05-23 18:15:58.171658+00	default
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.roles (id, name, description, type, created_at, updated_at) FROM stdin;
4	Owner	Users with this role have full control over the project, and can add and manage other users within the project context, manage feature toggles within the project, and control advanced project features like archiving and deleting the project.	project	2023-05-23 18:15:57.558782+00	\N
5	Member	Users with this role within a project are allowed to view, create and update feature toggles, but have limited permissions in regards to managing the projects user access and can not archive or delete the project.	project	2023-05-23 18:15:57.558782+00	\N
2	Editor	Users with the editor role have access to most features in Unleash, but can not manage users and roles in the global scope. Editors will be added as project owner when creating projects and get superuser rights within the context of these projects.	root	2023-05-23 18:15:57.525457+00	\N
1	Admin	Users with the global admin role have superuser access to Unleash and can perform any operation within the unleash platform.	root	2023-05-23 18:15:57.525457+00	\N
3	Viewer	Users with this role can only read root resources in Unleash. The viewer can be added to specific projects as project member. Viewers may not view API tokens.	root	2023-05-23 18:15:57.525457+00	\N
\.


--
-- Data for Name: segments; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.segments (id, name, description, created_by, created_at, constraints, segment_project_id) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.settings (name, content) FROM stdin;
unleash.secret	"0ac4510a1d9bd46fade89f7f01950fff50dbbb9e"
instanceInfo	{"id" : "34dead87-a054-4b13-ac26-cece70bdf038"}
login_history_retention	{"hours": 336}
\.


--
-- Data for Name: strategies; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.strategies (created_at, name, description, parameters, built_in, deprecated, sort_order, display_name) FROM stdin;
2023-05-23 18:15:57.442683+00	default	The standard strategy is strictly on / off for your entire userbase.	[]	1	f	0	Standard
2023-05-23 18:15:57.476271+00	flexibleRollout	Roll out to a percentage of your userbase, and ensure that the experience is the same for the user on each visit.	[{"name":"rollout","type":"percentage","description":"","required":false},{"name":"stickiness","type":"string","description":"Used define stickiness. Possible values: default, userId, sessionId, random","required":true},{"name":"groupId","type":"string","description":"Used to define a activation groups, which allows you to correlate across feature toggles.","required":true}]	1	f	1	Gradual rollout
2023-05-23 18:15:57.467973+00	userWithId	Enable the feature for a specific set of userIds.	[{"name":"userIds","type":"list","description":"","required":false}]	1	f	2	UserIDs
2023-05-23 18:15:57.467973+00	remoteAddress	Enable the feature for a specific set of IP addresses.	[{"name":"IPs","type":"list","description":"List of IPs to enable the feature toggle for.","required":true}]	1	f	3	IPs
2023-05-23 18:15:57.467973+00	applicationHostname	Enable the feature for a specific set of hostnames.	[{"name":"hostNames","type":"list","description":"List of hostnames to enable the feature toggle for.","required":false}]	1	f	4	Hosts
2023-05-23 18:15:57.467973+00	gradualRolloutRandom	Randomly activate the feature toggle. No stickiness.	[{"name":"percentage","type":"percentage","description":"","required":false}]	0	t	9999	\N
2023-05-23 18:15:57.467973+00	gradualRolloutSessionId	Gradually activate feature toggle. Stickiness based on session id.	[{"name":"percentage","type":"percentage","description":"","required":false},{"name":"groupId","type":"string","description":"Used to define a activation groups, which allows you to correlate across feature toggles.","required":true}]	0	t	9999	\N
2023-05-23 18:15:57.467973+00	gradualRolloutUserId	Gradually activate feature toggle for logged in users. Stickiness based on user id.	[{"name":"percentage","type":"percentage","description":"","required":false},{"name":"groupId","type":"string","description":"Used to define a activation groups, which allows you to correlate across feature toggles.","required":true}]	0	t	9999	\N
\.


--
-- Data for Name: tag_types; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.tag_types (name, description, icon, created_at) FROM stdin;
simple	Used to simplify filtering of features	#	2023-05-23 18:15:57.506815+00
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.tags (type, value, created_at) FROM stdin;
\.


--
-- Data for Name: unleash_session; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.unleash_session (sid, sess, created_at, expired) FROM stdin;
u7xDmzgpkhEi6xLzaws7S0bG7HzilxI9	{"cookie":{"originalMaxAge":172800000,"expires":"2023-05-25T20:07:27.949Z","secure":false,"httpOnly":true,"path":"/"},"user":{"isAPI":false,"accountType":"User","id":1,"username":"admin","imageUrl":"https://gravatar.com/avatar/21232f297a57a5a743894a0e4a801fc3?size=42&default=retro","seenAt":null,"loginAttempts":0,"createdAt":"2023-05-23T18:15:58.056Z"}}	2023-05-23 20:07:27.950548+00	2023-05-25 21:44:40.663+00
\.


--
-- Data for Name: user_feedback; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.user_feedback (user_id, feedback_id, given, nevershow) FROM stdin;
\.


--
-- Data for Name: user_notifications; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.user_notifications (notification_id, user_id, read_at) FROM stdin;
\.


--
-- Data for Name: user_splash; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.user_splash (user_id, splash_id, seen) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: unleash
--

COPY public.users (id, name, username, email, image_url, password_hash, login_attempts, created_at, seen_at, settings, permissions, deleted_at, is_service) FROM stdin;
1	\N	admin	\N	\N	$2a$10$QIcSl4tehWcNe.5axCWKzu5Yld.CvGnrOeeVRGMTg5SAzk3qI.Rq.	0	2023-05-23 18:15:58.056967	2023-05-23 20:07:27.937	\N	[]	\N	f
\.


--
-- Name: addons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.addons_id_seq', 1, false);


--
-- Name: change_request_approvals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.change_request_approvals_id_seq', 1, false);


--
-- Name: change_request_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.change_request_comments_id_seq', 1, false);


--
-- Name: change_request_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.change_request_events_id_seq', 1, false);


--
-- Name: change_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.change_requests_id_seq', 1, false);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.events_id_seq', 55, true);


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.groups_id_seq', 1, false);


--
-- Name: login_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.login_events_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.migrations_id_seq', 170, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.permissions_id_seq', 45, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.roles_id_seq', 5, true);


--
-- Name: segments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.segments_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unleash
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: addons addons_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.addons
    ADD CONSTRAINT addons_pkey PRIMARY KEY (id);


--
-- Name: api_tokens api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.api_tokens
    ADD CONSTRAINT api_tokens_pkey PRIMARY KEY (secret);


--
-- Name: change_request_approvals change_request_approvals_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_approvals
    ADD CONSTRAINT change_request_approvals_pkey PRIMARY KEY (id);


--
-- Name: change_request_comments change_request_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_comments
    ADD CONSTRAINT change_request_comments_pkey PRIMARY KEY (id);


--
-- Name: change_request_events change_request_events_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_events
    ADD CONSTRAINT change_request_events_pkey PRIMARY KEY (id);


--
-- Name: change_request_settings change_request_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_settings
    ADD CONSTRAINT change_request_settings_pkey PRIMARY KEY (project, environment);


--
-- Name: change_request_settings change_request_settings_project_environment_key; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_settings
    ADD CONSTRAINT change_request_settings_project_environment_key UNIQUE (project, environment);


--
-- Name: change_requests change_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_pkey PRIMARY KEY (id);


--
-- Name: client_applications client_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.client_applications
    ADD CONSTRAINT client_applications_pkey PRIMARY KEY (app_name);


--
-- Name: client_instances client_instances_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.client_instances
    ADD CONSTRAINT client_instances_pkey PRIMARY KEY (app_name, environment, instance_id);


--
-- Name: client_metrics_env client_metrics_env_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.client_metrics_env
    ADD CONSTRAINT client_metrics_env_pkey PRIMARY KEY (feature_name, app_name, environment, "timestamp");


--
-- Name: context_fields context_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.context_fields
    ADD CONSTRAINT context_fields_pkey PRIMARY KEY (name);


--
-- Name: environments environments_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.environments
    ADD CONSTRAINT environments_pkey PRIMARY KEY (name);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: favorite_features favorite_features_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.favorite_features
    ADD CONSTRAINT favorite_features_pkey PRIMARY KEY (feature, user_id);


--
-- Name: favorite_projects favorite_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.favorite_projects
    ADD CONSTRAINT favorite_projects_pkey PRIMARY KEY (project, user_id);


--
-- Name: feature_environments feature_environments_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_environments
    ADD CONSTRAINT feature_environments_pkey PRIMARY KEY (environment, feature_name);


--
-- Name: feature_strategies feature_strategies_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_strategies
    ADD CONSTRAINT feature_strategies_pkey PRIMARY KEY (id);


--
-- Name: feature_strategy_segment feature_strategy_segment_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_strategy_segment
    ADD CONSTRAINT feature_strategy_segment_pkey PRIMARY KEY (feature_strategy_id, segment_id);


--
-- Name: feature_tag feature_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_tag
    ADD CONSTRAINT feature_tag_pkey PRIMARY KEY (feature_name, tag_type, tag_value);


--
-- Name: feature_types feature_types_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_types
    ADD CONSTRAINT feature_types_pkey PRIMARY KEY (id);


--
-- Name: features features_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (name);


--
-- Name: group_role group_role_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.group_role
    ADD CONSTRAINT group_role_pkey PRIMARY KEY (group_id, role_id, project);


--
-- Name: group_user group_user_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.group_user
    ADD CONSTRAINT group_user_pkey PRIMARY KEY (group_id, user_id);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: login_history login_events_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.login_history
    ADD CONSTRAINT login_events_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: project_environments project_environments_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.project_environments
    ADD CONSTRAINT project_environments_pkey PRIMARY KEY (project_id, environment_name);


--
-- Name: project_settings project_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.project_settings
    ADD CONSTRAINT project_settings_pkey PRIMARY KEY (project);


--
-- Name: project_stats project_stats_project_key; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.project_stats
    ADD CONSTRAINT project_stats_project_key UNIQUE (project);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: public_signup_tokens public_signup_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.public_signup_tokens
    ADD CONSTRAINT public_signup_tokens_pkey PRIMARY KEY (secret);


--
-- Name: public_signup_tokens_user public_signup_tokens_user_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.public_signup_tokens_user
    ADD CONSTRAINT public_signup_tokens_user_pkey PRIMARY KEY (secret, user_id);


--
-- Name: reset_tokens reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.reset_tokens
    ADD CONSTRAINT reset_tokens_pkey PRIMARY KEY (reset_token);


--
-- Name: role_user role_user_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_pkey PRIMARY KEY (role_id, user_id, project);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: segments segments_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.segments
    ADD CONSTRAINT segments_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (name);


--
-- Name: strategies strategies_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.strategies
    ADD CONSTRAINT strategies_pkey PRIMARY KEY (name);


--
-- Name: tag_types tag_types_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.tag_types
    ADD CONSTRAINT tag_types_pkey PRIMARY KEY (name);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (type, value);


--
-- Name: change_request_approvals unique_approvals; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_approvals
    ADD CONSTRAINT unique_approvals UNIQUE (change_request_id, created_by);


--
-- Name: roles unique_name; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: unleash_session unleash_session_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.unleash_session
    ADD CONSTRAINT unleash_session_pkey PRIMARY KEY (sid);


--
-- Name: user_feedback user_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.user_feedback
    ADD CONSTRAINT user_feedback_pkey PRIMARY KEY (user_id, feedback_id);


--
-- Name: user_notifications user_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.user_notifications
    ADD CONSTRAINT user_notifications_pkey PRIMARY KEY (notification_id, user_id);


--
-- Name: user_splash user_splash_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.user_splash
    ADD CONSTRAINT user_splash_pkey PRIMARY KEY (user_id, splash_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: client_instances_environment_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX client_instances_environment_idx ON public.client_instances USING btree (environment);


--
-- Name: events_environment_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX events_environment_idx ON public.events USING btree (environment);


--
-- Name: events_project_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX events_project_idx ON public.events USING btree (project);


--
-- Name: feature_environments_feature_name_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX feature_environments_feature_name_idx ON public.feature_environments USING btree (feature_name);


--
-- Name: feature_name_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX feature_name_idx ON public.events USING btree (feature_name);


--
-- Name: feature_strategies_environment_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX feature_strategies_environment_idx ON public.feature_strategies USING btree (environment);


--
-- Name: feature_strategies_feature_name_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX feature_strategies_feature_name_idx ON public.feature_strategies USING btree (feature_name);


--
-- Name: feature_strategy_segment_segment_id_index; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX feature_strategy_segment_segment_id_index ON public.feature_strategy_segment USING btree (segment_id);


--
-- Name: feature_tag_tag_type_and_value_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX feature_tag_tag_type_and_value_idx ON public.feature_tag USING btree (tag_type, tag_value);


--
-- Name: idx_client_metrics_f_name; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX idx_client_metrics_f_name ON public.client_metrics_env USING btree (feature_name);


--
-- Name: idx_unleash_session_expired; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX idx_unleash_session_expired ON public.unleash_session USING btree (expired);


--
-- Name: login_events_ip_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX login_events_ip_idx ON public.login_history USING btree (ip);


--
-- Name: project_environments_environment_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX project_environments_environment_idx ON public.project_environments USING btree (environment_name);


--
-- Name: reset_tokens_user_id_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX reset_tokens_user_id_idx ON public.reset_tokens USING btree (user_id);


--
-- Name: role_permission_role_id_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX role_permission_role_id_idx ON public.role_permission USING btree (role_id);


--
-- Name: role_user_user_id_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX role_user_user_id_idx ON public.role_user USING btree (user_id);


--
-- Name: segments_name_index; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX segments_name_index ON public.segments USING btree (name);


--
-- Name: user_feedback_user_id_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX user_feedback_user_id_idx ON public.user_feedback USING btree (user_id);


--
-- Name: user_splash_user_id_idx; Type: INDEX; Schema: public; Owner: unleash
--

CREATE INDEX user_splash_user_id_idx ON public.user_splash USING btree (user_id);


--
-- Name: api_token_project api_token_project_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.api_token_project
    ADD CONSTRAINT api_token_project_project_fkey FOREIGN KEY (project) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: api_token_project api_token_project_secret_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.api_token_project
    ADD CONSTRAINT api_token_project_secret_fkey FOREIGN KEY (secret) REFERENCES public.api_tokens(secret) ON DELETE CASCADE;


--
-- Name: change_request_approvals change_request_approvals_change_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_approvals
    ADD CONSTRAINT change_request_approvals_change_request_id_fkey FOREIGN KEY (change_request_id) REFERENCES public.change_requests(id) ON DELETE CASCADE;


--
-- Name: change_request_approvals change_request_approvals_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_approvals
    ADD CONSTRAINT change_request_approvals_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: change_request_comments change_request_comments_change_request_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_comments
    ADD CONSTRAINT change_request_comments_change_request_fkey FOREIGN KEY (change_request) REFERENCES public.change_requests(id) ON DELETE CASCADE;


--
-- Name: change_request_comments change_request_comments_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_comments
    ADD CONSTRAINT change_request_comments_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: change_request_events change_request_events_change_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_events
    ADD CONSTRAINT change_request_events_change_request_id_fkey FOREIGN KEY (change_request_id) REFERENCES public.change_requests(id) ON DELETE CASCADE;


--
-- Name: change_request_events change_request_events_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_events
    ADD CONSTRAINT change_request_events_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: change_request_events change_request_events_feature_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_events
    ADD CONSTRAINT change_request_events_feature_fkey FOREIGN KEY (feature) REFERENCES public.features(name) ON DELETE CASCADE;


--
-- Name: change_request_settings change_request_settings_environment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_settings
    ADD CONSTRAINT change_request_settings_environment_fkey FOREIGN KEY (environment) REFERENCES public.environments(name) ON DELETE CASCADE;


--
-- Name: change_request_settings change_request_settings_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_request_settings
    ADD CONSTRAINT change_request_settings_project_fkey FOREIGN KEY (project) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: change_requests change_requests_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: change_requests change_requests_environment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_environment_fkey FOREIGN KEY (environment) REFERENCES public.environments(name) ON DELETE CASCADE;


--
-- Name: change_requests change_requests_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.change_requests
    ADD CONSTRAINT change_requests_project_fkey FOREIGN KEY (project) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: favorite_features favorite_features_feature_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.favorite_features
    ADD CONSTRAINT favorite_features_feature_fkey FOREIGN KEY (feature) REFERENCES public.features(name) ON DELETE CASCADE;


--
-- Name: favorite_features favorite_features_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.favorite_features
    ADD CONSTRAINT favorite_features_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: favorite_projects favorite_projects_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.favorite_projects
    ADD CONSTRAINT favorite_projects_project_fkey FOREIGN KEY (project) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: favorite_projects favorite_projects_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.favorite_projects
    ADD CONSTRAINT favorite_projects_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: feature_environments feature_environments_environment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_environments
    ADD CONSTRAINT feature_environments_environment_fkey FOREIGN KEY (environment) REFERENCES public.environments(name) ON DELETE CASCADE;


--
-- Name: feature_environments feature_environments_feature_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_environments
    ADD CONSTRAINT feature_environments_feature_name_fkey FOREIGN KEY (feature_name) REFERENCES public.features(name) ON DELETE CASCADE;


--
-- Name: feature_strategies feature_strategies_environment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_strategies
    ADD CONSTRAINT feature_strategies_environment_fkey FOREIGN KEY (environment) REFERENCES public.environments(name) ON DELETE CASCADE;


--
-- Name: feature_strategies feature_strategies_feature_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_strategies
    ADD CONSTRAINT feature_strategies_feature_name_fkey FOREIGN KEY (feature_name) REFERENCES public.features(name) ON DELETE CASCADE;


--
-- Name: feature_strategy_segment feature_strategy_segment_feature_strategy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_strategy_segment
    ADD CONSTRAINT feature_strategy_segment_feature_strategy_id_fkey FOREIGN KEY (feature_strategy_id) REFERENCES public.feature_strategies(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: feature_strategy_segment feature_strategy_segment_segment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_strategy_segment
    ADD CONSTRAINT feature_strategy_segment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES public.segments(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: feature_tag feature_tag_feature_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_tag
    ADD CONSTRAINT feature_tag_feature_name_fkey FOREIGN KEY (feature_name) REFERENCES public.features(name) ON DELETE CASCADE;


--
-- Name: feature_tag feature_tag_tag_type_tag_value_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.feature_tag
    ADD CONSTRAINT feature_tag_tag_type_tag_value_fkey FOREIGN KEY (tag_type, tag_value) REFERENCES public.tags(type, value) ON DELETE CASCADE;


--
-- Name: group_role fk_group_role_project; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.group_role
    ADD CONSTRAINT fk_group_role_project FOREIGN KEY (project) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: group_role group_role_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.group_role
    ADD CONSTRAINT group_role_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id) ON DELETE CASCADE;


--
-- Name: group_role group_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.group_role
    ADD CONSTRAINT group_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: group_user group_user_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.group_user
    ADD CONSTRAINT group_user_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id) ON DELETE CASCADE;


--
-- Name: group_user group_user_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.group_user
    ADD CONSTRAINT group_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: notifications notifications_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;


--
-- Name: personal_access_tokens personal_access_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: project_environments project_environments_environment_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.project_environments
    ADD CONSTRAINT project_environments_environment_name_fkey FOREIGN KEY (environment_name) REFERENCES public.environments(name) ON DELETE CASCADE;


--
-- Name: project_environments project_environments_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.project_environments
    ADD CONSTRAINT project_environments_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_settings project_settings_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.project_settings
    ADD CONSTRAINT project_settings_project_fkey FOREIGN KEY (project) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_stats project_stats_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.project_stats
    ADD CONSTRAINT project_stats_project_fkey FOREIGN KEY (project) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: public_signup_tokens public_signup_tokens_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.public_signup_tokens
    ADD CONSTRAINT public_signup_tokens_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: public_signup_tokens_user public_signup_tokens_user_secret_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.public_signup_tokens_user
    ADD CONSTRAINT public_signup_tokens_user_secret_fkey FOREIGN KEY (secret) REFERENCES public.public_signup_tokens(secret) ON DELETE CASCADE;


--
-- Name: public_signup_tokens_user public_signup_tokens_user_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.public_signup_tokens_user
    ADD CONSTRAINT public_signup_tokens_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: reset_tokens reset_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.reset_tokens
    ADD CONSTRAINT reset_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: role_permission role_permission_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.role_permission
    ADD CONSTRAINT role_permission_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: role_user role_user_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: role_user role_user_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: segments segments_segment_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.segments
    ADD CONSTRAINT segments_segment_project_id_fkey FOREIGN KEY (segment_project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: tags tags_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_type_fkey FOREIGN KEY (type) REFERENCES public.tag_types(name) ON DELETE CASCADE;


--
-- Name: user_feedback user_feedback_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.user_feedback
    ADD CONSTRAINT user_feedback_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_notifications user_notifications_notification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.user_notifications
    ADD CONSTRAINT user_notifications_notification_id_fkey FOREIGN KEY (notification_id) REFERENCES public.notifications(id) ON DELETE CASCADE;


--
-- Name: user_notifications user_notifications_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.user_notifications
    ADD CONSTRAINT user_notifications_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_splash user_splash_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: unleash
--

ALTER TABLE ONLY public.user_splash
    ADD CONSTRAINT user_splash_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

