# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:25 espie Exp $

COMMENT =		C library implementing server and client side
# XXX if updating, check the number in the MASTER_SITES path
DISTNAME =		libssh-0.5.4

SHARED_LIBS +=  	ssh		0.0 # 4.2
SHARED_LIBS +=  	ssh_threads	0.0 # 4.2

CATEGORIES =		security devel

HOMEPAGE =		http://www.libssh.org/
MASTER_SITES =		https://red.libssh.org/attachments/download/41/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto ssl z

MODULES =		devel/cmake

WRKBUILD =		${WRKDIST}/build/

BUILD_DEPENDS =		devel/cmockery

CONFIGURE_ARGS +=	-DWITH_TESTING=ON

.include <bsd.port.mk>
