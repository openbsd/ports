COMMENT =		realtime console web log analyzer

DISTNAME =		goaccess-1.9.4

CATEGORIES =		www

HOMEPAGE =		https://goaccess.io/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto curses intl maxminddb pthread ssl

SITES =			https://tar.goaccess.io/

LIB_DEPENDS =		devel/gettext,-runtime \
			net/libmaxminddb

# libmaxminddb headers fail with base-gcc
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-geoip=mmdb \
			--enable-utf8 \
			--with-openssl \
			--with-libiconv-prefix

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS =		confdir="${PREFIX}/share/examples/goaccess"

.include <bsd.port.mk>
