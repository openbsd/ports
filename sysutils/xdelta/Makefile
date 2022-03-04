
COMMENT =		tool for RFC3284 delta compression

GH_ACCOUNT =		jmacd
GH_PROJECT =		xdelta
GH_TAGNAME =		v3.0.11

CATEGORIES =		sysutils devel

HOMEPAGE =		http://xdelta.org

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>


# Has old version bundled in xdelta1 directory alongside xdelta3
WRKSRC = 		${WRKDIST}/xdelta3

# APL 2.0
PERMIT_PACKAGE =	Yes

# C++ is only for disabled regression test suite
WANTLIB =		c m

#CONFIGURE_STYLE =	autoconf
CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

USE_GMAKE =		Yes

.include <bsd.port.mk>
