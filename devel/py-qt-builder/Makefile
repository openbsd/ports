COMMENT=	PEP 517 compliant PyQt build system

MODPY_EGG_VERSION=	1.16.4

DISTNAME=	pyqt_builder-${MODPY_EGG_VERSION}
PKGNAME=	py-qt-builder-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/Python-PyQt/PyQt-builder

# SIP
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-sip${MODPY_FLAVOR}>=6.7v0 \
		sysutils/py-packaging${MODPY_FLAVOR} \
		x11/qt5/qtbase

.include <bsd.port.mk>
