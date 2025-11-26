COMMENT=	sip module support for PyQt6

MODPY_DISTV=	13.10.0

DISTNAME=	pyqt6_sip-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
REVISION=	0

CATEGORIES=	x11

HOMEPAGE=	https://www.riverbankcomputing.com/software/sip/

# SIP license (Python-like) or GPLv2/v3
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD =	setuptools

NO_TEST=	Yes

RUN_DEPENDS=	devel/py-sip

.include <bsd.port.mk>
