# $OpenBSD: Makefile,v 1.27 2020/03/29 18:45:52 paco Exp $

COMMENT=	fancy interface to the Python interpreter

MODPY_EGG_VERSION=0.18
DISTNAME=	bpython-${MODPY_EGG_VERSION}
CATEGORIES=	devel
REVISION =	0

HOMEPAGE=	https://bpython-interpreter.org/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	lang/python

MODPY_SETUPTOOLS=Yes

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-curtsies${MODPY_FLAVOR} \
		devel/py-greenlet${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-urwid${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}
BUILD_DEPENDS=	devel/py-babel${MODPY_FLAVOR} \
		textproc/py-sphinx${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-mock${MODPY_FLAVOR} \
		devel/py-twisted${MODPY_FLAVOR}

.include <bsd.port.mk>
