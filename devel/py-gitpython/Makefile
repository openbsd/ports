# $OpenBSD: Makefile,v 1.7 2016/04/25 09:17:06 danj Exp $

COMMENT=		library used to interact with Git repositories

MODPY_EGG_VERSION=	1.0.2
DISTNAME=		GitPython-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-gitdb

.include <bsd.port.mk>
