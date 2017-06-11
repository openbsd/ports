# $OpenBSD: Makefile,v 1.15 2017/06/11 17:44:26 rsadowski Exp $

COMMENT=	fancy interface to the Python interpreter

MODPY_EGG_VERSION=0.16
DISTNAME=	bpython-${MODPY_EGG_VERSION}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://bpython-interpreter.org/
MAINTAINER=	Brian Callahan <bcallah@devio.us>

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
		devel/py-twisted \
		${RUN_DEPENDS}

.include <bsd.port.mk>
