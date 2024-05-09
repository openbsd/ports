COMMENT =		lightweight HTTP/SSL proxy

V =			1.11.2
DISTNAME =		tinyproxy-$V
CATEGORIES =		www net

HOMEPAGE =		https://tinyproxy.github.io/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += c pthread

BUILD_DEPENDS =		textproc/asciidoc

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

SITES =		https://github.com/tinyproxy/tinyproxy/releases/download/$V/

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
