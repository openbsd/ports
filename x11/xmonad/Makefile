# $OpenBSD: Makefile,v 1.10 2010/04/22 22:00:45 kili Exp $

COMMENT-main =		tiling window manager
COMMENT-lib =		libraries for runtime configuration

DISTNAME =		xmonad-0.9.1
PKGNAME-main =		${DISTNAME}
PKGNAME-lib =		${DISTNAME:S,-,-lib-,}
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

MULTI_PACKAGES =		-main -lib

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB-main =		X11 Xext Xinerama c m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage register

.if defined (SUBPACKAGE) && ${SUBPACKAGE:M-main}
MODGHC_BUILD +=		nort
.endif

BUILD_DEPENDS =		:hs-X11->=1.5.0.0:x11/hs-X11
LIB_DEPENDS-lib =	:hs-X11->=1.5.0.0:x11/hs-X11

USE_X11 =		Yes

post-install:
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	@${INSTALL_MAN} ${WRKSRC}/man/xmonad.1 ${PREFIX}/man/man1
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmonad
	@${INSTALL_DATA} ${WRKSRC}/CONFIG ${PREFIX}/share/doc/xmonad
	@${INSTALL_DATA} ${WRKSRC}/man/xmonad.hs ${PREFIX}/share/doc/xmonad

# Needs to be built with different configuration.
NO_REGRESS =	Yes

.include <bsd.port.mk>
