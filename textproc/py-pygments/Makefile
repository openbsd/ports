# $OpenBSD: Makefile,v 1.40 2021/07/24 18:33:32 sthen Exp $

COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 2.9.0

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=	textproc devel

HOMEPAGE=	https://pygments.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

# XXX requires py-test >= 6.0
NO_TEST=	Yes

.include <bsd.port.mk>
