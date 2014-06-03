# $OpenBSD: Makefile,v 1.13 2014/06/03 11:34:24 rpointel Exp $

COMMENT=		I18N/L10N tools for Python

MODPY_EGG_VERSION=	1.3
REVISION = 0
DISTNAME=		Babel-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=    		devel

HOMEPAGE=		http://babel.pocoo.org/
MASTER_SITES=		${MASTER_SITE_PYPI:=B/Babel/}

MODULES=		lang/python
PKG_ARCH=		*

# BSD
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=		python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-tz${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-tz${MODPY_FLAVOR}

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/pybabel \
		${PREFIX}/bin/pybabel${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
