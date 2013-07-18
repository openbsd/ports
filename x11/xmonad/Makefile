# $OpenBSD: Makefile,v 1.42 2013/07/18 22:03:58 kili Exp $

COMMENT-main =		tiling window manager
COMMENT-lib =		libraries for runtime configuration

DISTNAME =		xmonad-0.11
PKGNAME-main =		${DISTNAME}
PKGNAME-lib =		${DISTNAME:S,-,-lib-,}
REVISION =		1
REVISION-lib =		1
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

MULTI_PACKAGES =		-main -lib

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		${WANTLIB} X11 Xext Xinerama Xrandr c m \
			pthread util
WANTLIB-lib =

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage haddock register nort

BUILD_DEPENDS =		${RUN_DEPENDS-lib}
RUN_DEPENDS-lib =	devel/hs-extensible-exceptions \
			devel/hs-mtl \
			devel/hs-syb \
			x11/hs-X11>=1.5,<1.7
LIB_DEPENDS-main =	${LIB_DEPENDS}

# Instead of adding `nort' to MODGHC_BUILD for -main, explicitely set
# MODGHC_SETUP_CONF_ARGS and add lang/ghc to RUN_DEPENDS-lib.
# Otherwise, we may end up in xmonad configured with `nort', which
# causes xmonad-lib to be installed in the wrong place.
MODGHC_SETUP_CONF_ARGS +=	--docdir=\$$datadir/doc/hs-\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--libsubdir=ghc/\$$pkgid
MODGHC_SETUP_CONF_ARGS +=	--enable-library-profiling
RUN_DEPENDS-lib +=		lang/ghc=${MODGHC_VER}

USE_GROFF =		Yes

post-install:
	@${INSTALL_MAN} ${WRKSRC}/man/xmonad.1 ${PREFIX}/man/man1
	@${INSTALL_DATA} ${WRKSRC}/CONFIG ${PREFIX}/share/doc/hs-${DISTNAME}
	@${INSTALL_DATA} ${WRKSRC}/man/xmonad.hs ${PREFIX}/share/doc/hs-${DISTNAME}/xmonad.hs
	@# Don't know why, but it installs the xmonad.hs into that directory:
	@rm -rf ${PREFIX}/share/${DISTNAME}

# Needs to be built with different configuration.
NO_TEST =	Yes

.include <bsd.port.mk>
