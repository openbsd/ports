# $OpenBSD: Makefile,v 1.11 2020/07/03 21:12:36 sthen Exp $

COMMENT =	Python driver for mongodb

MODPY_EGG_VERSION = 3.4.0
DISTNAME =	pymongo-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	1

CATEGORIES =	databases devel

HOMEPAGE =	https://github.com/mongodb/mongo-python-driver/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =	pthread ${MODPY_WANTLIB}

MODPY_PI =	Yes

MODULES =	lang/python
FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR}

# needs a running mongodb instance in 127.0.0.1:27017,
# and increased kern.somaxconn
TEST_IS_INTERACTIVE = Yes

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mle}
PKG_ARGS +=	-Dno_be=1
.else
PKG_ARGS +=	-Dno_be=0
.endif

.include <bsd.port.mk>
