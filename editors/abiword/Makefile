# $OpenBSD: Makefile,v 1.16 2001/02/18 18:44:57 brad Exp $

BROKEN=		"needs to be updated"

VERSION=	0.7.10
PKGNAME=	abiword-${VERSION}
CATEGORIES=	editors
NEED_VERSION=	1.336
MASTER_SITES=	http://www.abisource.com/downloads/Version-${VERSION}/lf/
DISTFILES=	abi-${VERSION}.tar.gz abidistfiles-${VERSION}.tar.gz \
		libiconv-${VERSION}.tar.gz unixfonts-${VERSION}.tar.gz \
		wv-${VERSION}.tar.gz
DIST_SUBDIR=	abiword

HOMEPAGE=	http://www.abisource.com/

LIB_DEPENDS=	expat.1::textproc/expat \
		png.1::graphics/png \
		gtk.1.2::x11/gtk+
RUN_DEPENDS=	ispell::textproc/ispell

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	prefix="${PREFIX}"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

USE_GMAKE=	Yes

ALL_TARGET=	compile

WRKDIST=	${WRKDIR}/abi-${VERSION}

do-configure:
	@cd ${WRKDIR}/wv; ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS} \
		--without-Magick --without-png --without-ttf

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
