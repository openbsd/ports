COMMENT =	Algol 68 Genie compiler-interpreter
DISTNAME =	algol68g-3.0.4
CATEGORIES =	lang

HOMEPAGE =	https://jmvdveer.home.xs4all.nl/algol.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://jmvdveer.home.xs4all.nl/

WANTLIB += c curses m pthread

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--disable-gsl \
			--disable-mathib \
			--disable-mpfr \
			--disable-plotutils \
			--disable-postgresql
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

# configure needs to be writeable otherwise autoconf won't regen it
post-extract:
	chmod +w ${WRKSRC}/configure

do-gen:
	sed -i "s,LOCALBASE,${LOCALBASE},g" ${WRKSRC}/src/a68g/a68g.c

.include <bsd.port.mk>
