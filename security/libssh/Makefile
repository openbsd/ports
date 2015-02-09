# $OpenBSD: Makefile,v 1.12 2015/02/09 08:16:54 rpointel Exp $

COMMENT =		C library implementing server and client side
# XXX if updating, check the number in the MASTER_SITES path
DISTNAME =		libssh-0.6.4

SHARED_LIBS +=  	ssh		1.1 # 4.5
SHARED_LIBS +=  	ssh_threads	1.1 # 4.5

CATEGORIES =		security devel

HOMEPAGE =		http://www.libssh.org/
MASTER_SITES =		https://red.libssh.org/attachments/download/107/

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
