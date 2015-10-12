# $OpenBSD: Makefile,v 1.6 2015/10/12 09:43:47 kirby Exp $

PORTROACH = 		skipv:0.11,0.12

COMMENT =		realtime console web log analyzer

DISTNAME =		goaccess-0.9.4
REVISION = 		0

CATEGORIES =		www
HOMEPAGE =		http://goaccess.io/
MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>, \
			William Yodlowsky <william@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GeoIP bz2 c ncursesw pthread tokyocabinet z

MASTER_SITES =		http://tar.goaccess.io/

LIB_DEPENDS =		databases/tokyocabinet \
			net/GeoIP

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION = 	2.69
CONFIGURE_ARGS +=	--enable-geoip \
			--enable-utf8 \
			--enable-tcb=btree

CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@perl -pi -e s,ncursesw/curses.h,curses.h, ${WRKSRC}/src/*.[ch]

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/goaccess ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/goaccess.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/goaccess/
	${INSTALL_DATA} ${WRKSRC}/config/goaccess.conf ${PREFIX}/share/goaccess/

.include <bsd.port.mk>
