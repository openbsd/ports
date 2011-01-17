# $OpenBSD: Makefile,v 1.16 2011/01/17 14:57:38 landry Exp $

COMMENT=	simple login manager

DISTNAME=	slim-1.3.2
REVISION=	1

CATEGORIES=	x11
HOMEPAGE=	http://slim.berlios.de/

MAINTAINER=	Landry Breuil <gaston@gcu.info>
MASTER_SITES=	${MASTER_SITE_BERLIOS:=slim/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes
LIB_DEPENDS=	graphics/jpeg \
		graphics/png

WANTLIB=	X11 Xft Xmu Xrender fontconfig c m stdc++ z freetype jpeg png

MAKE_FILE=	Makefile.openbsd
MAKE_FLAGS+=	CFGDIR=${SYSCONFDIR}
FAKE_FLAGS+=	PREFIX=${PREFIX} \
		CFGDIR=${PREFIX}/share/examples/slim

pre-configure:
	${SUBST_CMD} ${WRKSRC}/slim.1 ${WRKSRC}/slim.conf

.include <bsd.port.mk>
