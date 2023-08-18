COMMENT =	Algol 68 Genie compiler-interpreter
DISTNAME =	algol68g-3.3.2
CATEGORIES =	lang

HOMEPAGE =	https://jmvdveer.home.xs4all.nl/algol.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://jmvdveer.home.xs4all.nl/

WANTLIB += c curses m pthread

# ports-gcc used because of C99 and crashes spotted at runtime on sparc64
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-gsl \
			--disable-mathlib \
			--disable-mpfr \
			--disable-plotutils \
			--disable-postgresql

.include <bsd.port.mk>
