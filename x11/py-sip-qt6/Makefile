COMMENT=	sip module support for PyQt6

MODPY_EGG_VERSION=	13.6.0

DISTNAME=	PyQt6_sip-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}

WANTLIB =  pthread

CATEGORIES=	x11

HOMEPAGE=	https://www.riverbankcomputing.com/software/sip/

# SIP license (Python-like) or GPLv2/v3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
FLAVOR=		python3
FLAVORS=	python3

MODPY_PI=	Yes
MODPY_PYBUILD =	setuptools

NO_TEST=	Yes

RUN_DEPENDS=	devel/py-sip${MODPY_FLAVOR}

.include <bsd.port.mk>
