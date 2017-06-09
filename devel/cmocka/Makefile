# $OpenBSD: Makefile,v 1.9 2017/06/09 13:36:08 czarkoff Exp $

COMMENT =		elegant unit testing framework for C

DISTNAME =		cmocka-1.1.1

EXTRACT_SUFX =		.tar.xz

SHARED_LIBS +=  	cmocka                    0.2 # 0.4

CATEGORIES =		devel

HOMEPAGE =		https://cmocka.org/
MAINTAINER =		Brian Callahan <bcallah@devio.us>

# Apache License v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}files/1.1/

MODULES =		devel/cmake

CONFIGURE_ARGS +=       -DUNIT_TESTING=ON

.include <bsd.port.mk>
