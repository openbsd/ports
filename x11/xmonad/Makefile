# $OpenBSD: Makefile,v 1.45 2015/08/21 19:17:10 sthen Exp $

COMMENT-main =		tiling window manager
COMMENT-lib =		libraries for runtime configuration

DISTNAME =		xmonad-0.11
PKGNAME-main =		${DISTNAME}
PKGNAME-lib =		${DISTNAME:S,-,-lib-,}
REVISION-main =		2
REVISION-lib =		2
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

MULTI_PACKAGES =		-main -lib

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		${WANTLIB} X11 Xext Xinerama Xrandr  c m \
			pthread util
WANTLIB-lib =

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage haddock register nort

BUILD_DEPENDS =		${RUN_DEPENDS-lib}
RUN_DEPENDS-lib =	devel/hs-extensible-exceptions \
			devel/hs-mtl \
			devel/hs-syb \
			devel/hs-utf8-string>=0.3,<0.4 \
			x11/hs-X11>=1.5,<1.7
LIB_DEPENDS-main =	${LIB_DEPENDS}

# MODGHC_BUILD contains 'nort', an explicity dependency is needed for
# the -lib subpackage (plus the tweaks to MODGHC_SETUP_CONF_ARGS below).
RUN_DEPENDS-lib +=		lang/ghc=${MODGHC_VER}

post-install:
	@${INSTALL_MAN} ${WRKSRC}/man/xmonad.1 ${PREFIX}/man/man1
	@${INSTALL_DATA} ${WRKSRC}/CONFIG ${PREFIX}/share/doc/hs-${DISTNAME}
	@${INSTALL_DATA} ${WRKSRC}/man/xmonad.hs ${PREFIX}/share/doc/hs-${DISTNAME}/xmonad.hs
	@# Don't know why, but it installs the xmonad.hs into that directory:
	@rm -rf ${PREFIX}/share/${DISTNAME}

# Needs to be built with different configuration.
NO_TEST =	Yes

.include <bsd.port.mk>

# Override the 'nort' settings from ghc.port.mk, to get the correct
# flags and directories for the -lib subpackage.
MODGHC_SETUP_CONF_ARGS +=	--enable-library-profiling
MODGHC_SETUP_CONF_ARGS +=	--docdir=\$$datadir/doc/hs-\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--libsubdir=ghc/\$$pkgid
