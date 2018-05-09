# $OpenBSD: Makefile,v 1.1.1.1 2018/05/09 10:09:09 ajacoutot Exp $

COMMENT=		closed caption converter

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		pycaption-${MODPY_EGG_VERSION}
PKGNAME=		py-caption-${MODPY_EGG_VERSION}

CATEGORIES=		multimedia

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/py-future${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-cssutils${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

# XXX depends on py-enum34 (py2 only) and specific version of other py modules
NO_TEST=		Yes

.include <bsd.port.mk>
