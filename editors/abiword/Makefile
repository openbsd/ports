# Makefile for:		abiword
# Version required:	0.7.6
# Date created:		6 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 1999/11/08 14:08:48 dugsong Exp $

PKGNAME=	abiword-0.7.6

CATEGORIES=	editors

MAINTAINER=	dugsong@monkey.org

DIST_SUBDIR=	${PKGNAME}

VERS=		0.7.6

DISTFILES=	abi-${VERS}${EXTRACT_SUFX} \
		abidistfiles-${VERS}${EXTRACT_SUFX} \
		unixfonts-${VERS}${EXTRACT_SUFX} \
		wv-${VERS}${EXTRACT_SUFX}

MASTER_SITES=	http://www.abisource.com/downloads/Version-${VERS}/lf/

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
