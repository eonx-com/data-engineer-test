DROP SCHEMA IF EXISTS rewards CASCADE;
DROP SCHEMA IF EXISTS payment_gateway CASCADE;
DROP SCHEMA IF EXISTS gift_card_solutions CASCADE;

CREATE SCHEMA rewards;
CREATE SCHEMA payment_gateway;
CREATE SCHEMA gift_card_solutions;


CREATE TABLE rewards.users
(
    id                        BIGINT       NOT NULL ENCODE AZ64,
    email                     VARCHAR(765) NOT NULL,
    username                  VARCHAR(765),
    provider_id               BIGINT ENCODE AZ64,
    first_name                VARCHAR(765),
    last_name                 VARCHAR(765),
    mobile                    VARCHAR(150),
    eonx_payments_customer_id VARCHAR(765),
    created_at                TIMESTAMP ENCODE AZ64
);


CREATE TABLE rewards.providers
(
    id                   BIGINT       NOT NULL ENCODE AZ64,
    name                 VARCHAR(765) NOT NULL,
    active               SMALLINT     NOT NULL ENCODE AZ64,
    subdomain            VARCHAR(765) NOT NULL,
    favicon              VARCHAR(765),
    payments_provider_id VARCHAR(48)  NOT NULL,
    created_at           TIMESTAMP ENCODE AZ64
);



CREATE TABLE rewards.user_ewallets
(
    id              BIGINT       NOT NULL ENCODE AZ64,
    user_id         BIGINT       NOT NULL ENCODE AZ64,
    reference       VARCHAR(765) NOT NULL,
    created_at      TIMESTAMP ENCODE AZ64
);


CREATE TABLE payment_gateway.ewallets
(
    id          VARCHAR(108) NOT NULL,
    currency_id VARCHAR(9)   NOT NULL,
    provider_id VARCHAR(108) NOT NULL,
    customer_id VARCHAR(108),
    reference   VARCHAR(765) NOT NULL,
    created_at  TIMESTAMP    NOT NULL ENCODE AZ64
);


CREATE TABLE payment_gateway.providers
(
    id                   VARCHAR(108)   NOT NULL,
    name                 VARCHAR(765)   NOT NULL,
    statement_descriptor VARCHAR(765)   NOT NULL,
    status               VARCHAR(765)   NOT NULL,
    tags                 VARCHAR(32768) NOT NULL,
    timezone             VARCHAR(765)   NOT NULL,
    created_at           TIMESTAMP      NOT NULL ENCODE AZ64
);


CREATE TABLE payment_gateway.customers
(
    id          VARCHAR(108) NOT NULL,
    provider_id VARCHAR(108) NOT NULL,
    email       VARCHAR(765),
    external_id VARCHAR(765) NOT NULL,
    first_name  VARCHAR(765) NOT NULL,
    last_name   VARCHAR(765) NOT NULL,
    status      VARCHAR(765) NOT NULL,
    created_at  TIMESTAMP    NOT NULL ENCODE AZ64
);


CREATE TABLE payment_gateway.transactions
(
    id                   VARCHAR(108) NOT NULL,
    action               VARCHAR(765) NOT NULL,
    direction            VARCHAR(765) NOT NULL,
    final_amount         BIGINT       NOT NULL ENCODE AZ64,
    payment_method_id    VARCHAR(108) NOT NULL,
    payment_method_type  VARCHAR(765) NOT NULL,
    reference            VARCHAR(765),
    statement_descriptor VARCHAR(765) NOT NULL,
    status               VARCHAR(765) NOT NULL,
    provider_id          VARCHAR(108) NOT NULL,
    created_at           TIMESTAMP    NOT NULL ENCODE AZ64
);
