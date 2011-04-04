# $OpenBSD: Makefile,v 1.25 2011/04/04 22:40:55 kili Exp $

COMMENT-main =		tiling window manager
COMMENT-lib =		libraries for runtime configuration

DISTNAME =		xmonad-0.9.2
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

WANTLIB-main =		${WANTLIB} X11 Xext Xinerama c gmp m pthread util
WANTLIB-lib =

MODULES =		lang/ghc converters/libiconv
# No documentation for now (haddock thinks that module `xmonad-0.9.2:Main'
# is defined in multiple files).
MODGHC_BUILD =		cabal hackage register

.if defined (SUBPACKAGE) && ${SUBPACKAGE:M-main}
MODGHC_BUILD +=		nort
.endif

BUILD_DEPENDS =		${RUN_DEPENDS-lib}
RUN_DEPENDS-lib =	x11/hs-X11>=1.5.0.0
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			devel/gmp

USE_GROFF =		Yes

post-install:
	@${INSTALL_MAN} ${WRKSRC}/man/xmonad.1 ${PREFIX}/man/man1
	@${INSTALL_DATA} ${WRKSRC}/CONFIG ${PREFIX}/share/doc/hs-${DISTNAME}
	@${INSTALL_DATA} ${WRKSRC}/man/xmonad.hs ${PREFIX}/share/doc/hs-${DISTNAME}/xmonad.hs
	@# Don't know why, but it installs the xmonad.hs into that directory:
	@rm -rf ${PREFIX}/share/hs-${DISTNAME}

# Needs to be built with different configuration.
NO_REGRESS =	Yes

.include <bsd.port.mk>
