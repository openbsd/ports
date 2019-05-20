# $OpenBSD: Makefile,v 1.10 2019/05/20 04:47:01 naddy Exp $

# BROKEN-hppa =	undefined reference to __sync atomic ops

COMMENT =	multi-platform library for asynchronous I/O

VER =		1.24.1
DISTNAME =	libuv-v${VER}
PKGNAME =	libuv-${VER}
CATEGORIES =	devel

SHARED_LIBS =	uv 2.0	# 1.0

HOMEPAGE =	https://libuv.org/

MASTER_SITES =	https://dist.libuv.org/dist/v${VER}/

# BSD / GPL
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += pthread

BUILD_DEPENDS =	textproc/py-sphinx

USE_GMAKE =	Yes

CONFIGURE_STYLE = autoreconf
CONFIGURE_ENV =	cc_cv_cflags__g=no

AUTOCONF_VERSION = 2.69
AUTOMAKE_VERSION = 1.14
AUTORECONF =	sh autogen.sh

post-build:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} man -C docs

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/build/man/libuv.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
