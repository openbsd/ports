# $OpenBSD: Makefile,v 1.3 2010/04/19 10:57:16 ajacoutot Exp $

COMMENT=	farsi bornaray fonts

DISTNAME=	bfonts
PKGNAME=	farsi-bfonts-ttf-2.0p0

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		farsi-bfonts-ttf-extra-0.1.tar.gz:0

CATEGORIES=	x11

HOMEPAGE=	http://www.bornaray.com/en_fonts.asp

# No license
PERMIT_PACKAGE_CDROM=	No license
PERMIT_PACKAGE_FTP=	No license
PERMIT_DISTFILES_CDROM= No license
PERMIT_DISTFILES_FTP=	No license

MASTER_SITES=	http://www.bornaray.com/download/fonts/
MASTER_SITES0=	http://www.bsdfrog.org/OpenBSD/distfiles/

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
