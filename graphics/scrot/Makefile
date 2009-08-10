# $OpenBSD: Makefile,v 1.7 2009/08/10 06:31:45 kili Exp $

COMMENT=		commandline screen capture util

DISTNAME=		scrot-0.8
PKGNAME=		${DISTNAME}p1
CATEGORIES=		graphics

HOMEPAGE=		http://www.linuxbrit.co.uk/scrot/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext c freetype m pthread-stubs xcb z

MASTER_SITES=		http://www.linuxbrit.co.uk/downloads/

LIB_DEPENDS=            giblib.>=1::devel/giblib \
			Imlib2.>=1::graphics/imlib2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
