# $OpenBSD: Makefile,v 1.12 2000/07/17 07:34:57 brad Exp $

VER=		0.7.10
PKGNAME=	abiword-${VER}
CATEGORIES=	editors
NEED_VERSION=	1.310
MASTER_SITES=	http://download.abisource.com/releases/${VER}/src/lf/
DISTFILES=	abi-${VER}.tar.gz abidistfiles-${VER}.tar.gz \
		libiconv-${VER}.tar.gz unixfonts-${VER}.tar.gz \
		wv-${VER}.tar.gz
DIST_SUBDIR=	abiword

HOMEPAGE=	http://www.abisource.com/

BUILD_DEPENDS=	${PREFIX}/lib/libexpat.a::textproc/expat
LIB_DEPENDS=	png.1::graphics/png \
		gtk.1.2::x11/gtk+
RUN_DEPENDS=	ispell::textproc/ispell

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes

CONFIGURE_ARGS=	--without-Magick --without-png --without-ttf

MAKE_FLAGS=	prefix="${PREFIX}"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

WRKDIST=	${WRKDIR}/abi-${VER}

ALL_TARGET=	compile

do-configure:
	@cd ${WRKDIR}/wv; ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}

post-install:
	@cd ${PREFIX}/bin && \
	  (ln -sf ${TRUEPREFIX}/AbiSuite/bin/AbiWord AbiWord; \
	   ln -sf ${TRUEPREFIX}/AbiSuite/bin/AbiWord abiword)
	@strip ${PREFIX}/AbiSuite/bin/AbiWord_d
	@sed \
	 -e s#ABISUITE_HOME=${PREFIX}/AbiSuite#ABISUITE_HOME=${TRUEPREFIX}/AbiSuite# \
	 -e s#ABISUITE_LIBEXEC=${PREFIX}/AbiSuite#ABISUITE_LIBEXEC=${TRUEPREFIX}/AbiSuite# \
	 ${PREFIX}/AbiSuite/bin/AbiWord > ${WRKDIR}/AbiWord
	${INSTALL_SCRIPT} ${WRKDIR}/AbiWord ${PREFIX}/AbiSuite/bin

.include <bsd.port.mk>
