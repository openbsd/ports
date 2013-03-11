# $OpenBSD: Makefile,v 1.2 2013/03/11 11:06:05 espie Exp $

COMMENT=	ISIRI 6219 conforming Farsi fonts

V=		0.4
DISTNAME=	farsi_fonts_$V
PKGNAME=	farsifonts-ttf-$V
REVISION=	1
CATEGORIES=	fonts x11

HOMEPAGE=	http://www.arabeyes.org/project.php?proj=Khotot

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=arabeyes/}
EXTRACT_SUFX=		.tar.bz2

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/farsifonts-$V
FONTSDIR=		${PREFIX}/lib/X11/fonts/farsifonts

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
