# $OpenBSD: Makefile,v 1.5 2007/11/19 19:59:40 kili Exp $

COMMENT=		tiling window manager

V=			0.4
DISTNAME=		xmonad-$V
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11
HOMEPAGE=		http://www.xmonad.org/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://hackage.haskell.org/packages/archive/xmonad/$V/

WANTLIB=		X11 Xext Xinerama c m

MODULES=		lang/ghc
MODGHC_RUNTIME=		No
BUILD_DEPENDS=		:hs-x11-extras->=0.4:x11/hs-x11-extras
LIB_DEPENDS=		gmp::devel/gmp

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
	@cd ${WRKBUILD} && exec ${SETENV} ${SETUP_CONF_ENV} \
		${SETUP_PROG} build

do-install:
	@cd ${WRKBUILD} && exec ${SETENV} ${SETUP_CONF_ENV} \
		${SETUP_PROG} copy --destdir=${DESTDIR}
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	@${INSTALL_MAN} ${WRKSRC}/man/xmonad.1 ${PREFIX}/man/man1

do-regress:
	@cd ${WRKBUILD} && exec ${SETENV} ${SETUP_CONF_ENV} \
		${SETUP_PROG} test

.include <bsd.port.mk>
