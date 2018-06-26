# $OpenBSD: Makefile,v 1.17 2018/06/26 20:45:41 rsadowski Exp $

COMMENT =		C library implementing server and client side
DISTNAME =		libssh-0.7.5

SHARED_LIBS +=  	ssh		3.0 # 4.5
SHARED_LIBS +=  	ssh_threads	2.0 # 4.5

CATEGORIES =		security devel

HOMEPAGE =		https://www.libssh.org/
MASTER_SITES =		https://www.libssh.org/files/0.7/
EXTRACT_SUFX =		.tar.xz

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto pthread z

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build

BUILD_DEPENDS =		devel/cmocka \
			devel/argp-standalone

CONFIGURE_ARGS +=	-DWITH_TESTING=ON

.include <bsd.port.mk>
