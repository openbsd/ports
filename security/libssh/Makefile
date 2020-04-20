# $OpenBSD: Makefile,v 1.22 2020/04/20 11:28:34 jasper Exp $

COMMENT =		C library implementing server and client side
V =			0.9.4
DISTNAME =		libssh-${V}

SHARED_LIBS +=  	ssh		4.1 # 4.8

CATEGORIES =		security devel

HOMEPAGE =		https://www.libssh.org/
MASTER_SITES =		https://www.libssh.org/files/${V:R}/
EXTRACT_SUFX =		.tar.xz

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB += crypto z

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build

BUILD_DEPENDS =		devel/cmocka \
			devel/argp-standalone

CONFIGURE_ARGS +=	-DUNIT_TESTING=ON

.include <bsd.port.mk>
