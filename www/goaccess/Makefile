# $OpenBSD: Makefile,v 1.19 2018/11/28 19:40:27 kirby Exp $

COMMENT =		realtime console web log analyzer

DISTNAME =		goaccess-1.3

CATEGORIES =		www

HOMEPAGE =		https://goaccess.io/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GeoIP c curses intl pthread

MASTER_SITES =		https://tar.goaccess.io/

LIB_DEPENDS =		devel/gettext \
			net/GeoIP

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-geoip=legacy \
			--enable-utf8 \
			--with-libiconv-prefix

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS = 		tokyocabinet
FLAVOR ?=

.if ${FLAVOR:Mtokyocabinet}
WANTLIB += 		bz2 tokyocabinet z
LIB_DEPENDS += 		databases/tokyocabinet
CONFIGURE_ARGS += 	--enable-tcb=btree
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/goaccess/
	${INSTALL_DATA} ${WRKSRC}/config/goaccess.conf \
		${PREFIX}/share/examples/goaccess/

.include <bsd.port.mk>
