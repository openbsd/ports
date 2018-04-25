# $OpenBSD: Makefile,v 1.8 2018/04/25 19:57:54 jasper Exp $

COMMENT=		library used to interact with Git repositories

MODPY_EGG_VERSION=	2.1.9
DISTNAME=		GitPython-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR ?=	

RUN_DEPENDS=		devel/py-gitdb${MODPY_FLAVOR}

.include <bsd.port.mk>
