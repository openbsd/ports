# $OpenBSD: Makefile,v 1.18 2018/10/23 19:28:18 jasper Exp $

COMMENT =		C library implementing server and client side
DISTNAME =		libssh-0.8.4

SHARED_LIBS +=  	ssh		4.0 # 4.5

CATEGORIES =		security devel

HOMEPAGE =		https://www.libssh.org/
MASTER_SITES =		https://www.libssh.org/files/0.8/
EXTRACT_SUFX =		.tar.xz

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto pthread z

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build

BUILD_DEPENDS =		devel/cmocka \
			devel/argp-standalone

CONFIGURE_ARGS +=	-DUNIT_TESTING=ON

.include <bsd.port.mk>
