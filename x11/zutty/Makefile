# $OpenBSD: Makefile,v 1.1.1.1 2022/01/14 19:25:17 sdk Exp $

COMMENT =	X terminal which uses OpenGL ES Compute Shaders

GH_ACCOUNT =	tomszilagyi
GH_PROJECT =	zutty
GH_TAGNAME =	0.11

CATEGORIES =	x11

HOMEPAGE =	https://tomscii.sig7.se/zutty

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

WANTLIB += ${COMPILER_LIBCXX} EGL GLESv2 ICE SM X11 Xau Xdmcp
WANTLIB += Xext Xmu Xt c freetype m xcb z

COMPILER=	base-clang ports-gcc

do-configure:
	cd ${WRKSRC} && env -i ${CONFIGURE_ENV} \
		${MODPY_BIN} ./waf configure --prefix=${PREFIX}

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MODPY_BIN} ./waf -v

do-install:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MODPY_BIN} ./waf install \
		--destdir=${DESTDIR}

.include <bsd.port.mk>
