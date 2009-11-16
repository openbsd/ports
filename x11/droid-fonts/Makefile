# $OpenBSD: Makefile,v 1.1.1.1 2009/11/16 07:54:36 pyr Exp $

PKG_ARCH=	*

COMMENT=	nice looking fonts as found on the android devices

DISTNAME=	DroidFamily
PKGNAME=	droid-fonts-0.1
CATEGORIES=	x11
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.droidfonts.com

# Apache 2 License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.damieng.com/fonts/redistributed/

NO_BUILD=	Yes
NO_REGRESS=	Yes

INST_DIR=	${PREFIX}/lib/X11/fonts/Droid
EXTRACT_DIR=	DroidFonts

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/${EXTRACT_DIR}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
