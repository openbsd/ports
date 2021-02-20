# $OpenBSD: Makefile,v 1.37 2021/02/20 13:20:18 sthen Exp $

COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 2.5.2

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=	textproc devel
REVISION=	3

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
