# $OpenBSD: Makefile,v 1.9 2007/07/21 17:20:20 kili Exp $

COMMENT=	documentation tool for the functional language Haskell

V=		0.8
DISTNAME=	haddock-${V}
PKGNAME=	haddock-${V}
DISTFILES=	${DISTNAME}-src.tar.gz
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/haddock/
MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	c m

MODULES=	lang/ghc
MODGHC_RUNTIME=	No

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS+=	::textproc/docbook \
		::textproc/docbook-xsl \
		::textproc/libxslt
LIB_DEPENDS=	gmp::devel/gmp

SETUP_CONF_ARGS=	configure -g --prefix=${PREFIX}
SETUP_CONF_ENV=		HOME=${PORTHOME} ${CONFIGURE_ENV}
SUBST_VARS=		V

NO_REGRESS=		Yes

# Required for building the documentation:
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
	cd ${WRKSRC}/doc && umask 022 && pax -rw haddock ${PREFIX}/share/doc

.include <bsd.port.mk>
