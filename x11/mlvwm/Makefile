COMMENT =	Macintosh-like virtual window manager

V =		0.9.3
DISTNAME =	mlvwm-$V
CATEGORIES =	x11

HOMEPAGE =	https://github.com/morgant/mlvwm/
MAINTAINER =	Morgan Aldridge <morgant@makkintosshu.com>

# part MIT part Freeware, see README.md
PERMIT_PACKAGE =	Yes

WANTLIB +=		X11 Xau Xdmcp Xext Xpm c

MASTER_SITES =		https://github.com/morgant/mlvwm/releases/download/$V/

CONFIGURE_STYLE =	imake
MAKE_FLAGS =		CC="${CC}" COPTS="${CFLAGS}"
NO_TEST =		Yes

.include <bsd.port.mk>
