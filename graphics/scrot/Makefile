COMMENT=	commandline screen capture util

V=		2.0.0
DISTNAME=	scrot-${V}

CATEGORIES=	graphics

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += Imlib2 X11 Xcomposite Xfixes Xrandr c

SITES=		https://github.com/resurrecting-open-source-projects/scrot/releases/download/${V}/

LIB_DEPENDS=	graphics/imlib2

CONFIGURE_STYLE=gnu
SEPARATE_BUILD=	Yes
FAKE_FLAGS+=	docsdir=${PREFIX}/share/doc/scrot/

.include <bsd.port.mk>
