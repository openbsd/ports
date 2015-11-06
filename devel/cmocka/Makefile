# $OpenBSD: Makefile,v 1.6 2015/11/06 20:58:48 rpointel Exp $

COMMENT =		elegant unit testing framework for C

DISTNAME =		cmocka-1.0.1

EXTRACT_SUFX =		.tar.xz

SHARED_LIBS +=  	cmocka                    0.1 # 0.3

CATEGORIES =		devel

HOMEPAGE =		https://cmocka.org/

# Apache License v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/files/1.0/

MODULES =		devel/cmake

CONFIGURE_ARGS +=       -DUNIT_TESTING=ON

.include <bsd.port.mk>
