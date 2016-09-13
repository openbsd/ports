# $OpenBSD: Makefile,v 1.34 2016/09/13 14:40:29 naddy Exp $

COMMENT =	lexical analyser generator for Haskell

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =	alex-3.1.4
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/alex/

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c iconv m pthread util

MODULES =		lang/ghc
MODGHC_BUILD =          cabal hackage nort

LIB_DEPENDS =		converters/libiconv

# Required for building the documentation:
USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.61
AUTOCONF_DIR =		${WRKSRC}/doc
WRKCONF =		${AUTOCONF_DIR}

BUILD_DEPENDS +=	devel/hs-QuickCheck>=2 \
			textproc/docbook-xsl

post-build:
	@cd ${WRKBUILD}/doc && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKBUILD}/doc && umask 022 && pax -rw alex ${PREFIX}/share/doc

do-test:
	cd ${WRKBUILD}/tests && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		all

.include <bsd.port.mk>
