# $OpenBSD: Makefile,v 1.2 2011/07/19 16:46:09 jasper Exp $

PKG_ARCH=	*

COMMENT=	nice looking fonts as found on the android devices

DISTNAME=	DroidFamily
PKGNAME=	droid-fonts-0.1
REVISION=	0
CATEGORIES=	fonts x11
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.droidfonts.com

# Apache 2 License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

NO_BUILD=	Yes
NO_REGRESS=	Yes

INST_DIR=	${PREFIX}/lib/X11/fonts/Droid
EXTRACT_DIR=	DroidFonts

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/${EXTRACT_DIR}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
