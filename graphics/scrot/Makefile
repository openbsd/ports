COMMENT=		commandline screen capture util

V=			1.7
DISTNAME=		scrot-${V}

CATEGORIES=		graphics

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += Imlib2 X11 Xcomposite Xext Xfixes c

MASTER_SITES=		https://github.com/resurrecting-open-source-projects/scrot/releases/download/${V}/

LIB_DEPENDS=		graphics/imlib2

CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		docsdir=${PREFIX}/share/doc/scrot/

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS+=	-std=gnu99
.endif

SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
