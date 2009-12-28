# $OpenBSD: Makefile,v 1.1.1.1 2009/12/28 17:41:43 ajacoutot Exp $

COMMENT=	farsi bornaray fonts

DISTNAME=	bfonts
PKGNAME=	farsi-bfonts-ttf-2.0

CATEGORIES=	x11

HOMEPAGE=	http://www.bornaray.com/en_fonts.asp

# No license
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES=	http://www.bornaray.com/download/fonts/

EXTRACT_SUFX=	.exe
BUILD_DEPENDS += :unzip-*:archivers/unzip
EXTRACT_CASES += *.exe) \
	${UNZIP} -oq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

FONTSDIR=	${PREFIX}/lib/X11/fonts/farsi-bfonts

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
