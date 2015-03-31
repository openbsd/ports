# $OpenBSD: Makefile,v 1.4 2015/03/31 09:45:09 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	nice looking fonts as found on the android devices

DISTNAME=	DroidFamily
PKGNAME=	droid-fonts-0.1
REVISION=	1
CATEGORIES=	fonts x11
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.droidfonts.com

# Apache 2 License
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

NO_BUILD=	Yes
NO_TEST=	Yes

INST_DIR=	${PREFIX}/share/fonts/Droid
EXTRACT_DIR=	DroidFonts

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/${EXTRACT_DIR}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
