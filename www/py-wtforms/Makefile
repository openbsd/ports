# $OpenBSD: Makefile,v 1.20 2022/03/04 21:44:01 sthen Exp $

COMMENT=	flexible forms validation and rendering library

MODPY_EGG_VERSION=3.0.1
DISTNAME=	WTForms-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	https://wtforms.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR}

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes
USE_GMAKE=		Yes

.include <bsd.port.mk>
