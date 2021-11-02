# $OpenBSD: Makefile,v 1.13 2021/11/02 00:00:49 sthen Exp $

COMMENT=		library used to interact with Git repositories

MODPY_EGG_VERSION=	2.1.9
DISTNAME=		GitPython-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		3

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR =	python3	

RUN_DEPENDS=		devel/py-gitdb${MODPY_FLAVOR}

.include <bsd.port.mk>
