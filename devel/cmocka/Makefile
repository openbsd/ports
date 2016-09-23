# $OpenBSD: Makefile,v 1.8 2016/09/23 19:45:39 rpointel Exp $

COMMENT =		elegant unit testing framework for C

DISTNAME =		cmocka-1.1.0

EXTRACT_SUFX =		.tar.xz

SHARED_LIBS +=  	cmocka                    0.2 # 0.4

CATEGORIES =		devel

HOMEPAGE =		https://cmocka.org/

# Apache License v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/files/1.1/

MODULES =		devel/cmake

CONFIGURE_ARGS +=       -DUNIT_TESTING=ON

.include <bsd.port.mk>
