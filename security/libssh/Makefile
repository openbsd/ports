# $OpenBSD: Makefile,v 1.16 2017/09/21 17:07:52 rsadowski Exp $

COMMENT =		C library implementing server and client side
# XXX if updating, check the number in the MASTER_SITES path
DISTNAME =		libssh-0.7.5

SHARED_LIBS +=  	ssh		3.0 # 4.5
SHARED_LIBS +=  	ssh_threads	2.0 # 4.5

CATEGORIES =		security devel

HOMEPAGE =		https://www.libssh.org/
MASTER_SITES =		https://red.libssh.org/attachments/download/218/
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
