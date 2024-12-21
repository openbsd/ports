COMMENT=	add support for i18n, documentation and icons to distutils

MODPY_DISTV=	2.39
DISTNAME=	python-distutils-extra-${MODPY_DISTV}
PKGNAME=	py-distutils-extra-${MODPY_DISTV}
REVISION=	2

CATEGORIES=	devel

HOMEPAGE=	https://launchpad.net/python-distutils-extra/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		https://launchpad.net/python-distutils-extra/trunk/${MODPY_DISTV}/+download/

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

# DistUtilsExtra/command/build_i18n.py
RUN_DEPENDS=	textproc/intltool

.include <bsd.port.mk>
