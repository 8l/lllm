#ifndef __SOURCE_LOCATION_HPP__
#define __SOURCE_LOCATION_HPP__ 1

#include <iosfwd>

namespace lllm {
	typedef const char* CStr;

	namespace reader {
		class SourceLocation {
			public:
				inline constexpr SourceLocation( CStr file ) : _file( file ), _line( 0 ), _column( 0 ) {}
				inline constexpr SourceLocation( CStr file, unsigned line, unsigned column ) : _file( file ), _line( line ), _column( column ) {}
				inline constexpr SourceLocation( const SourceLocation& sl ) : _file( sl._file ), _line( sl._line ), _column( sl._column ) {}
						
				inline void incLine()   { _line++; _column = 0; }
				inline void incColumn() { _column++; }
				inline void incColumn( int amount ) { _column += amount; }
	
				inline constexpr CStr     file()   const { return _file;   }
				inline constexpr unsigned line()   const { return _line;   }
				inline constexpr unsigned column() const { return _column; }
			private:
				const CStr _file;
				unsigned _line, _column;
		};

		std::ostream& operator<<( std::ostream&, const SourceLocation& );	
	}; // end namespace reader
}; // end namespace lllm

#endif /* __SOURCE_LOCATION_HPP__ */

