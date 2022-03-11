COMMENT =		lightweight HTTP/SSL proxy

V =			1.11.0
DISTNAME =		tinyproxy-$V
CATEGORIES =		www net

HOMEPAGE =		https://tinyproxy.github.io/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += c pthread

BUILD_DEPENDS =		textproc/asciidoc>=8.6.8

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

MASTER_SITES =		https://github.com/tinyproxy/tinyproxy/releases/download/$V/

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
