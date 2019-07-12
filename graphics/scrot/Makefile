# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:10 sthen Exp $

COMMENT=		commandline screen capture util

DISTNAME=		scrot-0.8
REVISION =		4
CATEGORIES=		graphics

HOMEPAGE=		http://www.linuxbrit.co.uk/scrot/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext c freetype m z \
			giblib>=1 Imlib2>=1

MASTER_SITES=		http://www.linuxbrit.co.uk/downloads/

LIB_DEPENDS=            devel/giblib \
			graphics/imlib2

CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		docsdir=${PREFIX}/share/doc/scrot/

.include <bsd.port.mk>
