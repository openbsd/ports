# $OpenBSD: Makefile,v 1.9 2019/01/04 08:53:54 pascal Exp $

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

BUILD_DEPENDS =	devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		textproc/py-sphinx

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	cc_cv_cflags__g=no

AUTOCONF_VERSION = 2.69
AUTOMAKE_VERSION = 1.14

pre-configure:
	cd ${WRKSRC} && ${AUTOCONF_ENV} sh autogen.sh

post-build:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} man -C docs

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/build/man/libuv.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
