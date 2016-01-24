# $OpenBSD: Makefile,v 1.6 2016/01/24 13:46:17 shadchin Exp $

COMMENT=	futures implementation for Python

MODPY_EGG_VERSION=	3.0.4
DISTNAME=	futures-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS =		lang/python/${MODPY_VERSION},-tests

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_futures.py

.include <bsd.port.mk>
