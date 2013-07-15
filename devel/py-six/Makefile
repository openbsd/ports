# $OpenBSD: Makefile,v 1.2 2013/07/15 15:08:00 bcallah Exp $

COMMENT =	Python 2 and 3 compatibility library
MODPY_EGG_VERSION =	1.3.0
DISTNAME =	six-${MODPY_EGG_VERSION}
PKGNAME =	py-six-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://pythonhosted.org/six/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://pypi.python.org/packages/source/s/six/

MODULES =	lang/python

TEST_DEPENDS =	devel/py-py \
		devel/py-test

do-test:
	${MODPY_BIN} ${WRKSRC}/test_six.py

.include <bsd.port.mk>
