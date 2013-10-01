# $OpenBSD: Makefile,v 1.3 2013/10/01 09:07:18 ajacoutot Exp $

COMMENT=	farsi bornaray fonts

DISTNAME=	bfonts
PKGNAME=	farsi-bfonts-ttf-2.0
REVISION=	1

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		farsi-bfonts-ttf-extra-0.1.tar.gz:0

CATEGORIES=	fonts x11

HOMEPAGE=	http://www.bornaray.com/en_fonts.asp

# No license
PERMIT_PACKAGE_CDROM=	No license
PERMIT_PACKAGE_FTP=	No license
PERMIT_DISTFILES_FTP=	No license

MASTER_SITES = 	http://www.borna.ir/download/fonts/ \
		http://www.bornaray.com/download/fonts/
MASTER_SITES0=	https://distfiles.bsdfrog.org/

EXTRACT_SUFX=	.exe
BUILD_DEPENDS += archivers/unzip
EXTRACT_CASES += *.exe) \
	${UNZIP} -oq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

FONTSDIR=	${PREFIX}/lib/X11/fonts/farsi-bfonts

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
