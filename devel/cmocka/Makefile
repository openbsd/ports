# $OpenBSD: Makefile,v 1.11 2018/09/04 14:07:28 bcallah Exp $

COMMENT =		elegant unit testing framework for C

DISTNAME =		cmocka-1.1.2

SHARED_LIBS +=  	cmocka                    0.3 # 0.5

CATEGORIES =		devel

HOMEPAGE =		https://cmocka.org/

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# Apache License v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}files/1.1/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake

CONFIGURE_ARGS +=       -DUNIT_TESTING=ON

.include <bsd.port.mk>
