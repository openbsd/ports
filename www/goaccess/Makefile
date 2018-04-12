# $OpenBSD: Makefile,v 1.18 2018/04/12 18:26:24 kirby Exp $

COMMENT =		realtime console web log analyzer

DISTNAME =		goaccess-1.2
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://goaccess.io/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GeoIP c curses pthread

MASTER_SITES =		https://tar.goaccess.io/

LIB_DEPENDS =		net/GeoIP

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-geoip=legacy \
			--enable-utf8

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS = 		tokyocabinet
FLAVOR ?=

.if ${FLAVOR:Mtokyocabinet}
WANTLIB += 		bz2 tokyocabinet z
LIB_DEPENDS += 		databases/tokyocabinet
CONFIGURE_ARGS += 	--enable-tcb=btree
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/goaccess ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/goaccess.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/goaccess/
	${INSTALL_DATA} ${WRKSRC}/config/goaccess.conf \
		${PREFIX}/share/examples/goaccess/

.include <bsd.port.mk>
