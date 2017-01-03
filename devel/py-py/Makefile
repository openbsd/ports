# $OpenBSD: Makefile,v 1.29 2017/01/03 19:19:49 landry Exp $

COMMENT=		cross-python path, ini-parsing, io, code, log facilities

MODPY_EGG_VERSION =	1.4.31
DISTNAME=		py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://pylib.readthedocs.org/en/latest

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS +=		devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
