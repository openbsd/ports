COMMENT =		mastodon plugin for Bitlbee

GH_ACCOUNT =		kensanata
GH_PROJECT =		bitlbee-mastodon
GH_TAGNAME =		v1.4.3

CATEGORIES =		net

HOMEPAGE =		https://github.com/kensanata/bitlbee-mastodon

# Mixed: LGPLv2.1 and GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += glib-2.0 iconv intl pcre pthread

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

LIB_DEPENDS =		devel/glib2>=2.32

BUILD_DEPENDS =		devel/libtool \
			net/bitlbee

RUN_DEPENDS =		net/bitlbee

CONFIGURE_STYLE =	autoreconf
LIBTOOL_FLAGS =		--tag=disable-static

NO_TEST =		Yes

.include <bsd.port.mk>
