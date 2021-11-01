# $OpenBSD: Makefile,v 1.60 2021/11/01 03:17:15 gnezdo Exp $

COMMENT =		tiling window manager

MODCABAL_STEM =		xmonad
MODCABAL_VERSION =	0.17.0

PKGNAME =		${DISTNAME}
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xinerama Xrandr Xss c charset ffi gmp \
			m iconv pthread util

MODULES =		devel/cabal
MODCABAL_MANIFEST = \
        X11     1.10.2  0       \
        data-default-class      0.1.2.0 0       \
        hsc2hs  0.68.7  1       \

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
