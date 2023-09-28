COMMENT=	win land without colliding with 'flyers' and 'eaters'

DISTNAME=	xonix-1.4
REVISION=	10
CATEGORIES=	games

SITES=		ftp://ftp.interface-business.de/pub/outgoing/ \
		https://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c m

CONFIGURE_STYLE=imake
NO_TEST=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}
MAKE_FLAGS=	CDEBUGFLAGS="${CFLAGS}"

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xonix
		${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xonix/xonix.scores

.include <bsd.port.mk>
