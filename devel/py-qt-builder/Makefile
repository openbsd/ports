COMMENT=	PEP 517 compliant PyQt build system

MODPY_DISTV=	1.16.4

DISTNAME=	pyqt_builder-${MODPY_DISTV}
PKGNAME=	py-qt-builder-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/Python-PyQt/PyQt-builder

# SIP
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-sip>=6.7v0 \
		sysutils/py-packaging \
		x11/qt5/qtbase

.include <bsd.port.mk>
