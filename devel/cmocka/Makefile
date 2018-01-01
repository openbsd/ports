# $OpenBSD: Makefile,v 1.10 2018/01/01 18:11:46 bcallah Exp $

COMMENT =		elegant unit testing framework for C

DISTNAME =		cmocka-1.1.1
REVISION =		0

EXTRACT_SUFX =		.tar.xz

SHARED_LIBS +=  	cmocka                    0.2 # 0.4

CATEGORIES =		devel

HOMEPAGE =		https://cmocka.org/
MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# Apache License v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}files/1.1/

MODULES =		devel/cmake

CONFIGURE_ARGS +=       -DUNIT_TESTING=ON

.include <bsd.port.mk>
