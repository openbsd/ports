# $OpenBSD: Makefile,v 1.9 2021/01/05 12:45:58 sthen Exp $

COMMENT =	lightweight Tox client

V =		0.18.0
REVISION =	0

DISTNAME =	uTox-${V}-full
PKGNAME =	utox-${V}
MASTER_SITES =	https://github.com/uTox/uTox/releases/download/v${V}/
FIX_EXTRACT_PERMISSIONS = Yes

CATEGORIES =	net

HOMEPAGE =	https://utox.io

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xext Xrender c dbus-1 fontconfig freetype m
WANTLIB += pthread openal opus sodium toxcore v4lconvert vpx

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS +=	audio/openal \
		multimedia/libv4l \
		x11/dbus \
		net/toxcore

COMPILER =	base-clang ports-gcc

NO_TEST =	yes

WRKDIST =	${WRKDIR}/uTox

CONFIGURE_ARGS = -DLLD_EMUL:String=${LLD_EMUL} \
		-DSTATIC_ALL=OFF \
		-DENABLE_FILTERAUDIO=OFF \
		-DENABLE_TESTS=OFF

post-extract:
	perl -i -pe 's/\r$$//' ${WRKSRC}/src/av/audio.h

.include <bsd.port.mk>
