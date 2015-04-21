# $OpenBSD: Makefile,v 1.17 2015/04/21 18:33:49 sthen Exp $

COMMENT=	object interface infrastructure from Zope 3

MODPY_EGG_VERSION=	3.6.1
REVISION=	3

DISTNAME=	zope.interface-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeinterface-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://pypi.python.org/pypi/zope.interface

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes


do-test: install
	for f in `ls ${WRKSRC}/src/zope/interface/tests/test_*.py`; do \
	  ${MODPY_BIN} -m zope.interface.tests.`basename $$f .py` || true; \
	done

.include <bsd.port.mk>
