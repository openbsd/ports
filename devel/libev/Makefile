COMMENT =	high-performance event loop library

# p5-EV should probably be kept in sync
DISTNAME =	libev-4.33

CATEGORIES =	devel

SHARED_LIBS=	ev 3.1 # 4.0

HOMEPAGE =	http://software.schmorp.de/pkg/libev.html
MASTER_SITES =	http://dist.schmorp.de/libev/ \
		http://dist.schmorp.de/libev/Attic/

# BSD / GPL
PERMIT_PACKAGE =	Yes

WANTLIB =		m

DEBUG_PACKAGES =	${BUILD_PACKAGES}
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
