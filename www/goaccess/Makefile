# $OpenBSD: Makefile,v 1.23 2019/07/12 20:50:46 sthen Exp $

COMMENT =		realtime console web log analyzer

DISTNAME =		goaccess-1.3
REVISION =		2

CATEGORIES =		www

HOMEPAGE =		https://goaccess.io/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto curses intl maxminddb pthread ssl

MASTER_SITES =		https://tar.goaccess.io/

LIB_DEPENDS =		devel/gettext,-runtime \
			net/libmaxminddb

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-geoip=mmdb \
			--enable-utf8 \
			--with-openssl \
			--with-libiconv-prefix

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS =		confdir="${PREFIX}/share/examples/goaccess"

FLAVORS = 		tokyocabinet
FLAVOR ?=

.if ${FLAVOR:Mtokyocabinet}
WANTLIB += 		bz2 tokyocabinet z
LIB_DEPENDS += 		databases/tokyocabinet
CONFIGURE_ARGS += 	--enable-tcb=btree
.endif

.include <bsd.port.mk>
