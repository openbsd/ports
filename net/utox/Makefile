# $OpenBSD: Makefile,v 1.3 2018/06/29 22:16:19 espie Exp $

COMMENT =	lightweight Tox client

V =		0.17.0

DISTNAME =	uTox-${V}-full
PKGNAME =	utox-${V}
MASTER_SITES =	https://github.com/uTox/uTox/releases/download/v${V}/
REVISION =	1

CATEGORIES =	net

HOMEPAGE =	https://utox.io

MAINTAINER =	Leonid Bobrov <mazocomp@disroot.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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

.include <bsd.port.mk>
