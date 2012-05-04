
#include "lllm/analyzer/Ast.hpp"

using namespace lllm;
using namespace lllm::analyzer;

Ast::Ast( const Ast::Type& t, const reader::SourceLocation& loc ) : type( t ), location( loc ) {}

//***** ATOMS                ****************************************************************//
Nil::Nil( const reader::SourceLocation& loc ) : Ast( Type::Nil, loc ) {}
Int::Int( const reader::SourceLocation& loc, long value )    : Ast( Type::Int,    loc ), value( value ) {}
Real::Real( const reader::SourceLocation& loc, double value ) : Ast( Type::Real,   loc ), value( value ) {}
Char::Char( const reader::SourceLocation& loc, char value )   : Ast( Type::Char,   loc ), value( value ) {}
String::String( const reader::SourceLocation& loc, CStr value ) : Ast( Type::String, loc ), value( value ) {}

TypeSet Nil   ::possibleTypes() const { return TypeSet::Nil();    }
TypeSet Int   ::possibleTypes() const { return TypeSet::Int();    }
TypeSet Real  ::possibleTypes() const { return TypeSet::Real();   }
TypeSet Char  ::possibleTypes() const { return TypeSet::Char();   }
TypeSet String::possibleTypes() const { return TypeSet::String(); }

//***** VARIABLES            ****************************************************************//
Variable::Variable( Type type, const reader::SourceLocation& loc, const util::InternedString& name ) :
	Ast( type, loc ), name( name ) {}
Builtin::Builtin( const util::InternedString& name, TypeSet types ) :
	Variable( Type::Builtin, reader::SourceLocation("*builtin*"), name ), _types( types ) {}
Global::Global( const reader::SourceLocation& loc, const util::InternedString& name, AstPtr value ) :
	Variable( Type::Global, loc, name ), value( value ) {}
Captured::Captured( const reader::SourceLocation& loc, const util::InternedString& name, TypeSet types ) :
	Variable( Type::Captured, loc, name ), _types( types ) {}
Parameter::Parameter( const reader::SourceLocation& loc, const util::InternedString& name ) :
	Variable( Type::Parameter, loc, name ) {}
Local::Local( const reader::SourceLocation& loc, const util::InternedString& name, AstPtr value ) :
	Variable( Type::Local, loc, name ), value( value ) {}

TypeSet Builtin  ::possibleTypes() const { return _types;                 }
TypeSet Global   ::possibleTypes() const { return value->possibleTypes(); }
TypeSet Captured ::possibleTypes() const { return _types;                 }
TypeSet Parameter::possibleTypes() const { return TypeSet::all();         }
TypeSet Local    ::possibleTypes() const { return value->possibleTypes(); }

//***** SPECIAL FORMS        ****************************************************************//
Quote::Quote( const reader::SourceLocation& loc, value::ValuePtr value ) : Ast( Type::Quote, loc ), value( value ) {}	
If::If( const reader::SourceLocation& loc, AstPtr test, AstPtr thenBranch, AstPtr elseBranch ) :
	  Ast( Type::If, loc ),
	  test( test ),
	  thenBranch( thenBranch ), 
	  elseBranch( elseBranch ) {}
Do::Do( const reader::SourceLocation& loc, const std::vector<AstPtr>& exprs ) : Ast( Type::Do, loc ), exprs( exprs ) {}
Let::Let( const reader::SourceLocation& loc, const std::vector<LocalPtr>& bindings, AstPtr expr ) :
	Ast( Type::Let, loc ),
	bindings( bindings ),
	body( expr ) {}
Lambda::Lambda( const reader::SourceLocation& loc, LambdaPtr parent, 
                const std::vector<ParameterPtr>& parameters, 
                const std::vector<CapturedPtr>& captured, 
                AstPtr expr ) :
	Ast( Type::Lambda, loc ),
	parent( parent ),
	parameters( parameters ),
	capturedVariables( captured ),
	body( expr ) {}
Define::Define( const reader::SourceLocation& loc, GlobalPtr var ) :
	Ast( Type::Define, loc ),
	var( var ) {}

TypeSet Quote ::possibleTypes() const { return value::typeOf( value ); }
TypeSet If    ::possibleTypes() const { return thenBranch->possibleTypes() | elseBranch->possibleTypes(); }
TypeSet Do    ::possibleTypes() const { return exprs.back()->possibleTypes(); }
TypeSet Let   ::possibleTypes() const { return body->possibleTypes(); }
TypeSet Lambda::possibleTypes() const { return body->possibleTypes(); }
TypeSet Define::possibleTypes() const { return var->possibleTypes();  }

size_t Lambda::arity() const { return parameters.size(); }

//***** FUNCTION APPLICATION ****************************************************************//
Application::Application( const reader::SourceLocation& loc, AstPtr fun, const std::vector<AstPtr>& args ) : 
	Ast( Type::Application, loc ),
	fun( fun ),
	args( args ) {}

TypeSet Application::possibleTypes() const { return fun->possibleTypes(); }














