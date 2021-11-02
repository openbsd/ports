# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:13 sthen Exp $

COMMENT =	open source PS4 and PS5 remote play client

V =		v2.1.1
DISTNAME =	chiaki-${V}-src
PKGNAME =	${DISTNAME:S/-v/-/g:S/-src//g}
REVISION =	0

WRKSRC =	${WRKDIR}/chiaki

CATEGORIES =	games

HOMEPAGE =	https://git.sr.ht/~thestr4ng3r/chiaki

# AGPLv3 with OpenSSL exception
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5OpenGL Qt5Svg Qt5Widgets SDL2 avcodec avutil c crypto
WANTLIB += m opus

MASTER_SITES =		https://git.sr.ht/~thestr4ng3r/chiaki/refs/download/${V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =		devel/cmake \
			lang/python \
			x11/qt5

BUILD_DEPENDS =		devel/protobuf-c \
			devel/py-protobuf,python3
LIB_DEPENDS =		devel/sdl2 \
			audio/opus \
			graphics/ffmpeg \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg
			
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/chiaki
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/psn-account-id.py \
		${PREFIX}/share/examples/chiaki/

.include <bsd.port.mk>
