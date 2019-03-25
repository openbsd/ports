# $OpenBSD: Makefile,v 1.16 2019/03/25 14:29:52 kn Exp $

COMMENT =		messagepack (de)serializer

# XXX: 0.5.6 is the last available version of msgpack-python, which has been
# deprecated. Updating to the newer msgpack is currently not an option as some
# of its consumers do not like the renaming.
MODPY_EGG_VERSION =	0.5.6
DISTNAME =		msgpack-python-${MODPY_EGG_VERSION}
PKGNAME =		py-msgpack-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		net textproc

HOMEPAGE =		https://msgpack.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${COMPILER_LIBCXX} ${MODPY_WANTLIB} m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
