# $OpenBSD: Makefile,v 1.2 2009/06/15 10:46:00 jasper Exp $

COMMENT=	ISIRI 6219 conforming Farsi fonts

V=		0.4
DISTNAME=	farsi_fonts_$V
PKGNAME=	farsifonts-ttf-$Vp0
CATEGORIES=	x11

HOMEPAGE=	http://www.arabeyes.org/project.php?proj=Khotot

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=arabeyes/}
EXTRACT_SUFX=		.tar.bz2

PKG_ARCH=		*
NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/farsifonts-$V
FONTSDIR=		${PREFIX}/lib/X11/fonts/farsifonts

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
