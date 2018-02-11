# $OpenBSD: Makefile,v 1.4 2018/02/11 18:31:35 pascal Exp $

COMMENT =	multi-platform library for asynchronous I/O

VER =		1.19.1
DISTNAME =	libuv-v${VER}
PKGNAME =	libuv-${VER}
CATEGORIES =	devel

SHARED_LIBS =	uv 1.0	# 1.0

HOMEPAGE =	http://libuv.org/

MASTER_SITES =	http://dist.libuv.org/dist/v${VER}/

# BSD / GPL
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += pthread

# for atomic builtins
MODULES =	gcc4
MODGCC4_ARCHS =	arm

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
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh autogen.sh

post-build:
	cd ${WRKSRC} && ${MAKE_PROGRAM} man -C docs

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/build/man/libuv.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
