# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:51 sthen Exp $

COMMENT =	lightweight Tox client

V =		0.17.0

DISTNAME =	uTox-${V}-full
PKGNAME =	utox-${V}
MASTER_SITES =	https://github.com/uTox/uTox/releases/download/v${V}/
REVISION =	2

CATEGORIES =	net

HOMEPAGE =	https://utox.io

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xext Xrender c fontconfig freetype m pthread
WANTLIB += openal opus sodium toxcore v4lconvert vpx

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS +=	audio/openal \
		multimedia/libv4l \
		net/toxcore

COMPILER =	base-clang ports-gcc

NO_TEST =	yes

WRKDIST =	${WRKDIR}/uTox

CONFIGURE_ARGS =-DLLD_EMUL:String=${LLD_EMUL}

.include <bsd.port.mk>
