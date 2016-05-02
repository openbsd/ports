# $OpenBSD: Makefile,v 1.12 2016/05/02 18:10:09 danj Exp $

COMMENT=		HTML parser/tokeniser based for HTML5

MODPY_EGG_VERSION=	0.9999999
DISTNAME=		html5lib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel www textproc
REVISION=		0

HOMEPAGE=		https://github.com/html5lib/html5lib-python/

MAINTAINER =    	Sean Levy <attila@stalphonsos.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

PKG_ARCH=		*
MODULES=		lang/python
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} \
	    --first-package-wins

.include <bsd.port.mk>
