# $OpenBSD: Makefile,v 1.21 2022/03/05 16:36:35 ajacoutot Exp $

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

BUILD_DEPENDS=		devel/py-babel${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR}

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes
USE_GMAKE=		Yes

.include <bsd.port.mk>
