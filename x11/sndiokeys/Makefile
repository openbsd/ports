COMMENT=	control sndiod with hot-keys and play keyboard bells

GH_ACCOUNT=	ratchov
GH_PROJECT=	sndiokeys
GH_TAGNAME=	v1.1.2

CATEGORIES=	audio x11
MAINTAINER=	Alexandre Ratchov <alex@caoua.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c sndio X11
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix=${PREFIX}
MAKE_FLAGS=		CC=${CC}
.include <bsd.port.mk>
