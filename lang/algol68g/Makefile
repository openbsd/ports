COMMENT =	Algol 68 Genie compiler-interpreter
DISTNAME =	algol68g-3.10.14
REVISION =	0

CATEGORIES =	lang

HOMEPAGE =	https://algol68genie.nl/
SITES =		https://algol68genie.nl/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c curl curses m pthread

# C17
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =		net/curl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-gsl \
			--disable-mathlib \
			--disable-mpfr \
			--disable-plotutils \
			--disable-postgresql
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
