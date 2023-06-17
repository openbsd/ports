COMMENT =	unicode normalization form support library for Ruby

DISTNAME =	unf_ext-0.0.8.2
CATEGORIES =	textproc
HOMEPAGE =	https://github.com/knu/ruby-unf_ext

# MIT License
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

# C++
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c c++

WANTLIB =	${COMPILER_LIBCXX}

CONFIGURE_STYLE = ruby gem ext

# Includes tests in gem, but they don't work (require git checkout)

.include <bsd.port.mk>
