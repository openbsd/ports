# $OpenBSD: Makefile,v 1.10 2000/06/12 10:05:19 fgsch Exp $

VERS=		0.7.9
PKGNAME=	abiword-${VERS}
CATEGORIES=	editors
NEED_VERSION=	1.302
MASTER_SITES=	http://www.abisource.com/downloads/Version-${VERS}/lf/
DIST_SUBDIR=	${PKGNAME}

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DISTFILES=	abi-${VERS}${EXTRACT_SUFX} \
		abidistfiles-${VERS}${EXTRACT_SUFX} \
		libiconv-${VERS}${EXTRACT_SUFX} \
		unixfonts-${VERS}${EXTRACT_SUFX} \
		wv-${VERS}${EXTRACT_SUFX}

BUILD_DEPENDS=	${PREFIX}/lib/libexpat.a::textproc/expat
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		png.1.6::graphics/png
RUN_DEPENDS=	ispell::textproc/ispell

WRKDIST=	${WRKDIR}/abi-${VERS}

USE_GMAKE=	Yes
CONFIGURE_STYLE=	gnu
ALL_TARGET=	compile

do-configure:
	cd ${WRKDIR}/wv ; ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}

post-install:
	cd ${PREFIX}/bin && \
	  (ln -sf ${TRUEPREFIX}/AbiSuite/bin/AbiWord AbiWord; \
	   ln -sf ${TRUEPREFIX}/AbiSuite/bin/AbiWord abiword)
	strip ${PREFIX}/AbiSuite/bin/AbiWord_d
	rm -f ${PREFIX}/AbiSuite/bin/AbiWord_s

.include <bsd.port.mk>
