# $OpenBSD: Makefile,v 1.58 2019/09/30 12:41:12 kili Exp $

COMMENT-main =		tiling window manager
COMMENT-lib =		libraries for runtime configuration

DISTNAME =		xmonad-0.15

PKGNAME-main =		${DISTNAME}
PKGNAME-lib =		${DISTNAME:S,-,-lib-,}
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

MULTI_PACKAGES =		-main -lib

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB-main =		X11 Xext Xinerama Xrandr Xss c charset ffi gmp \
			m iconv pthread util
WANTLIB-lib =

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register nort

MODGHC_PACKAGE_KEY =	9L0IDbyIoHf7Mpz81NeFlT

# Required because of the nort tag in MODGHC_BUILD
SUBST_VARS +=		MODGHC_PACKAGE_KEY

BUILD_DEPENDS =		${RUN_DEPENDS-lib}
RUN_DEPENDS-lib =	devel/hs-data-default \
			devel/hs-extensible-exceptions \
			devel/hs-utf8-string>=0.3,<1.1 \
			x11/hs-X11>=1.8,<1.9
LIB_DEPENDS-main =	converters/libiconv \
			devel/gmp \
			devel/libffi

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
