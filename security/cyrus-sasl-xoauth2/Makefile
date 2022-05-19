COMMENT =		XOAUTH2 mechanism plugin for cyrus-sasl

GH_ACCOUNT =		moriyoshi
GH_PROJECT =		cyrus-sasl-xoauth2
GH_TAGNAME =		v0.2

SHARED_LIBS =		xoauth2	0.0 # 0.2

CATEGORIES =		security

# MIT license
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		security/cyrus-sasl2
RUN_DEPENDS =		security/cyrus-sasl2

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--with-cyrus-sasl=${LOCALBASE}

LIBTOOL_FLAGS =		--tag=disable-static

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
AUTORECONF =		./autogen.sh

NO_TEST =		Yes

.include <bsd.port.mk>
