# $OpenBSD: Makefile,v 1.12 2011/07/08 12:20:49 jasper Exp $

COMMENT=		commandline screen capture util

DISTNAME=		scrot-0.8
REVISION =		2
CATEGORIES=		graphics

HOMEPAGE=		http://www.linuxbrit.co.uk/scrot/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext c freetype m pthread-stubs xcb z \
			giblib>=1 Imlib2>=1

MASTER_SITES=		http://www.linuxbrit.co.uk/downloads/

LIB_DEPENDS=            devel/giblib \
			graphics/imlib2

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		docsdir=${PREFIX}/share/doc/scrot/

.include <bsd.port.mk>
