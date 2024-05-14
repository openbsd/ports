COMMENT =		lightweight HTTP/SSL proxy

V =			1.11.2
DISTNAME =		tinyproxy-$V
REVISION =		0
CATEGORIES =		www net

HOMEPAGE =		https://tinyproxy.github.io/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += c pthread

BUILD_DEPENDS =		devel/gperf \
			textproc/asciidoc

AUTOCONF_VERSION=	2.71

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf

SITES =		https://github.com/tinyproxy/tinyproxy/releases/download/$V/

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
