# ----------------------------------------------------------
#  driver: mysql, generated: 2008-05-07 00:18:08
# ----------------------------------------------------------
# ----------------------------------------------------------
#  create table valid
# ----------------------------------------------------------
CREATE TABLE valid (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (50) NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table ticket_priority
# ----------------------------------------------------------
CREATE TABLE ticket_priority (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (50) NOT NULL,
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table ticket_type
# ----------------------------------------------------------
CREATE TABLE ticket_type (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (50) NOT NULL,
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table ticket_lock_type
# ----------------------------------------------------------
CREATE TABLE ticket_lock_type (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (50) NOT NULL,
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table system_user
# ----------------------------------------------------------
CREATE TABLE system_user (
    id INTEGER NOT NULL AUTO_INCREMENT,
    login VARCHAR (100) NOT NULL,
    pw VARCHAR (50) NOT NULL,
    salutation VARCHAR (50),
    first_name VARCHAR (100) NOT NULL,
    last_name VARCHAR (100) NOT NULL,
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (login)
);
# ----------------------------------------------------------
#  create table user_preferences
# ----------------------------------------------------------
CREATE TABLE user_preferences (
    user_id INTEGER NOT NULL,
    preferences_key VARCHAR (150) NOT NULL,
    preferences_value VARCHAR (250),
    INDEX user_preferences_user_id (user_id)
);
# ----------------------------------------------------------
#  create table groups
# ----------------------------------------------------------
CREATE TABLE groups (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table group_user
# ----------------------------------------------------------
CREATE TABLE group_user (
    user_id INTEGER NOT NULL,
    group_id INTEGER NOT NULL,
    permission_key VARCHAR (20) NOT NULL,
    permission_value SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    INDEX group_user_group_id (group_id),
    INDEX group_user_user_id (user_id)
);
# ----------------------------------------------------------
#  create table group_role
# ----------------------------------------------------------
CREATE TABLE group_role (
    role_id INTEGER NOT NULL,
    group_id INTEGER NOT NULL,
    permission_key VARCHAR (20) NOT NULL,
    permission_value SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    INDEX group_role_role_id (role_id),
    INDEX group_role_group_id (group_id)
);
# ----------------------------------------------------------
#  create table group_customer_user
# ----------------------------------------------------------
CREATE TABLE group_customer_user (
    user_id VARCHAR (100) NOT NULL,
    group_id INTEGER NOT NULL,
    permission_key VARCHAR (20) NOT NULL,
    permission_value SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    INDEX group_customer_user_group_id (group_id),
    INDEX group_customer_user_id (user_id)
);
# ----------------------------------------------------------
#  create table roles
# ----------------------------------------------------------
CREATE TABLE roles (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table role_user
# ----------------------------------------------------------
CREATE TABLE role_user (
    user_id INTEGER NOT NULL,
    role_id INTEGER NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    INDEX role_user_role_id (role_id),
    INDEX role_user_user_id (user_id)
);
# ----------------------------------------------------------
#  create table personal_queues
# ----------------------------------------------------------
CREATE TABLE personal_queues (
    user_id INTEGER NOT NULL,
    queue_id INTEGER NOT NULL,
    INDEX personal_queues_queue_id (queue_id),
    INDEX personal_queues_user_id (user_id)
);
# ----------------------------------------------------------
#  create table theme
# ----------------------------------------------------------
CREATE TABLE theme (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    theme VARCHAR (100) NOT NULL,
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (theme)
);
# ----------------------------------------------------------
#  create table ticket_state
# ----------------------------------------------------------
CREATE TABLE ticket_state (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    comments VARCHAR (250),
    type_id SMALLINT NOT NULL,
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table ticket_state_type
# ----------------------------------------------------------
CREATE TABLE ticket_state_type (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (120) NOT NULL,
    comments VARCHAR (250),
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table salutation
# ----------------------------------------------------------
CREATE TABLE salutation (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    text TEXT NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table signature
# ----------------------------------------------------------
CREATE TABLE signature (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    text TEXT NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table system_address
# ----------------------------------------------------------
CREATE TABLE system_address (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    value0 VARCHAR (200) NOT NULL,
    value1 VARCHAR (200) NOT NULL,
    value2 VARCHAR (200),
    value3 VARCHAR (200),
    queue_id INTEGER NOT NULL,
    comments VARCHAR (200),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id)
);
# ----------------------------------------------------------
#  create table follow_up_possible
# ----------------------------------------------------------
CREATE TABLE follow_up_possible (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table queue
# ----------------------------------------------------------
CREATE TABLE queue (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    group_id INTEGER NOT NULL,
    unlock_timeout INTEGER,
    first_response_time INTEGER,
    first_response_notify SMALLINT,
    update_time INTEGER,
    update_notify SMALLINT,
    solution_time INTEGER,
    solution_notify SMALLINT,
    system_address_id SMALLINT NOT NULL,
    calendar_name VARCHAR (100),
    default_sign_key VARCHAR (100),
    salutation_id SMALLINT NOT NULL,
    signature_id SMALLINT NOT NULL,
    follow_up_id SMALLINT NOT NULL,
    follow_up_lock SMALLINT NOT NULL,
    move_notify SMALLINT NOT NULL,
    state_notify SMALLINT NOT NULL,
    lock_notify SMALLINT NOT NULL,
    owner_notify SMALLINT NOT NULL,
    comments VARCHAR (200),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name),
    INDEX queue_group_id (group_id)
);
# ----------------------------------------------------------
#  create table queue_preferences
# ----------------------------------------------------------
CREATE TABLE queue_preferences (
    queue_id INTEGER NOT NULL,
    preferences_key VARCHAR (150) NOT NULL,
    preferences_value VARCHAR (250),
    INDEX queue_preferences_queue_id (queue_id)
);
# ----------------------------------------------------------
#  create table ticket
# ----------------------------------------------------------
CREATE TABLE ticket (
    id BIGINT NOT NULL AUTO_INCREMENT,
    tn VARCHAR (50) NOT NULL,
    title VARCHAR (255),
    queue_id INTEGER NOT NULL,
    ticket_lock_id SMALLINT NOT NULL,
    ticket_answered SMALLINT NOT NULL,
    type_id SMALLINT,
    service_id INTEGER,
    sla_id INTEGER,
    user_id INTEGER NOT NULL,
    responsible_user_id INTEGER NOT NULL,
    group_id INTEGER NOT NULL,
    ticket_priority_id SMALLINT NOT NULL,
    ticket_state_id SMALLINT NOT NULL,
    group_read SMALLINT,
    group_write SMALLINT,
    other_read SMALLINT,
    other_write SMALLINT,
    customer_id VARCHAR (150),
    customer_user_id VARCHAR (250),
    timeout INTEGER,
    until_time INTEGER,
    escalation_start_time INTEGER NOT NULL,
    escalation_response_time INTEGER NOT NULL,
    escalation_solution_time INTEGER NOT NULL,
    freekey1 VARCHAR (80),
    freetext1 VARCHAR (150),
    freekey2 VARCHAR (80),
    freetext2 VARCHAR (150),
    freekey3 VARCHAR (80),
    freetext3 VARCHAR (150),
    freekey4 VARCHAR (80),
    freetext4 VARCHAR (150),
    freekey5 VARCHAR (80),
    freetext5 VARCHAR (150),
    freekey6 VARCHAR (80),
    freetext6 VARCHAR (150),
    freekey7 VARCHAR (80),
    freetext7 VARCHAR (150),
    freekey8 VARCHAR (80),
    freetext8 VARCHAR (150),
    freekey9 VARCHAR (80),
    freetext9 VARCHAR (150),
    freekey10 VARCHAR (80),
    freetext10 VARCHAR (150),
    freekey11 VARCHAR (80),
    freetext11 VARCHAR (150),
    freekey12 VARCHAR (80),
    freetext12 VARCHAR (150),
    freekey13 VARCHAR (80),
    freetext13 VARCHAR (150),
    freekey14 VARCHAR (80),
    freetext14 VARCHAR (150),
    freekey15 VARCHAR (80),
    freetext15 VARCHAR (150),
    freekey16 VARCHAR (80),
    freetext16 VARCHAR (150),
    freetime1 DATETIME,
    freetime2 DATETIME,
    freetime3 DATETIME,
    freetime4 DATETIME,
    freetime5 DATETIME,
    freetime6 DATETIME,
    valid_id SMALLINT NOT NULL,
    create_time_unix BIGINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (tn),
    INDEX ticket_ticket_state_id (ticket_state_id),
    INDEX ticket_ticket_priority_id (ticket_priority_id),
    INDEX ticket_user_id (user_id),
    INDEX ticket_customer_id (customer_id),
    INDEX ticket_answered (ticket_answered),
    INDEX ticket_type_id (type_id),
    INDEX ticket_queue_view (ticket_state_id, ticket_lock_id, group_id),
    INDEX ticket_responsible_user_id (responsible_user_id),
    INDEX ticket_customer_user_id (customer_user_id),
    INDEX ticket_ticket_lock_id (lock_id),
    INDEX ticket_title (title),
    INDEX ticket_queue_id (queue_id)
);
# ----------------------------------------------------------
#  create table object_link
# ----------------------------------------------------------
CREATE TABLE object_link (
    object_link_a_id VARCHAR (80) NOT NULL,
    object_link_b_id VARCHAR (80) NOT NULL,
    object_link_a_object VARCHAR (200) NOT NULL,
    object_link_b_object VARCHAR (200) NOT NULL,
    object_link_type VARCHAR (200) NOT NULL,
    INDEX object_link_b_object (object_link_b_object),
    INDEX object_link_b_id (object_link_b_id),
    INDEX object_link_type (object_link_type),
    INDEX object_link_a_object (object_link_a_object),
    INDEX object_link_a_id (object_link_a_id)
);
# ----------------------------------------------------------
#  create table ticket_history
# ----------------------------------------------------------
CREATE TABLE ticket_history (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    history_type_id SMALLINT NOT NULL,
    ticket_id BIGINT NOT NULL,
    article_id BIGINT,
    type_id SMALLINT NOT NULL,
    queue_id INTEGER NOT NULL,
    owner_id INTEGER NOT NULL,
    priority_id SMALLINT NOT NULL,
    state_id SMALLINT NOT NULL,
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    INDEX ticket_history_history_type_id (history_type_id),
    INDEX ticket_history_owner_id (owner_id),
    INDEX ticket_history_ticket_id (ticket_id),
    INDEX ticket_history_priority_id (priority_id, priority_id),
    INDEX ticket_history_create_time (create_time),
    INDEX ticket_history_queue_id (queue_id),
    INDEX ticket_history_state_id (state_id),
    INDEX ticket_history_type_id (type_id)
);
# ----------------------------------------------------------
#  create table ticket_history_type
# ----------------------------------------------------------
CREATE TABLE ticket_history_type (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table article_type
# ----------------------------------------------------------
CREATE TABLE article_type (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table article_sender_type
# ----------------------------------------------------------
CREATE TABLE article_sender_type (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table article_flag
# ----------------------------------------------------------
CREATE TABLE article_flag (
    article_id BIGINT NOT NULL,
    article_flag VARCHAR (50) NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    INDEX article_flag_create_by (create_by),
    INDEX article_flag_article_id (article_id)
);
# ----------------------------------------------------------
#  create table article
# ----------------------------------------------------------
CREATE TABLE article (
    id BIGINT NOT NULL AUTO_INCREMENT,
    ticket_id BIGINT NOT NULL,
    article_type_id SMALLINT NOT NULL,
    article_sender_type_id SMALLINT NOT NULL,
    a_from TEXT,
    a_reply_to TEXT,
    a_to TEXT,
    a_cc TEXT,
    a_subject TEXT,
    a_message_id TEXT,
    a_content_type VARCHAR (250),
    a_body MEDIUMTEXT NOT NULL,
    incoming_time INTEGER NOT NULL,
    content_path VARCHAR (250),
    a_freekey1 VARCHAR (250),
    a_freetext1 VARCHAR (250),
    a_freekey2 VARCHAR (250),
    a_freetext2 VARCHAR (250),
    a_freekey3 VARCHAR (250),
    a_freetext3 VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    INDEX article_article_sender_type_id (article_sender_type_id),
    INDEX article_message_id (a_message_id(255)),
    INDEX article_article_type_id (article_type_id),
    INDEX article_ticket_id (ticket_id)
);
# ----------------------------------------------------------
#  create table article_plain
# ----------------------------------------------------------
CREATE TABLE article_plain (
    id BIGINT NOT NULL AUTO_INCREMENT,
    article_id BIGINT NOT NULL,
    body LONGBLOB NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    INDEX article_plain_article_id (article_id)
);
# ----------------------------------------------------------
#  create table article_attachment
# ----------------------------------------------------------
CREATE TABLE article_attachment (
    id BIGINT NOT NULL AUTO_INCREMENT,
    article_id BIGINT NOT NULL,
    filename VARCHAR (250),
    content_size VARCHAR (30),
    content_type VARCHAR (250),
    content LONGBLOB NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    INDEX article_attachment_article_id (article_id)
);
# ----------------------------------------------------------
#  create table standard_response
# ----------------------------------------------------------
CREATE TABLE standard_response (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (80) NOT NULL,
    text TEXT,
    comments VARCHAR (100),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table queue_standard_response
# ----------------------------------------------------------
CREATE TABLE queue_standard_response (
    queue_id INTEGER NOT NULL,
    standard_response_id INTEGER NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL
);
# ----------------------------------------------------------
#  create table standard_attachment
# ----------------------------------------------------------
CREATE TABLE standard_attachment (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (150) NOT NULL,
    content_type VARCHAR (150) NOT NULL,
    content LONGBLOB NOT NULL,
    filename VARCHAR (250) NOT NULL,
    comments VARCHAR (200),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table standard_response_attachment
# ----------------------------------------------------------
CREATE TABLE standard_response_attachment (
    id INTEGER NOT NULL AUTO_INCREMENT,
    standard_attachment_id INTEGER NOT NULL,
    standard_response_id INTEGER NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id)
);
# ----------------------------------------------------------
#  create table auto_response_type
# ----------------------------------------------------------
CREATE TABLE auto_response_type (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (50) NOT NULL,
    comments VARCHAR (200),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table auto_response
# ----------------------------------------------------------
CREATE TABLE auto_response (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    text0 TEXT,
    text1 TEXT,
    text2 TEXT,
    type_id SMALLINT NOT NULL,
    system_address_id SMALLINT NOT NULL,
    charset VARCHAR (80) NOT NULL,
    comments VARCHAR (100),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table queue_auto_response
# ----------------------------------------------------------
CREATE TABLE queue_auto_response (
    id INTEGER NOT NULL AUTO_INCREMENT,
    queue_id INTEGER NOT NULL,
    auto_response_id INTEGER NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id)
);
# ----------------------------------------------------------
#  create table time_accounting
# ----------------------------------------------------------
CREATE TABLE time_accounting (
    id BIGINT NOT NULL AUTO_INCREMENT,
    ticket_id BIGINT NOT NULL,
    article_id BIGINT,
    time_unit DECIMAL (10,2) NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    INDEX time_accounting_ticket_id (ticket_id)
);
# ----------------------------------------------------------
#  create table ticket_watcher
# ----------------------------------------------------------
CREATE TABLE ticket_watcher (
    ticket_id BIGINT NOT NULL,
    user_id INTEGER NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    INDEX ticket_watcher_ticket_id (ticket_id),
    INDEX ticket_watcher_user_id (user_id)
);
# ----------------------------------------------------------
#  create table service
# ----------------------------------------------------------
CREATE TABLE service (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    valid_id SMALLINT NOT NULL,
    comments VARCHAR (200),
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table service_customer_user
# ----------------------------------------------------------
CREATE TABLE service_customer_user (
    customer_user_login VARCHAR (100) NOT NULL,
    service_id INTEGER NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    INDEX service_customer_user_customer_user_login (customer_user_login(10)),
    INDEX service_customer_user_service_id (service_id)
);
# ----------------------------------------------------------
#  create table sla
# ----------------------------------------------------------
CREATE TABLE sla (
    id INTEGER NOT NULL AUTO_INCREMENT,
    service_id INTEGER NOT NULL,
    name VARCHAR (200) NOT NULL,
    calendar_name VARCHAR (100),
    first_response_time INTEGER NOT NULL,
    first_response_notify SMALLINT,
    update_time INTEGER NOT NULL,
    update_notify SMALLINT,
    solution_time INTEGER NOT NULL,
    solution_notify SMALLINT,
    valid_id SMALLINT NOT NULL,
    comments VARCHAR (200),
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table sessions
# ----------------------------------------------------------
CREATE TABLE sessions (
    session_id VARCHAR (150) NOT NULL,
    session_value TEXT NOT NULL,
    PRIMARY KEY(session_id),
    INDEX sessions_session_id (session_id)
);
# ----------------------------------------------------------
#  create table ticket_index
# ----------------------------------------------------------
CREATE TABLE ticket_index (
    ticket_id BIGINT NOT NULL,
    queue_id INTEGER NOT NULL,
    queue VARCHAR (70) NOT NULL,
    group_id INTEGER NOT NULL,
    s_lock VARCHAR (70) NOT NULL,
    s_state VARCHAR (70) NOT NULL,
    create_time_unix BIGINT NOT NULL,
    INDEX ticket_index_group_id (group_id),
    INDEX ticket_index_ticket_id (ticket_id),
    INDEX ticket_index_queue_id (queue_id)
);
# ----------------------------------------------------------
#  create table ticket_lock_index
# ----------------------------------------------------------
CREATE TABLE ticket_lock_index (
    ticket_id BIGINT NOT NULL,
    INDEX ticket_lock_index_ticket_id (ticket_id)
);
# ----------------------------------------------------------
#  create table customer_user
# ----------------------------------------------------------
CREATE TABLE customer_user (
    id INTEGER NOT NULL AUTO_INCREMENT,
    login VARCHAR (100) NOT NULL,
    email VARCHAR (150) NOT NULL,
    customer_id VARCHAR (200) NOT NULL,
    pw VARCHAR (50),
    salutation VARCHAR (50),
    first_name VARCHAR (100) NOT NULL,
    last_name VARCHAR (100) NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE INDEX (login)
);
# ----------------------------------------------------------
#  create table customer_preferences
# ----------------------------------------------------------
CREATE TABLE customer_preferences (
    user_id VARCHAR (250) NOT NULL,
    preferences_key VARCHAR (150) NOT NULL,
    preferences_value VARCHAR (250),
    INDEX customer_preferences_user_id (user_id)
);
# ----------------------------------------------------------
#  create table customer_company
# ----------------------------------------------------------
CREATE TABLE customer_company (
    customer_id VARCHAR (100) NOT NULL,
    name VARCHAR (100) NOT NULL,
    street VARCHAR (200),
    zip VARCHAR (200),
    city VARCHAR (200),
    country VARCHAR (200),
    url VARCHAR (200),
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    UNIQUE INDEX (customer_id),
    UNIQUE INDEX (name)
);
# ----------------------------------------------------------
#  create table ticket_loop_protection
# ----------------------------------------------------------
CREATE TABLE ticket_loop_protection (
    sent_to VARCHAR (250) NOT NULL,
    sent_date VARCHAR (150) NOT NULL,
    INDEX ticket_loop_protection_sent_to (sent_to),
    INDEX ticket_loop_protection_sent_date (sent_date)
);
# ----------------------------------------------------------
#  create table mail_account
# ----------------------------------------------------------
CREATE TABLE mail_account (
    id INTEGER NOT NULL AUTO_INCREMENT,
    login VARCHAR (200) NOT NULL,
    pw VARCHAR (200) NOT NULL,
    host VARCHAR (200) NOT NULL,
    account_type VARCHAR (20) NOT NULL,
    queue_id INTEGER NOT NULL,
    trusted SMALLINT NOT NULL,
    comments VARCHAR (250),
    valid_id SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id)
);
# ----------------------------------------------------------
#  create table postmaster_filter
# ----------------------------------------------------------
CREATE TABLE postmaster_filter (
    f_name VARCHAR (200) NOT NULL,
    f_type VARCHAR (20) NOT NULL,
    f_key VARCHAR (200) NOT NULL,
    f_value VARCHAR (200) NOT NULL,
    INDEX postmaster_filter_f_name (f_name)
);
# ----------------------------------------------------------
#  create table generic_agent_jobs
# ----------------------------------------------------------
CREATE TABLE generic_agent_jobs (
    job_name VARCHAR (200) NOT NULL,
    job_key VARCHAR (200) NOT NULL,
    job_value VARCHAR (200),
    INDEX generic_agent_job_name (job_name)
);
# ----------------------------------------------------------
#  create table search_profile
# ----------------------------------------------------------
CREATE TABLE search_profile (
    login VARCHAR (200) NOT NULL,
    profile_name VARCHAR (200) NOT NULL,
    profile_type VARCHAR (30) NOT NULL,
    profile_key VARCHAR (200) NOT NULL,
    profile_value VARCHAR (200),
    INDEX search_profile_login_name (login, profile_name)
);
# ----------------------------------------------------------
#  create table process_id
# ----------------------------------------------------------
CREATE TABLE process_id (
    process_name VARCHAR (200) NOT NULL,
    process_id VARCHAR (200) NOT NULL,
    process_host VARCHAR (200) NOT NULL,
    process_create INTEGER NOT NULL
);
# ----------------------------------------------------------
#  create table web_upload_cache
# ----------------------------------------------------------
CREATE TABLE web_upload_cache (
    form_id VARCHAR (250),
    filename VARCHAR (250),
    content_size VARCHAR (30),
    content_type VARCHAR (250),
    content LONGBLOB NOT NULL,
    create_time_unix BIGINT NOT NULL
);
# ----------------------------------------------------------
#  create table notifications
# ----------------------------------------------------------
CREATE TABLE notifications (
    id INTEGER NOT NULL AUTO_INCREMENT,
    notification_type VARCHAR (200) NOT NULL,
    notification_charset VARCHAR (60) NOT NULL,
    notification_language VARCHAR (60) NOT NULL,
    subject VARCHAR (200) NOT NULL,
    text TEXT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id)
);
# ----------------------------------------------------------
#  create table xml_storage
# ----------------------------------------------------------
CREATE TABLE xml_storage (
    xml_type VARCHAR (200) NOT NULL,
    xml_key VARCHAR (250) NOT NULL,
    xml_content_key VARCHAR (250) NOT NULL,
    xml_content_value MEDIUMTEXT,
    INDEX xml_storage_xml_content_key (xml_content_key(100)),
    INDEX xml_storage_key_type (xml_key(10), xml_type(10))
);
# ----------------------------------------------------------
#  create table package_repository
# ----------------------------------------------------------
CREATE TABLE package_repository (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (250) NOT NULL,
    version VARCHAR (250) NOT NULL,
    vendor VARCHAR (250) NOT NULL,
    install_status VARCHAR (250) NOT NULL,
    filename VARCHAR (250),
    content_size VARCHAR (30),
    content_type VARCHAR (250),
    content LONGBLOB NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id)
);
