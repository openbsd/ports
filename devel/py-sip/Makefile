COMMENT=	automatically generate Python bindings for C and C++ libs

# The following ports often usually need updating together:
# devel/py-sip, www/py-qtwebengine, x11/py-qt5, x11/py-sip-qt5
# API changes fairly often, be sure to test dependent ports when updating.
MODPY_DISTV=	6.8.6

DISTNAME=	sip-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

EPOCH=		0

CATEGORIES=	devel

HOMEPAGE=	https://www.riverbankcomputing.com/software/sip/intro

# SIP license (Python like) or GPLv2/v3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	sysutils/py-packaging \
		devel/py-setuptools

.include <bsd.port.mk>
