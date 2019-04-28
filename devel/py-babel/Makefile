# $OpenBSD: Makefile,v 1.25 2019/04/28 20:51:30 sthen Exp $

COMMENT=		I18N/L10N tools for Python

MODPY_EGG_VERSION=	2.4.0
DISTNAME=		Babel-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=    		devel
REVISION=		0

HOMEPAGE=		http://babel.pocoo.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

RUN_DEPENDS=		devel/py-tz${MODPY_FLAVOR}
TEST_DEPENDS=		${RUN_DEPENDS}

FLAVORS=		python3
FLAVOR?=

post-install:
	mv ${PREFIX}/bin/pybabel{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
