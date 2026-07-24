COMMENT =	static multicast routing daemon

GH_ACCOUNT =	troglobit
GH_PROJECT =	smcroute
GH_TAGNAME =	2.6.0

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c

SITES =		https://github.com//${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${GH_TAGNAME}/

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-libcap
CONFIGURE_STYLE +=	autoreconf
AUTOCONF_VERSION =	2.72
AUTOMAKE_VERSION =	1.18

.include <bsd.port.mk>
