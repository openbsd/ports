COMMENT=	PEP 517 compliant PyQt build system

MODPY_DISTV=	1.18.0

DISTNAME=	pyqt_builder-${MODPY_DISTV}
PKGNAME=	py-qt-builder-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/Python-PyQt/PyQt-builder

# SIP
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-sip>=6.10.0v0 \
		sysutils/py-packaging \
		x11/qt5/qtbase

.include <bsd.port.mk>
