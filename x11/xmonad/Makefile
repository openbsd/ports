# $OpenBSD: Makefile,v 1.59 2021/03/01 04:16:34 gnezdo Exp $

COMMENT =		tiling window manager

MODCABAL_STEM =		xmonad
MODCABAL_VERSION =	0.15
REVISION =		0

PKGNAME =		${DISTNAME}
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xinerama Xrandr Xss c charset ffi gmp \
			m iconv pthread util

MODULES =		devel/cabal
MODCABAL_MANIFEST = \
	X11	1.9.2	0	\
	data-default	0.7.1.1	0	\
	data-default-class	0.1.2.0	0	\
	data-default-instances-containers	0.0.1	0	\
	data-default-instances-dlist	0.0.1	0	\
	data-default-instances-old-locale	0.0.1	0	\
	dlist	1.0	0	\
	extensible-exceptions	0.1.1.4	0	\
	old-locale	1.0.0.7	2	\
	utf8-string	1.0.1.1	3	\

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/xmonad.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${DISTNAME}
	${INSTALL_DATA} ${WRKSRC}/CONFIG \
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
