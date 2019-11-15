# $OpenBSD: Makefile,v 1.4 2019/11/15 23:00:54 kmos Exp $

COMMENT=		closed caption converter

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		pycaption-${MODPY_EGG_VERSION}
PKGNAME=		py-caption-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		multimedia

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST=		Yes

RUN_DEPENDS=		devel/py-future${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-cssutils${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

# Tests not included in current tarball
#
# Pull request made - https://github.com/pbs/pycaption/pull/191
NO_TEST=		Yes

.include <bsd.port.mk>
