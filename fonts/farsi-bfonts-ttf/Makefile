COMMENT=	farsi bornaray fonts

MODFONT_FAMILY=	farsi-bfonts
DISTNAME=	bfonts
PKGNAME=	${MODFONT_FAMILY}-ttf-2.0
REVISION=	2

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} 
DISTFILES.extra = farsi-bfonts-ttf-extra-0.1.tar.gz

CATEGORIES=	fonts x11

HOMEPAGE=	http://www.bornaray.com/en_fonts.asp

# No license
PERMIT_PACKAGE=		No license
PERMIT_DISTFILES=	No license

SITES = 	http://www.borna.ir/download/fonts/ \
		http://www.bornaray.com/download/fonts/
SITES.extra =	https://distfiles.bsdfrog.org/

EXTRACT_SUFX=	.exe
BUILD_DEPENDS += archivers/unzip
EXTRACT_CASES += *.exe) \
	${UNZIP} -oq ${FULLDISTDIR}/$$archive -d ${WRKDIR};;

MODULES=	font

NO_BUILD=	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
