# $OpenBSD: Makefile,v 1.14 2010/05/06 20:05:24 kili Exp $

COMMENT=		parser generator for Haskell

DISTNAME=		happy-1.18.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://www.haskell.org/happy/

# BSD3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m util

MODULES=		lang/ghc converters/libiconv
MODGHC_BUILD=		cabal hackage nort

BUILD_DEPENDS+=		::textproc/docbook \
			::textproc/docbook-xsl \
			::textproc/libxslt

# Required for building the documentation and for the regression tests:
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.61
AUTOCONF_DIR=		${WRKSRC}/doc
WRKCONF=		${AUTOCONF_DIR}

post-build:
	@cd ${WRKBUILD}/doc && exec ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKBUILD}/doc && umask 022 && pax -rw happy ${PREFIX}/share/doc

do-regress:
	@cd ${WRKBUILD}/tests && exec ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} HAPPY=${WRKBUILD}/dist/build/happy/happy \
		TEST_HAPPY_OPTS="-t ${WRKBUILD} --strict"

.include <bsd.port.mk>
