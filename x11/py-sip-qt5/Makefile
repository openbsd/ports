COMMENT=	sip module support for PyQt5

MODPY_DISTV=	12.17.0

DISTNAME=	pyqt5_sip-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}

CATEGORIES=	x11

HOMEPAGE=	https://www.riverbankcomputing.com/software/sip/

# SIP license (Python-like) or GPLv2/v3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD =	setuptools

NO_TEST=	Yes

RUN_DEPENDS=	devel/py-sip

.include <bsd.port.mk>
