# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:05 sthen Exp $

COMMENT =		C library implementing server and client side
DISTNAME =		libssh-0.8.7

SHARED_LIBS +=  	ssh		4.0 # 4.7

CATEGORIES =		security devel

HOMEPAGE =		https://www.libssh.org/
MASTER_SITES =		https://www.libssh.org/files/0.8/
EXTRACT_SUFX =		.tar.xz

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB += crypto z

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build

BUILD_DEPENDS =		devel/cmocka \
			devel/argp-standalone

CONFIGURE_ARGS +=	-DUNIT_TESTING=ON

.include <bsd.port.mk>
