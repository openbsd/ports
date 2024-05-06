COMMENT=	automatically generate Python bindings for C and C++ libs

# The following ports often usually need updating together:
# devel/py-sip, www/py-qtwebengine, x11/py-qt5, x11/py-sip-qt5
# API changes fairly often, be sure to test dependent ports when updating.
MODPY_EGG_VERSION=	6.7.11

DISTNAME=	sip-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	1

EPOCH=		0

CATEGORIES=	devel

HOMEPAGE=	https://www.riverbankcomputing.com/software/sip/intro

# SIP license (Python like) or GPLv2/v3
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

COMPILER=	base-clang ports-gcc

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	sysutils/py-packaging${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR} \
		devel/py-ply${MODPY_FLAVOR} \
# until we move to python 3.11
RUN_DEPENDS+=	textproc/py-tomli${MODPY_FLAVOR}

.include <bsd.port.mk>
