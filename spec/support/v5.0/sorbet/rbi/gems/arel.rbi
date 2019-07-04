# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/arel/all/arel.rbi
#
# arel-7.1.4
module Arel
  def self.sql(raw_sql); end
  def self.star; end
end
module Arel::Crud
  def compile_delete; end
  def compile_insert(values); end
  def compile_update(values, pk); end
  def create_insert; end
end
module Arel::FactoryMethods
  def create_and(clauses); end
  def create_false; end
  def create_join(to, constraint = nil, klass = nil); end
  def create_on(expr); end
  def create_string_join(to); end
  def create_table_alias(relation, name); end
  def create_true; end
  def grouping(expr); end
  def lower(column); end
end
module Arel::Expressions
  def average; end
  def count(distinct = nil); end
  def extract(field); end
  def maximum; end
  def minimum; end
  def sum; end
end
module Arel::Predications
  def between(other); end
  def concat(other); end
  def does_not_match(other, escape = nil, case_sensitive = nil); end
  def does_not_match_all(others, escape = nil); end
  def does_not_match_any(others, escape = nil); end
  def does_not_match_regexp(other, case_sensitive = nil); end
  def eq(other); end
  def eq_all(others); end
  def eq_any(others); end
  def equals_quoted?(maybe_quoted, value); end
  def grouping_all(method_id, others, *extras); end
  def grouping_any(method_id, others, *extras); end
  def gt(right); end
  def gt_all(others); end
  def gt_any(others); end
  def gteq(right); end
  def gteq_all(others); end
  def gteq_any(others); end
  def in(other); end
  def in_all(others); end
  def in_any(others); end
  def lt(right); end
  def lt_all(others); end
  def lt_any(others); end
  def lteq(right); end
  def lteq_all(others); end
  def lteq_any(others); end
  def matches(other, escape = nil, case_sensitive = nil); end
  def matches_all(others, escape = nil, case_sensitive = nil); end
  def matches_any(others, escape = nil, case_sensitive = nil); end
  def matches_regexp(other, case_sensitive = nil); end
  def not_between(other); end
  def not_eq(other); end
  def not_eq_all(others); end
  def not_eq_any(others); end
  def not_in(other); end
  def not_in_all(others); end
  def not_in_any(others); end
  def quoted_array(others); end
  def quoted_node(other); end
  def when(right); end
end
module Arel::WindowPredications
  def over(expr = nil); end
end
module Arel::Math
  def &(other); end
  def *(other); end
  def +(other); end
  def -(other); end
  def /(other); end
  def <<(other); end
  def >>(other); end
  def ^(other); end
  def |(other); end
  def ~; end
end
module Arel::AliasPredication
  def as(other); end
end
module Arel::OrderPredications
  def asc; end
  def desc; end
end
class Arel::Table
  def ==(other); end
  def [](name); end
  def able_to_type_cast?; end
  def alias(name = nil); end
  def attributes_for(columns); end
  def eql?(other); end
  def from; end
  def group(*columns); end
  def hash; end
  def having(expr); end
  def initialize(name, as: nil, type_caster: nil); end
  def join(relation, klass = nil); end
  def name; end
  def name=(arg0); end
  def order(*expr); end
  def outer_join(relation); end
  def project(*things); end
  def self.engine; end
  def self.engine=(arg0); end
  def skip(amount); end
  def table_alias; end
  def table_alias=(arg0); end
  def table_name; end
  def take(amount); end
  def type_cast_for_database(attribute_name, value); end
  def type_caster; end
  def where(condition); end
  include Arel::Crud
  include Arel::FactoryMethods
end
module Arel::Attributes
  def self.for(column); end
end
class Anonymous_Struct_13 < Struct
  def name; end
  def name=(_); end
  def relation; end
  def relation=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Arel::Attributes::Attribute < Anonymous_Struct_13
  def able_to_type_cast?; end
  def lower; end
  def type_cast_for_database(value); end
  include Arel::AliasPredication
  include Arel::Expressions
  include Arel::Math
  include Arel::OrderPredications
  include Arel::Predications
end
class Arel::Attributes::String < Arel::Attributes::Attribute
end
class Arel::Attributes::Time < Arel::Attributes::Attribute
end
class Arel::Attributes::Boolean < Arel::Attributes::Attribute
end
class Arel::Attributes::Decimal < Arel::Attributes::Attribute
end
class Arel::Attributes::Float < Arel::Attributes::Attribute
end
class Arel::Attributes::Integer < Arel::Attributes::Attribute
end
class Arel::Attributes::Undefined < Arel::Attributes::Attribute
end
module Arel::Compatibility
end
class Arel::Compatibility::Wheres
  def each; end
  def initialize(engine, collection); end
  include Enumerable
end
module Arel::Compatibility::Wheres::Value
  def name; end
  def value; end
  def visitor; end
  def visitor=(arg0); end
end
module Arel::Visitors
end
class Arel::Visitors::Visitor
  def accept(object); end
  def dispatch; end
  def get_dispatch_cache; end
  def initialize; end
  def self.dispatch_cache; end
  def visit(object); end
end
class Arel::Visitors::DepthFirst < Arel::Visitors::Visitor
  def binary(o); end
  def function(o); end
  def get_dispatch_cache; end
  def initialize(block = nil); end
  def nary(o); end
  def terminal(o); end
  def unary(o); end
  def visit(o); end
  def visit_ActiveSupport_Multibyte_Chars(o); end
  def visit_ActiveSupport_StringInquirer(o); end
  def visit_Arel_Attribute(o); end
  def visit_Arel_Attributes_Attribute(o); end
  def visit_Arel_Attributes_Boolean(o); end
  def visit_Arel_Attributes_Decimal(o); end
  def visit_Arel_Attributes_Float(o); end
  def visit_Arel_Attributes_Integer(o); end
  def visit_Arel_Attributes_String(o); end
  def visit_Arel_Attributes_Time(o); end
  def visit_Arel_Nodes_And(o); end
  def visit_Arel_Nodes_As(o); end
  def visit_Arel_Nodes_Ascending(o); end
  def visit_Arel_Nodes_Assignment(o); end
  def visit_Arel_Nodes_Avg(o); end
  def visit_Arel_Nodes_Between(o); end
  def visit_Arel_Nodes_BindParam(o); end
  def visit_Arel_Nodes_Case(o); end
  def visit_Arel_Nodes_Concat(o); end
  def visit_Arel_Nodes_Count(o); end
  def visit_Arel_Nodes_Cube(o); end
  def visit_Arel_Nodes_DeleteStatement(o); end
  def visit_Arel_Nodes_Descending(o); end
  def visit_Arel_Nodes_DoesNotMatch(o); end
  def visit_Arel_Nodes_Else(o); end
  def visit_Arel_Nodes_Equality(o); end
  def visit_Arel_Nodes_Exists(o); end
  def visit_Arel_Nodes_False(o); end
  def visit_Arel_Nodes_FullOuterJoin(o); end
  def visit_Arel_Nodes_GreaterThan(o); end
  def visit_Arel_Nodes_GreaterThanOrEqual(o); end
  def visit_Arel_Nodes_Group(o); end
  def visit_Arel_Nodes_Grouping(o); end
  def visit_Arel_Nodes_GroupingElement(o); end
  def visit_Arel_Nodes_GroupingSet(o); end
  def visit_Arel_Nodes_Having(o); end
  def visit_Arel_Nodes_In(o); end
  def visit_Arel_Nodes_InfixOperation(o); end
  def visit_Arel_Nodes_InnerJoin(o); end
  def visit_Arel_Nodes_InsertStatement(o); end
  def visit_Arel_Nodes_JoinSource(o); end
  def visit_Arel_Nodes_LessThan(o); end
  def visit_Arel_Nodes_LessThanOrEqual(o); end
  def visit_Arel_Nodes_Limit(o); end
  def visit_Arel_Nodes_Lock(o); end
  def visit_Arel_Nodes_Matches(o); end
  def visit_Arel_Nodes_Max(o); end
  def visit_Arel_Nodes_Min(o); end
  def visit_Arel_Nodes_NamedFunction(o); end
  def visit_Arel_Nodes_Node(o); end
  def visit_Arel_Nodes_Not(o); end
  def visit_Arel_Nodes_NotEqual(o); end
  def visit_Arel_Nodes_NotIn(o); end
  def visit_Arel_Nodes_NotRegexp(o); end
  def visit_Arel_Nodes_Offset(o); end
  def visit_Arel_Nodes_On(o); end
  def visit_Arel_Nodes_Or(o); end
  def visit_Arel_Nodes_Ordering(o); end
  def visit_Arel_Nodes_OuterJoin(o); end
  def visit_Arel_Nodes_Regexp(o); end
  def visit_Arel_Nodes_RightOuterJoin(o); end
  def visit_Arel_Nodes_RollUp(o); end
  def visit_Arel_Nodes_SelectCore(o); end
  def visit_Arel_Nodes_SelectStatement(o); end
  def visit_Arel_Nodes_SqlLiteral(o); end
  def visit_Arel_Nodes_StringJoin(o); end
  def visit_Arel_Nodes_Sum(o); end
  def visit_Arel_Nodes_TableAlias(o); end
  def visit_Arel_Nodes_Top(o); end
  def visit_Arel_Nodes_True(o); end
  def visit_Arel_Nodes_UnqualifiedColumn(o); end
  def visit_Arel_Nodes_UpdateStatement(o); end
  def visit_Arel_Nodes_Values(o); end
  def visit_Arel_Nodes_When(o); end
  def visit_Arel_Nodes_Window(o); end
  def visit_Arel_Table(o); end
  def visit_Array(o); end
  def visit_BigDecimal(o); end
  def visit_Bignum(o); end
  def visit_Class(o); end
  def visit_Date(o); end
  def visit_DateTime(o); end
  def visit_FalseClass(o); end
  def visit_Fixnum(o); end
  def visit_Float(o); end
  def visit_Hash(o); end
  def visit_Integer(o); end
  def visit_NilClass(o); end
  def visit_Set(o); end
  def visit_String(o); end
  def visit_Symbol(o); end
  def visit_Time(o); end
  def visit_TrueClass(o); end
end
class Arel::Visitors::Reduce < Arel::Visitors::Visitor
  def accept(object, collector); end
  def visit(object, collector); end
end
class Arel::Visitors::UnsupportedVisitError < StandardError
  def initialize(object); end
end
class Arel::Visitors::ToSql < Arel::Visitors::Reduce
  def aggregate(name, o, collector); end
  def build_subselect(key, o); end
  def collect_nodes_for(nodes, collector, spacer, connector = nil); end
  def column_cache(table); end
  def column_for(attr); end
  def compile(node, &block); end
  def infix_value(o, collector, value); end
  def initialize(connection); end
  def inject_join(list, collector, join_str); end
  def literal(o, collector); end
  def maybe_visit(thing, collector); end
  def print_type_cast_deprecation; end
  def quote(value, column = nil); end
  def quote_column_name(name); end
  def quote_table_name(name); end
  def quoted(o, a); end
  def schema_cache; end
  def table_exists?(name); end
  def unsupported(o, collector); end
  def visit_ActiveSupport_Multibyte_Chars(o, collector); end
  def visit_ActiveSupport_StringInquirer(o, collector); end
  def visit_Arel_Attributes_Attribute(o, collector); end
  def visit_Arel_Attributes_Boolean(o, collector); end
  def visit_Arel_Attributes_Decimal(o, collector); end
  def visit_Arel_Attributes_Float(o, collector); end
  def visit_Arel_Attributes_Integer(o, collector); end
  def visit_Arel_Attributes_String(o, collector); end
  def visit_Arel_Attributes_Time(o, collector); end
  def visit_Arel_Nodes_Addition(o, collector); end
  def visit_Arel_Nodes_And(o, collector); end
  def visit_Arel_Nodes_As(o, collector); end
  def visit_Arel_Nodes_Ascending(o, collector); end
  def visit_Arel_Nodes_Assignment(o, collector); end
  def visit_Arel_Nodes_Avg(o, collector); end
  def visit_Arel_Nodes_Between(o, collector); end
  def visit_Arel_Nodes_Bin(o, collector); end
  def visit_Arel_Nodes_BindParam(o, collector); end
  def visit_Arel_Nodes_Case(o, collector); end
  def visit_Arel_Nodes_Casted(o, collector); end
  def visit_Arel_Nodes_Count(o, collector); end
  def visit_Arel_Nodes_CurrentRow(o, collector); end
  def visit_Arel_Nodes_DeleteStatement(o, collector); end
  def visit_Arel_Nodes_Descending(o, collector); end
  def visit_Arel_Nodes_Distinct(o, collector); end
  def visit_Arel_Nodes_DistinctOn(o, collector); end
  def visit_Arel_Nodes_Division(o, collector); end
  def visit_Arel_Nodes_DoesNotMatch(o, collector); end
  def visit_Arel_Nodes_Else(o, collector); end
  def visit_Arel_Nodes_Equality(o, collector); end
  def visit_Arel_Nodes_Except(o, collector); end
  def visit_Arel_Nodes_Exists(o, collector); end
  def visit_Arel_Nodes_Extract(o, collector); end
  def visit_Arel_Nodes_False(o, collector); end
  def visit_Arel_Nodes_Following(o, collector); end
  def visit_Arel_Nodes_FullOuterJoin(o, collector); end
  def visit_Arel_Nodes_GreaterThan(o, collector); end
  def visit_Arel_Nodes_GreaterThanOrEqual(o, collector); end
  def visit_Arel_Nodes_Group(o, collector); end
  def visit_Arel_Nodes_Grouping(o, collector); end
  def visit_Arel_Nodes_In(o, collector); end
  def visit_Arel_Nodes_InfixOperation(o, collector); end
  def visit_Arel_Nodes_InnerJoin(o, collector); end
  def visit_Arel_Nodes_InsertStatement(o, collector); end
  def visit_Arel_Nodes_Intersect(o, collector); end
  def visit_Arel_Nodes_JoinSource(o, collector); end
  def visit_Arel_Nodes_LessThan(o, collector); end
  def visit_Arel_Nodes_LessThanOrEqual(o, collector); end
  def visit_Arel_Nodes_Limit(o, collector); end
  def visit_Arel_Nodes_Lock(o, collector); end
  def visit_Arel_Nodes_Matches(o, collector); end
  def visit_Arel_Nodes_Max(o, collector); end
  def visit_Arel_Nodes_Min(o, collector); end
  def visit_Arel_Nodes_Multiplication(o, collector); end
  def visit_Arel_Nodes_NamedFunction(o, collector); end
  def visit_Arel_Nodes_NamedWindow(o, collector); end
  def visit_Arel_Nodes_Not(o, collector); end
  def visit_Arel_Nodes_NotEqual(o, collector); end
  def visit_Arel_Nodes_NotIn(o, collector); end
  def visit_Arel_Nodes_NotRegexp(o, collector); end
  def visit_Arel_Nodes_Offset(o, collector); end
  def visit_Arel_Nodes_On(o, collector); end
  def visit_Arel_Nodes_Or(o, collector); end
  def visit_Arel_Nodes_OuterJoin(o, collector); end
  def visit_Arel_Nodes_Over(o, collector); end
  def visit_Arel_Nodes_Preceding(o, collector); end
  def visit_Arel_Nodes_Quoted(o, collector); end
  def visit_Arel_Nodes_Range(o, collector); end
  def visit_Arel_Nodes_Regexp(o, collector); end
  def visit_Arel_Nodes_RightOuterJoin(o, collector); end
  def visit_Arel_Nodes_Rows(o, collector); end
  def visit_Arel_Nodes_SelectCore(o, collector); end
  def visit_Arel_Nodes_SelectOptions(o, collector); end
  def visit_Arel_Nodes_SelectStatement(o, collector); end
  def visit_Arel_Nodes_SqlLiteral(o, collector); end
  def visit_Arel_Nodes_StringJoin(o, collector); end
  def visit_Arel_Nodes_Subtraction(o, collector); end
  def visit_Arel_Nodes_Sum(o, collector); end
  def visit_Arel_Nodes_TableAlias(o, collector); end
  def visit_Arel_Nodes_Top(o, collector); end
  def visit_Arel_Nodes_True(o, collector); end
  def visit_Arel_Nodes_UnaryOperation(o, collector); end
  def visit_Arel_Nodes_Union(o, collector); end
  def visit_Arel_Nodes_UnionAll(o, collector); end
  def visit_Arel_Nodes_UnqualifiedColumn(o, collector); end
  def visit_Arel_Nodes_UpdateStatement(o, collector); end
  def visit_Arel_Nodes_Values(o, collector); end
  def visit_Arel_Nodes_When(o, collector); end
  def visit_Arel_Nodes_Window(o, collector); end
  def visit_Arel_Nodes_With(o, collector); end
  def visit_Arel_Nodes_WithRecursive(o, collector); end
  def visit_Arel_SelectManager(o, collector); end
  def visit_Arel_Table(o, collector); end
  def visit_Array(o, collector); end
  def visit_BigDecimal(o, collector); end
  def visit_Bignum(o, collector); end
  def visit_Class(o, collector); end
  def visit_Date(o, collector); end
  def visit_DateTime(o, collector); end
  def visit_FalseClass(o, collector); end
  def visit_Fixnum(o, collector); end
  def visit_Float(o, collector); end
  def visit_Hash(o, collector); end
  def visit_Integer(o, collector); end
  def visit_NilClass(o, collector); end
  def visit_Set(o, collector); end
  def visit_String(o, collector); end
  def visit_Symbol(o, collector); end
  def visit_Time(o, collector); end
  def visit_TrueClass(o, collector); end
end
class Arel::Visitors::SQLite < Arel::Visitors::ToSql
  def visit_Arel_Nodes_False(o, collector); end
  def visit_Arel_Nodes_Lock(o, collector); end
  def visit_Arel_Nodes_SelectStatement(o, collector); end
  def visit_Arel_Nodes_True(o, collector); end
end
class Arel::Visitors::PostgreSQL < Arel::Visitors::ToSql
  def grouping_array_or_grouping_element(o, collector); end
  def visit_Arel_Nodes_BindParam(o, collector); end
  def visit_Arel_Nodes_Cube(o, collector); end
  def visit_Arel_Nodes_DistinctOn(o, collector); end
  def visit_Arel_Nodes_DoesNotMatch(o, collector); end
  def visit_Arel_Nodes_GroupingElement(o, collector); end
  def visit_Arel_Nodes_GroupingSet(o, collector); end
  def visit_Arel_Nodes_Matches(o, collector); end
  def visit_Arel_Nodes_NotRegexp(o, collector); end
  def visit_Arel_Nodes_Regexp(o, collector); end
  def visit_Arel_Nodes_RollUp(o, collector); end
end
class Arel::Visitors::MySQL < Arel::Visitors::ToSql
  def visit_Arel_Nodes_Bin(o, collector); end
  def visit_Arel_Nodes_Concat(o, collector); end
  def visit_Arel_Nodes_SelectCore(o, collector); end
  def visit_Arel_Nodes_SelectStatement(o, collector); end
  def visit_Arel_Nodes_Union(o, collector, suppress_parens = nil); end
  def visit_Arel_Nodes_UpdateStatement(o, collector); end
end
class Arel::Visitors::MSSQL < Arel::Visitors::ToSql
  def determine_order_by(orders, x); end
  def find_left_table_pk(o); end
  def find_primary_key(o); end
  def get_offset_limit_clause(o); end
  def initialize(*arg0); end
  def row_num_literal(order_by); end
  def select_count?(x); end
  def visit_Arel_Nodes_DeleteStatement(o, collector); end
  def visit_Arel_Nodes_SelectStatement(o, collector); end
  def visit_Arel_Nodes_Top(o); end
  def visit_Arel_Visitors_MSSQL_RowNumber(o, collector); end
end
class Arel::Visitors::MSSQL::RowNumber < Struct
  def children; end
  def children=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Arel::Visitors::Oracle < Arel::Visitors::ToSql
  def order_hacks(o); end
  def split_order_string(string); end
  def visit_Arel_Nodes_BindParam(o, collector); end
  def visit_Arel_Nodes_Except(o, collector); end
  def visit_Arel_Nodes_Limit(o, collector); end
  def visit_Arel_Nodes_Offset(o, collector); end
  def visit_Arel_Nodes_SelectStatement(o, collector); end
  def visit_Arel_Nodes_UpdateStatement(o, collector); end
end
class Arel::Visitors::Oracle12 < Arel::Visitors::ToSql
  def visit_Arel_Nodes_BindParam(o, collector); end
  def visit_Arel_Nodes_Except(o, collector); end
  def visit_Arel_Nodes_Limit(o, collector); end
  def visit_Arel_Nodes_Offset(o, collector); end
  def visit_Arel_Nodes_SelectOptions(o, collector); end
  def visit_Arel_Nodes_SelectStatement(o, collector); end
  def visit_Arel_Nodes_UpdateStatement(o, collector); end
end
class Arel::Visitors::WhereSql < Arel::Visitors::ToSql
  def initialize(inner_visitor, *args, &block); end
  def visit_Arel_Nodes_SelectCore(o, collector); end
end
class Arel::Visitors::Dot < Arel::Visitors::Visitor
  def accept(object, collector); end
  def binary(o); end
  def edge(name); end
  def extract(o); end
  def function(o); end
  def initialize; end
  def named_window(o); end
  def nary(o); end
  def quote(string); end
  def to_dot; end
  def unary(o); end
  def visit(o); end
  def visit_Arel_Attribute(o); end
  def visit_Arel_Attributes_Attribute(o); end
  def visit_Arel_Attributes_Boolean(o); end
  def visit_Arel_Attributes_Float(o); end
  def visit_Arel_Attributes_Integer(o); end
  def visit_Arel_Attributes_String(o); end
  def visit_Arel_Attributes_Time(o); end
  def visit_Arel_Nodes_And(o); end
  def visit_Arel_Nodes_As(o); end
  def visit_Arel_Nodes_Assignment(o); end
  def visit_Arel_Nodes_Avg(o); end
  def visit_Arel_Nodes_Between(o); end
  def visit_Arel_Nodes_BindParam(o); end
  def visit_Arel_Nodes_Casted(o); end
  def visit_Arel_Nodes_Concat(o); end
  def visit_Arel_Nodes_Count(o); end
  def visit_Arel_Nodes_Cube(o); end
  def visit_Arel_Nodes_DeleteStatement(o); end
  def visit_Arel_Nodes_DoesNotMatch(o); end
  def visit_Arel_Nodes_Equality(o); end
  def visit_Arel_Nodes_Exists(o); end
  def visit_Arel_Nodes_Extract(o); end
  def visit_Arel_Nodes_Following(o); end
  def visit_Arel_Nodes_FullOuterJoin(o); end
  def visit_Arel_Nodes_GreaterThan(o); end
  def visit_Arel_Nodes_GreaterThanOrEqual(o); end
  def visit_Arel_Nodes_Group(o); end
  def visit_Arel_Nodes_Grouping(o); end
  def visit_Arel_Nodes_GroupingElement(o); end
  def visit_Arel_Nodes_GroupingSet(o); end
  def visit_Arel_Nodes_Having(o); end
  def visit_Arel_Nodes_In(o); end
  def visit_Arel_Nodes_InnerJoin(o); end
  def visit_Arel_Nodes_InsertStatement(o); end
  def visit_Arel_Nodes_JoinSource(o); end
  def visit_Arel_Nodes_LessThan(o); end
  def visit_Arel_Nodes_LessThanOrEqual(o); end
  def visit_Arel_Nodes_Limit(o); end
  def visit_Arel_Nodes_Matches(o); end
  def visit_Arel_Nodes_Max(o); end
  def visit_Arel_Nodes_Min(o); end
  def visit_Arel_Nodes_NamedFunction(o); end
  def visit_Arel_Nodes_NamedWindow(o); end
  def visit_Arel_Nodes_Not(o); end
  def visit_Arel_Nodes_NotEqual(o); end
  def visit_Arel_Nodes_NotIn(o); end
  def visit_Arel_Nodes_Offset(o); end
  def visit_Arel_Nodes_On(o); end
  def visit_Arel_Nodes_Or(o); end
  def visit_Arel_Nodes_Ordering(o); end
  def visit_Arel_Nodes_OuterJoin(o); end
  def visit_Arel_Nodes_Over(o); end
  def visit_Arel_Nodes_Preceding(o); end
  def visit_Arel_Nodes_Range(o); end
  def visit_Arel_Nodes_RightOuterJoin(o); end
  def visit_Arel_Nodes_RollUp(o); end
  def visit_Arel_Nodes_Rows(o); end
  def visit_Arel_Nodes_SelectCore(o); end
  def visit_Arel_Nodes_SelectStatement(o); end
  def visit_Arel_Nodes_SqlLiteral(o); end
  def visit_Arel_Nodes_StringJoin(o); end
  def visit_Arel_Nodes_Sum(o); end
  def visit_Arel_Nodes_TableAlias(o); end
  def visit_Arel_Nodes_Top(o); end
  def visit_Arel_Nodes_UnqualifiedColumn(o); end
  def visit_Arel_Nodes_UpdateStatement(o); end
  def visit_Arel_Nodes_Values(o); end
  def visit_Arel_Nodes_Window(o); end
  def visit_Arel_Table(o); end
  def visit_Array(o); end
  def visit_BigDecimal(o); end
  def visit_Date(o); end
  def visit_DateTime(o); end
  def visit_FalseClass(o); end
  def visit_Fixnum(o); end
  def visit_Float(o); end
  def visit_Hash(o); end
  def visit_Integer(o); end
  def visit_NilClass(o); end
  def visit_Set(o); end
  def visit_String(o); end
  def visit_Symbol(o); end
  def visit_Time(o); end
  def visit_TrueClass(o); end
  def visit_edge(o, method); end
  def window(o); end
  def with_node(node); end
end
class Arel::Visitors::Dot::Node
  def fields; end
  def fields=(arg0); end
  def id; end
  def id=(arg0); end
  def initialize(name, id, fields = nil); end
  def name; end
  def name=(arg0); end
end
class Anonymous_Struct_14 < Struct
  def from; end
  def from=(_); end
  def name; end
  def name=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def to; end
  def to=(_); end
end
class Arel::Visitors::Dot::Edge < Anonymous_Struct_14
end
class Arel::Visitors::IBM_DB < Arel::Visitors::ToSql
  def visit_Arel_Nodes_Limit(o, collector); end
end
class Arel::Visitors::Informix < Arel::Visitors::ToSql
  def visit_Arel_Nodes_Limit(o, collector); end
  def visit_Arel_Nodes_Offset(o, collector); end
  def visit_Arel_Nodes_SelectCore(o, collector); end
  def visit_Arel_Nodes_SelectStatement(o, collector); end
end
module Arel::Collectors
end
class Arel::Collectors::PlainString
  def <<(str); end
  def initialize; end
  def value; end
end
class Arel::Collectors::SQLString < Arel::Collectors::PlainString
  def add_bind(bind); end
  def compile(bvs); end
  def initialize(*arg0); end
end
class Arel::TreeManager
  def ast; end
  def bind_values; end
  def bind_values=(arg0); end
  def engine; end
  def initialize; end
  def initialize_copy(other); end
  def to_dot; end
  def to_sql(engine = nil); end
  def where(expr); end
  include Arel::FactoryMethods
end
class Arel::InsertManager < Arel::TreeManager
  def columns; end
  def create_values(values, columns); end
  def initialize; end
  def insert(fields); end
  def into(table); end
  def select(select); end
  def values=(val); end
end
class Arel::SelectManager < Arel::TreeManager
  def as(other); end
  def collapse(exprs, existing = nil); end
  def constraints; end
  def distinct(value = nil); end
  def distinct_on(value); end
  def except(other); end
  def exists; end
  def from(table); end
  def froms; end
  def group(*columns); end
  def having(expr); end
  def initialize(table = nil); end
  def initialize_copy(other); end
  def intersect(other); end
  def join(relation, klass = nil); end
  def join_sources; end
  def limit; end
  def limit=(limit); end
  def lock(locking = nil); end
  def locked; end
  def minus(other); end
  def offset; end
  def offset=(amount); end
  def on(*exprs); end
  def order(*expr); end
  def orders; end
  def outer_join(relation); end
  def project(*projections); end
  def projections; end
  def projections=(projections); end
  def skip(amount); end
  def source; end
  def take(limit); end
  def taken; end
  def union(operation, other = nil); end
  def where_sql(engine = nil); end
  def window(name); end
  def with(*subqueries); end
  include Arel::Crud
end
class Anonymous_Struct_15 < Struct
  def data; end
  def data=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Arel::SelectManager::Row < Anonymous_Struct_15
  def id; end
  def method_missing(name, *args); end
end
class Arel::UpdateManager < Arel::TreeManager
  def initialize; end
  def key; end
  def key=(key); end
  def order(*expr); end
  def set(values); end
  def table(table); end
  def take(limit); end
  def where(expr); end
  def wheres=(exprs); end
end
class Arel::DeleteManager < Arel::TreeManager
  def from(relation); end
  def initialize; end
  def take(limit); end
  def wheres=(list); end
end
module Arel::Nodes
  def self.build_quoted(other, attribute = nil); end
end
class Arel::Nodes::Node
  def and(right); end
  def each(&block); end
  def not; end
  def or(right); end
  def to_sql(engine = nil); end
  include Arel::FactoryMethods
  include Enumerable
end
class Arel::Nodes::SelectStatement < Arel::Nodes::Node
  def ==(other); end
  def cores; end
  def eql?(other); end
  def hash; end
  def initialize(cores = nil); end
  def initialize_copy(other); end
  def limit; end
  def limit=(arg0); end
  def lock; end
  def lock=(arg0); end
  def offset; end
  def offset=(arg0); end
  def orders; end
  def orders=(arg0); end
  def with; end
  def with=(arg0); end
end
class Arel::Nodes::SelectCore < Arel::Nodes::Node
  def ==(other); end
  def eql?(other); end
  def from; end
  def from=(value); end
  def froms; end
  def froms=(value); end
  def groups; end
  def groups=(arg0); end
  def hash; end
  def havings; end
  def havings=(arg0); end
  def initialize; end
  def initialize_copy(other); end
  def projections; end
  def projections=(arg0); end
  def set_quantifier; end
  def set_quantifier=(arg0); end
  def source; end
  def source=(arg0); end
  def top; end
  def top=(arg0); end
  def wheres; end
  def wheres=(arg0); end
  def windows; end
  def windows=(arg0); end
end
class Arel::Nodes::InsertStatement < Arel::Nodes::Node
  def ==(other); end
  def columns; end
  def columns=(arg0); end
  def eql?(other); end
  def hash; end
  def initialize; end
  def initialize_copy(other); end
  def relation; end
  def relation=(arg0); end
  def select; end
  def select=(arg0); end
  def values; end
  def values=(arg0); end
end
class Arel::Nodes::UpdateStatement < Arel::Nodes::Node
  def ==(other); end
  def eql?(other); end
  def hash; end
  def initialize; end
  def initialize_copy(other); end
  def key; end
  def key=(arg0); end
  def limit; end
  def limit=(arg0); end
  def orders; end
  def orders=(arg0); end
  def relation; end
  def relation=(arg0); end
  def values; end
  def values=(arg0); end
  def wheres; end
  def wheres=(arg0); end
end
class Arel::Nodes::BindParam < Arel::Nodes::Node
  def ==(other); end
end
class Arel::Nodes::Distinct < Arel::Nodes::Node
  def eql?(other); end
  def hash; end
end
class Arel::Nodes::True < Arel::Nodes::Node
  def eql?(other); end
  def hash; end
end
class Arel::Nodes::False < Arel::Nodes::Node
  def eql?(other); end
  def hash; end
end
class Arel::Nodes::Unary < Arel::Nodes::Node
  def ==(other); end
  def eql?(other); end
  def expr; end
  def expr=(arg0); end
  def hash; end
  def initialize(expr); end
  def value; end
end
class Arel::Nodes::Bin < Arel::Nodes::Unary
end
class Arel::Nodes::Cube < Arel::Nodes::Unary
end
class Arel::Nodes::DistinctOn < Arel::Nodes::Unary
end
class Arel::Nodes::Group < Arel::Nodes::Unary
end
class Arel::Nodes::GroupingElement < Arel::Nodes::Unary
end
class Arel::Nodes::GroupingSet < Arel::Nodes::Unary
end
class Arel::Nodes::Limit < Arel::Nodes::Unary
end
class Arel::Nodes::Lock < Arel::Nodes::Unary
end
class Arel::Nodes::Not < Arel::Nodes::Unary
end
class Arel::Nodes::Offset < Arel::Nodes::Unary
end
class Arel::Nodes::On < Arel::Nodes::Unary
end
class Arel::Nodes::Ordering < Arel::Nodes::Unary
end
class Arel::Nodes::RollUp < Arel::Nodes::Unary
end
class Arel::Nodes::Top < Arel::Nodes::Unary
end
class Arel::Nodes::Grouping < Arel::Nodes::Unary
  include Arel::Predications
end
class Arel::Nodes::Ascending < Arel::Nodes::Ordering
  def ascending?; end
  def descending?; end
  def direction; end
  def reverse; end
end
class Arel::Nodes::Descending < Arel::Nodes::Ordering
  def ascending?; end
  def descending?; end
  def direction; end
  def reverse; end
end
class Arel::Nodes::UnqualifiedColumn < Arel::Nodes::Unary
  def attribute; end
  def attribute=(arg0); end
  def column; end
  def name; end
  def relation; end
end
class Arel::Nodes::With < Arel::Nodes::Unary
  def children; end
end
class Arel::Nodes::WithRecursive < Arel::Nodes::With
end
class Arel::Nodes::Binary < Arel::Nodes::Node
  def ==(other); end
  def eql?(other); end
  def hash; end
  def initialize(left, right); end
  def initialize_copy(other); end
  def left; end
  def left=(arg0); end
  def right; end
  def right=(arg0); end
end
class Arel::Nodes::As < Arel::Nodes::Binary
end
class Arel::Nodes::Assignment < Arel::Nodes::Binary
end
class Arel::Nodes::Between < Arel::Nodes::Binary
end
class Arel::Nodes::GreaterThan < Arel::Nodes::Binary
end
class Arel::Nodes::GreaterThanOrEqual < Arel::Nodes::Binary
end
class Arel::Nodes::Join < Arel::Nodes::Binary
end
class Arel::Nodes::LessThan < Arel::Nodes::Binary
end
class Arel::Nodes::LessThanOrEqual < Arel::Nodes::Binary
end
class Arel::Nodes::NotEqual < Arel::Nodes::Binary
end
class Arel::Nodes::NotIn < Arel::Nodes::Binary
end
class Arel::Nodes::Or < Arel::Nodes::Binary
end
class Arel::Nodes::Union < Arel::Nodes::Binary
end
class Arel::Nodes::UnionAll < Arel::Nodes::Binary
end
class Arel::Nodes::Intersect < Arel::Nodes::Binary
end
class Arel::Nodes::Except < Arel::Nodes::Binary
end
class Arel::Nodes::Equality < Arel::Nodes::Binary
  def operand1; end
  def operand2; end
  def operator; end
end
class Arel::Nodes::In < Arel::Nodes::Equality
end
class Arel::Nodes::JoinSource < Arel::Nodes::Binary
  def empty?; end
  def initialize(single_source, joinop = nil); end
end
class Arel::Nodes::DeleteStatement < Arel::Nodes::Binary
  def initialize(relation = nil, wheres = nil); end
  def initialize_copy(other); end
  def limit; end
  def limit=(arg0); end
  def relation; end
  def relation=(arg0); end
  def wheres; end
  def wheres=(arg0); end
end
class Arel::Nodes::TableAlias < Arel::Nodes::Binary
  def [](name); end
  def able_to_type_cast?; end
  def name; end
  def relation; end
  def table_alias; end
  def table_name; end
  def type_cast_for_database(*args); end
end
class Arel::Nodes::InfixOperation < Arel::Nodes::Binary
  def initialize(operator, left, right); end
  def operator; end
  include Arel::AliasPredication
  include Arel::Expressions
  include Arel::Math
  include Arel::OrderPredications
  include Arel::Predications
end
class Arel::Nodes::Multiplication < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::Division < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::Addition < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::Subtraction < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::Concat < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::BitwiseAnd < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::BitwiseOr < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::BitwiseXor < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::BitwiseShiftLeft < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::BitwiseShiftRight < Arel::Nodes::InfixOperation
  def initialize(left, right); end
end
class Arel::Nodes::UnaryOperation < Arel::Nodes::Unary
  def initialize(operator, operand); end
  def operator; end
  include Arel::AliasPredication
  include Arel::Expressions
  include Arel::Math
  include Arel::OrderPredications
  include Arel::Predications
end
class Arel::Nodes::BitwiseNot < Arel::Nodes::UnaryOperation
  def initialize(operand); end
end
class Arel::Nodes::Over < Arel::Nodes::Binary
  def initialize(left, right = nil); end
  def operator; end
  include Arel::AliasPredication
end
class Arel::Nodes::Matches < Arel::Nodes::Binary
  def case_sensitive; end
  def case_sensitive=(arg0); end
  def escape; end
  def initialize(left, right, escape = nil, case_sensitive = nil); end
end
class Arel::Nodes::DoesNotMatch < Arel::Nodes::Matches
end
class Arel::Nodes::Regexp < Arel::Nodes::Binary
  def case_sensitive; end
  def case_sensitive=(arg0); end
  def initialize(left, right, case_sensitive = nil); end
end
class Arel::Nodes::NotRegexp < Arel::Nodes::Regexp
end
class Arel::Nodes::And < Arel::Nodes::Node
  def ==(other); end
  def children; end
  def eql?(other); end
  def hash; end
  def initialize(children); end
  def left; end
  def right; end
end
class Arel::Nodes::Function < Arel::Nodes::Node
  def alias; end
  def alias=(arg0); end
  def as(aliaz); end
  def distinct; end
  def distinct=(arg0); end
  def eql?(other); end
  def expressions; end
  def expressions=(arg0); end
  def hash; end
  def initialize(expr, aliaz = nil); end
  include Arel::OrderPredications
  include Arel::Predications
  include Arel::WindowPredications
end
class Arel::Nodes::Sum < Arel::Nodes::Function
end
class Arel::Nodes::Exists < Arel::Nodes::Function
end
class Arel::Nodes::Max < Arel::Nodes::Function
end
class Arel::Nodes::Min < Arel::Nodes::Function
end
class Arel::Nodes::Avg < Arel::Nodes::Function
end
class Arel::Nodes::Count < Arel::Nodes::Function
  def initialize(expr, distinct = nil, aliaz = nil); end
end
class Arel::Nodes::Extract < Arel::Nodes::Unary
  def ==(other); end
  def eql?(other); end
  def field; end
  def field=(arg0); end
  def hash; end
  def initialize(expr, field); end
  include Arel::AliasPredication
  include Arel::Predications
end
class Arel::Nodes::Values < Arel::Nodes::Binary
  def columns; end
  def columns=(arg0); end
  def expressions; end
  def expressions=(arg0); end
  def initialize(exprs, columns = nil); end
end
class Arel::Nodes::NamedFunction < Arel::Nodes::Function
  def ==(other); end
  def eql?(other); end
  def hash; end
  def initialize(name, expr, aliaz = nil); end
  def name; end
  def name=(arg0); end
end
class Arel::Nodes::Window < Arel::Nodes::Node
  def ==(other); end
  def eql?(other); end
  def frame(expr); end
  def framing; end
  def framing=(arg0); end
  def hash; end
  def initialize; end
  def initialize_copy(other); end
  def order(*expr); end
  def orders; end
  def orders=(arg0); end
  def partition(*expr); end
  def partitions; end
  def partitions=(arg0); end
  def range(expr = nil); end
  def rows(expr = nil); end
end
class Arel::Nodes::NamedWindow < Arel::Nodes::Window
  def ==(other); end
  def eql?(other); end
  def hash; end
  def initialize(name); end
  def initialize_copy(other); end
  def name; end
  def name=(arg0); end
end
class Arel::Nodes::Rows < Arel::Nodes::Unary
  def initialize(expr = nil); end
end
class Arel::Nodes::Range < Arel::Nodes::Unary
  def initialize(expr = nil); end
end
class Arel::Nodes::CurrentRow < Arel::Nodes::Node
  def eql?(other); end
  def hash; end
end
class Arel::Nodes::Preceding < Arel::Nodes::Unary
  def initialize(expr = nil); end
end
class Arel::Nodes::Following < Arel::Nodes::Unary
  def initialize(expr = nil); end
end
class Arel::Nodes::Case < Arel::Nodes::Node
  def ==(other); end
  def case; end
  def case=(arg0); end
  def conditions; end
  def conditions=(arg0); end
  def default; end
  def default=(arg0); end
  def else(expression); end
  def eql?(other); end
  def hash; end
  def initialize(expression = nil, default = nil); end
  def initialize_copy(other); end
  def then(expression); end
  def when(condition, expression = nil); end
  include Arel::AliasPredication
  include Arel::OrderPredications
  include Arel::Predications
end
class Arel::Nodes::When < Arel::Nodes::Binary
end
class Arel::Nodes::Else < Arel::Nodes::Unary
end
class Arel::Nodes::FullOuterJoin < Arel::Nodes::Join
end
class Arel::Nodes::InnerJoin < Arel::Nodes::Join
end
class Arel::Nodes::OuterJoin < Arel::Nodes::Join
end
class Arel::Nodes::RightOuterJoin < Arel::Nodes::Join
end
class Arel::Nodes::StringJoin < Arel::Nodes::Join
  def initialize(left, right = nil); end
end
class Arel::Nodes::SqlLiteral < String
  def encode_with(coder); end
  include Arel::AliasPredication
  include Arel::Expressions
  include Arel::OrderPredications
  include Arel::Predications
end
class Arel::Nodes::Casted < Arel::Nodes::Node
  def ==(other); end
  def attribute; end
  def eql?(other); end
  def hash; end
  def initialize(val, attribute); end
  def nil?; end
  def val; end
end
class Arel::Nodes::Quoted < Arel::Nodes::Unary
  def nil?; end
  def val; end
end
class Arel::Collectors::Bind
  def <<(str); end
  def add_bind(bind); end
  def compile(bvs); end
  def initialize; end
  def substitute_binds(bvs); end
  def value; end
end
