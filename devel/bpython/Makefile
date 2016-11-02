# $OpenBSD: Makefile,v 1.12 2016/11/02 22:38:39 jasper Exp $

COMMENT=	fancy interface to the Python interpreter

MODPY_EGG_VERSION=0.15
DISTNAME=	bpython-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://bpython-interpreter.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	lang/python

MODPY_SETUPTOOLS=Yes

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-curtsies \
		devel/py-greenlet \
		devel/py-six \
		devel/py-urwid \
		textproc/py-pygments \
		www/py-requests
BUILD_DEPENDS=	devel/py-babel \
		textproc/py-sphinx
TEST_DEPENDS=	devel/py-mock \
		devel/py-twisted/core \
		${RUN_DEPENDS}

.include <bsd.port.mk>
