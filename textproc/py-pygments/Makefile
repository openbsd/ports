# $OpenBSD: Makefile,v 1.39 2021/03/16 12:27:38 sthen Exp $

COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 2.8.1

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=	textproc devel

HOMEPAGE=	https://pygments.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
