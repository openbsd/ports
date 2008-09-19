# $OpenBSD: Makefile,v 1.9 2008/09/19 21:14:13 kili Exp $

COMMENT-main=		tiling window manager
COMMENT-lib=		libraries for runtime configuration

V=			0.7
DISTNAME=		xmonad-$V
PKGNAME-main=		xmonad-${V}p0
PKGNAME-lib=		xmonad-lib-${V}p0
CATEGORIES=		x11
HOMEPAGE=		http://www.xmonad.org/

MULTI_PACKAGES=		-main -lib

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://hackage.haskell.org/packages/archive/xmonad/$V/

WANTLIB-main=		X11 Xext Xinerama c m

MODULES=		lang/ghc

.if defined (SUBPACKAGE) && ${SUBPACKAGE:M-main}
MODGHC_RUNTIME=	No
.endif

BUILD_DEPENDS=		:hs-x11-extras->=0.4:x11/hs-x11-extras
LIB_DEPENDS=		gmp::devel/gmp
LIB_DEPENDS-lib=
RUN_DEPENDS-lib=	:hs-x11-extras->=0.4:x11/hs-x11-extras

SETUP_CONF_ARGS=	configure -g --prefix=${PREFIX}
SETUP_CONF_ENV=		HOME=${PORTHOME} PATH=${PATH}
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
		${SETUP_PROG} register --gen-script
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${SETUP_PROG} unregister --gen-script
	perl -pi -e 's!/share/${DISTNAME}/doc/html!/share/doc/${DISTNAME}!' \
		${WRKBUILD}/register.sh

do-install:
	@cd ${WRKBUILD} && exec ${SETENV} ${SETUP_CONF_ENV} \
		${SETUP_PROG} copy --destdir=${DESTDIR}
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	@${INSTALL_MAN} ${WRKSRC}/man/xmonad.1 ${PREFIX}/man/man1
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmonad
	@${INSTALL_DATA} ${WRKSRC}/CONFIG ${PREFIX}/share/doc/xmonad
	@${INSTALL_DATA} ${WRKSRC}/man/xmonad.hs ${PREFIX}/share/doc/xmonad

post-install:
.for f in register.sh unregister.sh
	${INSTALL_SCRIPT} ${WRKBUILD}/$f ${PREFIX}/lib/${DISTNAME}
.endfor

do-regress:
	@cd ${WRKBUILD} && exec ${SETENV} ${SETUP_CONF_ENV} \
		${SETUP_PROG} test

.include <bsd.port.mk>
