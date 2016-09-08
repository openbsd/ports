# $OpenBSD: Makefile,v 1.6 2016/09/08 17:32:57 jasper Exp $

COMMENT=	farsi bornaray fonts

TYPEFACE=	farsi-bfonts
DISTNAME=	bfonts
PKGNAME=	${TYPEFACE}-ttf-2.0
REVISION=	2

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

MODULES=	font

NO_BUILD=	Yes

.include <bsd.port.mk>
