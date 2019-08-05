# $OpenBSD: Makefile,v 1.13 2019/08/05 16:28:44 rsadowski Exp $

# BROKEN-hppa =	undefined reference to __sync atomic ops

COMMENT =	multi-platform library for asynchronous I/O

VER =		1.30.1
DISTNAME =	libuv-v${VER}
PKGNAME =	libuv-${VER}
CATEGORIES =	devel

SHARED_LIBS =	uv 2.1	# 1.0

HOMEPAGE =	https://libuv.org/

MASTER_SITES =	https://dist.libuv.org/dist/v${VER}/

# BSD / GPL
PERMIT_PACKAGE = Yes

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
