# $OpenBSD: Makefile,v 1.7 2000/03/24 23:28:06 espie Exp $

VERS=		0.7.7
PKGNAME=	abiword-${VERS}
CATEGORIES=	editors
NEED_VERSION=	 1.230
MASTER_SITES=	http://www.abisource.com/downloads/Version-${VERS}/lf/
DIST_SUBDIR=	${PKGNAME}

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DISTFILES=	abi-${VERS}${EXTRACT_SUFX} \
		abidistfiles-${VERS}${EXTRACT_SUFX} \
		unixfonts-${VERS}${EXTRACT_SUFX} \
		wv-${VERS}${EXTRACT_SUFX}

BUILD_DEPENDS=	${PREFIX}/lib/libexpat.a::textproc/expat
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		png.1.3::graphics/png
RUN_DEPENDS=	ispell::textproc/ispell

WRKDIST=		${WRKDIR}/abi-${VERS}

GNU_CONFIGURE=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	compile

do-configure:
	cd ${WRKDIR}/wv ; ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}

post-install:
	rm -f ${PREFIX}/AbiSuite/bin/AbiWord_s

# Developer packing list generation target
makeplist:
	cd ${PREFIX} ; \
	find bin -name "[Aa]bi[Ww]ord*" | sort > ${PKGDIR}/PLIST ; \
	find AbiSuite -type f | sort >> ${PKGDIR}/PLIST ; \
	find AbiSuite -type d -exec echo @dirrm {} \; | \
	sort -r >> ${PKGDIR}/PLIST

.include <bsd.port.mk>
