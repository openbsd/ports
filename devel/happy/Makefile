# $OpenBSD: Makefile,v 1.9 2007/07/21 17:20:57 kili Exp $

COMMENT=		parser generator for the functional language Haskell

V=			1.16
DISTNAME=		happy-${V}
CATEGORIES=		devel

HOMEPAGE=		http://www.haskell.org/ghc/
MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

MODULES=		lang/ghc
MODGHC_RUNTIME=		No

MASTER_SITES=		${HOMEPAGE}/dist/${V}/

BUILD_DEPENDS+=		::textproc/docbook \
			::textproc/docbook-xsl \
			::textproc/libxslt
LIB_DEPENDS=		gmp::devel/gmp

SETUP_CONF_ARGS=	configure -g --prefix=${PREFIX}
SETUP_CONF_ENV=		HOME=${PORTHOME} ${CONFIGURE_ENV}
SUBST_VARS=		V

# Required for building the documentation and for the regression tests:
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.61
AUTOCONF_DIR=		${WRKSRC}/doc
WRKCONF=		${AUTOCONF_DIR}

post-configure:
	@cd ${WRKSRC} && exec ${SETENV} ${SETUP_CONF_ENV} \
		runhaskell Setup.lhs ${SETUP_CONF_ARGS}

do-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		runhaskell Setup.lhs build
	@cd ${WRKSRC}/doc && exec ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} html

do-install:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		runhaskell Setup.lhs copy --destdir=${DESTDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	cd ${WRKSRC}/doc && umask 022 && pax -rw happy ${PREFIX}/share/doc

do-regress:
	@cd ${WRKSRC}/tests && exec ${SETENV} ${MAKE_ENV} \
		gmake HAPPY=${WRKBUILD}/dist/build/happy/happy \
		TEST_HAPPY_OPTS="-t ${WRKBUILD}/templates --strict"

.include <bsd.port.mk>
