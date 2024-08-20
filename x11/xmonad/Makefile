COMMENT =		tiling window manager

MODCABAL_STEM =		xmonad
MODCABAL_VERSION =	0.18.0

PKGNAME =		${DISTNAME}
CATEGORIES =		x11
HOMEPAGE =		https://www.xmonad.org/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xinerama Xrandr Xss c ffi gmp \
			m iconv pthread util

MODULES =		devel/cabal
MODCABAL_MANIFEST = \
	X11	1.10.3	0	\
	data-default-class	0.1.2.0	0	\
	hsc2hs	0.68.10	2

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

FIX_CRLF_FILES = xmonad.cabal

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/xmonad.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${DISTNAME}
	${INSTALL_DATA} ${WRKSRC}/TUTORIAL.md \
		${PREFIX}/share/doc/${DISTNAME}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${DISTNAME}
	${INSTALL_DATA} ${FILESDIR}/xmonad-config.cabal \
		${PREFIX}/share/examples/${DISTNAME}
	${INSTALL_SCRIPT} ${FILESDIR}/build \
		${PREFIX}/share/examples/${DISTNAME}
	${INSTALL_DATA} ${WRKSRC}/man/xmonad.hs \
		${PREFIX}/share/examples/${DISTNAME}

# Needs to be built with different configuration.
NO_TEST =	Yes

.include <bsd.port.mk>
