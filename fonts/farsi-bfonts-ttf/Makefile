# $OpenBSD: Makefile,v 1.8 2019/07/14 02:16:51 naddy Exp $

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
PERMIT_PACKAGE=		No license
PERMIT_DISTFILES=	No license

MASTER_SITES = 	http://www.borna.ir/download/fonts/ \
		http://www.bornaray.com/download/fonts/
MASTER_SITES0=	https://distfiles.bsdfrog.org/

EXTRACT_SUFX=	.exe
BUILD_DEPENDS += archivers/unzip
EXTRACT_CASES += *.exe) \
	${UNZIP} -oq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

MODULES=	font

NO_BUILD=	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
