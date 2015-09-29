# $OpenBSD: Makefile,v 1.26 2015/09/29 10:52:11 sthen Exp $

COMMENT=		cross-python path, ini-parsing, io, code, log facilities

MODPY_EGG_VERSION =	1.4.23
DISTNAME=		py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		1

CATEGORIES=		devel

HOMEPAGE=		http://doc.pylib.org/en/latest/

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
	cd ${WRKBUILD} && ${LOCALBASE}/bin/py.test testing

.include <bsd.port.mk>
