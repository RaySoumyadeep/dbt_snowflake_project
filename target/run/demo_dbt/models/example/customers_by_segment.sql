

      create or replace transient table ANALYTICS.PUBLIC.customers_by_segment  as
      (
select
    c_mktsegment as market_segment
    , count(c_custkey) as number_of_customers
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
group by c_mktsegment
      );
    