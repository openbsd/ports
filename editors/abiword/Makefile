# $OpenBSD: Makefile,v 1.17 2001/02/18 23:58:37 dugsong Exp $

VERSION=	0.7.12
PKGNAME=	abiword-${VERSION}
CATEGORIES=	editors

MASTER_SITES=	http://www.abisource.com/downloads/Version-${VERSION}/lf/
DISTFILES=	abi-${VERSION}.tar.gz abidistfiles.tar.gz expat.tar.gz \
		libiconv.tar.gz unixfonts.tar.gz wv.tar.gz

DIST_SUBDIR=	abiword

HOMEPAGE=	http://www.abisource.com/

LIB_DEPENDS=	png.1::graphics/png \
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
