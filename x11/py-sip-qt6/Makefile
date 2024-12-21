COMMENT=	sip module support for PyQt6

MODPY_DISTV=	13.8.0

DISTNAME=	PyQt6_sip-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
REVISION=	0

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
