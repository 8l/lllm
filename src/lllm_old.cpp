
/*
#include "Value.hpp"
#include "ValueIO.hpp"
#include "read.hpp"
#include "eval.hpp"
#include "fail.hpp"
*/

#include "lllm/reader.hpp"
#include "lllm/analyzer/TypeSet.hpp"

#include <cassert>
#include <iostream>
#include <typeinfo>

namespace lllm {
	namespace val  {}
	namespace util {}
}

using namespace lllm;
using namespace lllm::val;

static int testReader();

std::ostream& lllm::operator<<( std::ostream& os, const TypeSet& ts ) {
	if ( !ts.mask ) {
		return os << "{}";
	} else {
		os << '{';

		bool flag = false;

		for ( Type t = Type::BEGIN; t <= Type::END; t = Type( long( t ) + 1 ) ) {
			if ( ts.contains( t ) ) {
				if ( flag ) os << ", ";
				os << t;
				flag = true;
			}
		}

		return os << '}';
	}
}
std::ostream& lllm::operator<<( std::ostream& os, const Type& t ) {
	switch ( t ) {
		case Type::Nil:    return os << "Nil";
		case Type::Cons:   return os << "Cons";
		case Type::Int:    return os << "Int";
		case Type::Real:   return os << "Real";
		case Type::Char:   return os << "Char";
		case Type::String: return os << "String";
		case Type::Symbol: return os << "Symbol";
		case Type::Ref:    return os << "Ref";
		case Type::Lambda: return os << "Lambda";
		case Type::Thunk:  return os << "Thunk";
	}
}

int main() {
	using namespace std;

	std::cout << "LLLM says: 'Hi'" << std::endl << std::endl;

/*
	ValuePtr i = val::number( 5 );
	
	cout << i << endl;
	cout << cons( number( 0 ), cons( number( 1 ), nil() ) ) << endl;
	cout << "'" << nil() << "'" << endl;
*/
/*
	cout << endl << ">>> TEST EQUALITY" << endl;
	cout << std::boolalpha;

	#define EQ( A, B ) (void) ({ cout << #A " == " #B " is " << equal( (A), (B) ) << endl; nullptr; })

	EQ( nil(),       nil() );
	EQ( number( 5 ), nil() );
	EQ( nil(),       number( 5 ) );
	EQ( number( 5 ), number( 5 ) );
	EQ( cons( nil(), nil() ), cons( nil(), True ) );

	cout << std::noboolalpha;
*/

	testReader();

/*
	cout << endl << ">>> TEST EVAL" << endl;

	#define EVAL( A ) (void) ({ cout << "eval(" A ") is " << eval( read(A), builtins() ) << endl; nullptr; })

	EVAL("(do nil (define a 6) 5 a)");
	EVAL("(let ((a 5)) a)");
	EVAL("1");
	EVAL("\"true\"");
	EVAL("true");
	EVAL("false");
	EVAL("nil");
	EVAL("\\c");
	EVAL("'(if true 0 1)");
	EVAL("'(if true 0 1)");
	EVAL("(if true  0 1)");
	EVAL("(if false 0 1)");
	EVAL("(if true (if false 1 0) 1)");
	EVAL("(lambda () 'a)");
	EVAL("((lambda () 5))");
*/
	std::cout << std::endl << "LLLM says: 'Bye'" << std::endl;
	return 0;
}

static int runReaderTest( const char* str, const ParseTree& tree );
static int runReaderTest( const char* str, const ParseTree* tree );

int testReader() {
	using namespace lllm::parseTree;

	std::cout << ">>> TESTING READER" << std::endl;

	int testsRun = 0, testsPassed = 0;

	#define TEST( NAME, REL, STR, OBJ )  ({												\
		auto str = (STR);																\
		auto obj = (OBJ);																\
																						\
		if ( parseTree::equal( read( str ), obj ) REL false ) {							\
			std::cout << "Test: " NAME " failed: read(" STR ") == '" << read( str );	\
			std::cout << "' should equal '" << obj << "'" << std::endl;					\
		} else {																		\
			testsPassed++;																\
		}																				\
		testsRun++;																		\
	})

	TEST( "", ==, "1",        number( 1 ) );
	TEST( "", ==, "1.5",      number( 1.5 ) );
	TEST( "", !=, "155",      number( 1.5 ) );
	TEST( "", ==, "1 5",      number( 1 ) );
	TEST( "", ==, "abba",     symbol( "abba" ) );
	TEST( "", ==, "\"abba\"", string( "abba" ) );
	TEST( "", ==, "()",       nil() );
	TEST( "", ==, "(1)",      list( number( 1 ) ) );
	TEST( "", ==, "(()())",   list( nil(), nil() ) );
	TEST( "", ==, "(1 ())",   list( number( 1 ), nil() ) );

	std::cout << ">>> READER PASSED " << testsPassed << " TESTS OUT OF " << testsRun << std::endl;

	#undef TEST

	return 0;
}

int runReaderTest( const char* str, const ParseTree& tree ) {
	return 0;
}
int runReaderTest( const char* str, const ParseTree* tree ) {
	return runReaderTest( str, *tree );
}

