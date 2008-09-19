# $OpenBSD: Makefile,v 1.4 2008/09/19 21:57:16 kili Exp $

COMMENT=		missing bindings to the X11 graphics library for GHC

V=			0.4
DISTNAME=		X11-extras-$V
PKGNAME=		hs-x11-extras-${V}p0

CATEGORIES=		x11

HOMEPAGE=		http://hackage.haskell.org/cgi-bin/hackage-scripts/package/${DISTNAME}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://hackage.haskell.org/packages/archive/X11-extras/$V/

MODULES=		lang/ghc

BUILD_DEPENDS=		::devel/haddock

SETUP_CONF_ARGS=	configure -g --prefix=${PREFIX}
SETUP_CONF_ENV=		HOME=${PORTHOME} ${CONFIGURE_ENV}
SETUP_PROG=		${WRKSRC}/Setup
SUBST_VARS=		V

USE_X11=		Yes

do-configure:
	@cd ${WRKSRC} && ghc --make -o ${SETUP_PROG} Setup.lhs
	@cd ${WRKBUILD} && exec ${SETENV} ${SETUP_CONF_ENV} \
		${SETUP_PROG} ${SETUP_CONF_ARGS}

do-build:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} build
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} haddock
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} register --gen-script
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} unregister --gen-script
	perl -pi -e 's!/share/${DISTNAME}/doc/html!/share/doc/${DISTNAME}!' \
		${WRKBUILD}/register.sh

do-install:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} copy --destdir=${DESTDIR}

post-install:
	mv ${PREFIX}/share/${DISTNAME}/doc/html ${PREFIX}/share/doc/${DISTNAME}
	rm -rf ${PREFIX}/share/${DISTNAME}
.for f in register.sh unregister.sh
	${INSTALL_SCRIPT} ${WRKBUILD}/$f ${PREFIX}/lib/${DISTNAME}
.endfor

do-regress:
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} test

.include <bsd.port.mk>
