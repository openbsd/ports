# $OpenBSD: Makefile,v 1.18 2010/09/12 11:22:20 kili Exp $

COMMENT =	lexical analyser generator for Haskell

DISTNAME =	alex-2.3.3
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/alex/

# BSD3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		c gmp m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =          cabal hackage nort

# Required for building the documentation:
USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.61
AUTOCONF_DIR =		${WRKSRC}/doc
WRKCONF =		${AUTOCONF_DIR}

BUILD_DEPENDS +=	::textproc/docbook \
			::textproc/docbook-xsl \
			::textproc/libxslt

LIB_DEPENDS =		::devel/gmp

post-extract:
	@chmod -R a+r ${WRKSRC}

post-build:
	@cd ${WRKBUILD}/doc && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKBUILD}/doc && umask 022 && pax -rw alex ${PREFIX}/share/doc

do-regress:
	cd ${WRKBUILD}/tests && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} all

.include <bsd.port.mk>
