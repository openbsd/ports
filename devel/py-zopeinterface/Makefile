# $OpenBSD: Makefile,v 1.16 2015/04/02 14:21:16 jasper Exp $

COMMENT=	object interface infrastructure from Zope 3

MODPY_EGG_VERSION=	3.6.1
REVISION=	2

DISTNAME=	zope.interface-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeinterface-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://pypi.python.org/pypi/zope.interface

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

WANTLIB +=	${MODPY_WANTLIB}

do-test: install
	for f in `ls ${WRKSRC}/src/zope/interface/tests/test_*.py`; do \
	  ${MODPY_BIN} -m zope.interface.tests.`basename $$f .py` || true; \
	done

.include <bsd.port.mk>
