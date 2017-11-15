# $OpenBSD: Makefile,v 1.17 2017/11/15 21:28:05 sthen Exp $

COMMENT =		realtime console web log analyzer

DISTNAME =		goaccess-1.2
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		http://goaccess.io/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GeoIP bz2 c ncursesw pthread tokyocabinet z

MASTER_SITES =		http://tar.goaccess.io/

LIB_DEPENDS =		databases/tokyocabinet \
			net/GeoIP

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-geoip=legacy \
			--enable-utf8 \
			--enable-tcb=btree

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/goaccess ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/goaccess.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/goaccess/
	${INSTALL_DATA} ${WRKSRC}/config/goaccess.conf \
		${PREFIX}/share/examples/goaccess/

.include <bsd.port.mk>
