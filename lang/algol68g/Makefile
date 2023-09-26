COMMENT =	Algol 68 Genie compiler-interpreter
DISTNAME =	algol68g-3.3.5
CATEGORIES =	lang

HOMEPAGE =	https://jmvdveer.home.xs4all.nl/algol.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =		https://jmvdveer.home.xs4all.nl/

WANTLIB += c curl curses m pthread

# ports-gcc used because of C99 and crashes spotted at runtime on sparc64
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =	net/curl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-gsl \
			--disable-mathlib \
			--disable-mpfr \
			--disable-plotutils \
			--disable-postgresql

.include <bsd.port.mk>
