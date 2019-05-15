# $OpenBSD: Makefile,v 1.27 2019/05/15 12:04:35 kmos Exp $

COMMENT=		I18N/L10N tools for Python

MODPY_EGG_VERSION=	2.4.0
DISTNAME=		Babel-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=    		devel
REVISION=		1

HOMEPAGE=		http://babel.pocoo.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

RUN_DEPENDS=		devel/py-tz${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR?=

post-install:
	mv ${PREFIX}/bin/pybabel{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
