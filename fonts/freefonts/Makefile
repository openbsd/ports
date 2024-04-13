COMMENT=	collection of ATM fonts from the CICA archives

DISTNAME=	freefonts-0.10
REVISION=	3
CATEGORIES=	fonts x11

SITES=		https://download.gimp.org/pub/gimp/fonts/

# lots of different custom licenses, the worst one wins
PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
FREEFONTDIR=	${PREFIX}/share/fonts

do-install:
	${INSTALL_DATA_DIR} ${FREEFONTDIR}
	cd ${WRKDIST} && tar -cf - -s '/^.*fonts.dir//' freefont | (cd ${FREEFONTDIR} && tar -xf -)
	rm ${PREFIX}/share/fonts/${PATCHORIG}

.include <bsd.port.mk>
