# $OpenBSD: Makefile,v 1.16 2019/05/01 19:57:07 sthen Exp $

COMMENT=		commandline screen capture util

DISTNAME=		scrot-0.8
REVISION =		4
CATEGORIES=		graphics

HOMEPAGE=		http://www.linuxbrit.co.uk/scrot/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext c freetype m z \
			giblib>=1 Imlib2>=1

MASTER_SITES=		http://www.linuxbrit.co.uk/downloads/

LIB_DEPENDS=            devel/giblib \
			graphics/imlib2

CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		docsdir=${PREFIX}/share/doc/scrot/

.include <bsd.port.mk>
