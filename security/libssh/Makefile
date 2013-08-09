# $OpenBSD: Makefile,v 1.8 2013/08/09 19:14:50 rpointel Exp $

COMMENT =		C library implementing server and client side
# XXX if updating, check the number in the MASTER_SITES path
DISTNAME =		libssh-0.5.5

SHARED_LIBS +=  	ssh		0.0 # 4.2
SHARED_LIBS +=  	ssh_threads	0.0 # 4.2

CATEGORIES =		security devel

HOMEPAGE =		http://www.libssh.org/
MASTER_SITES =		https://red.libssh.org/attachments/download/51/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto ssl z

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build/

BUILD_DEPENDS =		devel/cmockery

CONFIGURE_ARGS +=	-DWITH_TESTING=ON

.include <bsd.port.mk>
