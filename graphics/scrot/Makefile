COMMENT=		commandline screen capture util

V=			1.8.1
DISTNAME=		scrot-${V}

CATEGORIES=		graphics

# BSD
PERMIT_PACKAGE=	Yes

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += Imlib2 X11 Xcomposite Xext Xfixes Xinerama c

MASTER_SITES=		https://github.com/resurrecting-open-source-projects/scrot/releases/download/${V}/

LIB_DEPENDS=		graphics/imlib2

CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		docsdir=${PREFIX}/share/doc/scrot/

SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
