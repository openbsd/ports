# $OpenBSD: Makefile,v 1.28 2021/11/02 00:01:41 sthen Exp $

COMMENT =		messagepack (de)serializer

MODPY_EGG_VERSION =	0.6.2
EPOCH =			0
DISTNAME =		msgpack-${MODPY_EGG_VERSION}
PKGNAME =		py-msgpack-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =		net textproc

HOMEPAGE =		https://msgpack.org/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} ${MODPY_WANTLIB} m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
