# $OpenBSD: Makefile,v 1.14 2013/03/11 11:10:55 espie Exp $

COMMENT=		commandline screen capture util

DISTNAME=		scrot-0.8
REVISION =		3
CATEGORIES=		graphics

HOMEPAGE=		http://www.linuxbrit.co.uk/scrot/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext c freetype m z \
			giblib>=1 Imlib2>=1

MASTER_SITES=		http://www.linuxbrit.co.uk/downloads/

LIB_DEPENDS=            devel/giblib \
			graphics/imlib2

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		docsdir=${PREFIX}/share/doc/scrot/

.include <bsd.port.mk>
