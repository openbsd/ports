# $OpenBSD: Makefile,v 1.11 2014/03/14 10:17:17 rpointel Exp $

COMMENT =		C library implementing server and client side
# XXX if updating, check the number in the MASTER_SITES path
DISTNAME =		libssh-0.6.3

EXTRACT_SUFX =		.tar.xz

SHARED_LIBS +=  	ssh		1.0 # 4.3
SHARED_LIBS +=  	ssh_threads	1.0 # 4.3

CATEGORIES =		security devel

HOMEPAGE =		http://www.libssh.org/
MASTER_SITES =		https://red.libssh.org/attachments/download/87/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto pthread ssl z

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build/

BUILD_DEPENDS =		devel/cmocka \
			devel/argp-standalone

CONFIGURE_ARGS +=	-DWITH_TESTING=ON

.include <bsd.port.mk>
