# $OpenBSD: Makefile,v 1.3 2000/01/13 22:25:34 fgsch Exp $

VERS=		0.7.7
PKGNAME=	abiword-${VERS}
CATEGORIES=	editors
MASTER_SITES=	http://www.abisource.com/downloads/Version-${VERS}/lf/
DIST_SUBDIR=	${PKGNAME}

MAINTAINER=	dugsong@monkey.org

DISTFILES=	abi-${VERS}${EXTRACT_SUFX} \
		abidistfiles-${VERS}${EXTRACT_SUFX} \
		unixfonts-${VERS}${EXTRACT_SUFX} \
		wv-${VERS}${EXTRACT_SUFX}

BUILD_DEPENDS=	${PREFIX}/lib/libexpat.a:${PORTSDIR}/textproc/expat
LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+ \
		png.1.3:${PORTSDIR}/graphics/png
RUN_DEPENDS=	ispell:${PORTSDIR}/textproc/ispell

WRKSRC=		${WRKDIR}/abi-${VERS}

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	compile

do-configure:
	(cd ${WRKDIR}/wv ; ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS})

post-install:
	rm -f ${PREFIX}/AbiSuite/bin/AbiWord_s

# Developer packing list generation target
makeplist:
	(cd ${PREFIX} ; \
	find bin -name "[Aa]bi[Ww]ord*" | sort > ${PKGDIR}/PLIST ; \
	find AbiSuite -type f | sort >> ${PKGDIR}/PLIST ; \
	find AbiSuite -type d -exec echo @dirrm {} \; | \
	sort -r >> ${PKGDIR}/PLIST)

.include <bsd.port.mk>
