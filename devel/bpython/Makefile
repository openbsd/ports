# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:01 espie Exp $

COMMENT=	fancy interface to the Python interpreter

MODPY_EGG_VERSION=0.12
DISTNAME=	bpython-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://bpython-interpreter.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	lang/python

MODPY_SETUPTOOLS=Yes

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-gobject3 \
		devel/py-urwid \
		textproc/py-pygments
TEST_DEPENDS=devel/py-mock \
		devel/py-twisted/core \
		${RUN_DEPENDS}

.include <bsd.port.mk>
