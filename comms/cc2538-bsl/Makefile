COMMENT=	boot-loader flash tool for TI CC2538, CC26xx, CC13xx

MODPY_EGG_VERSION=	2.1
GH_ACCOUNT=	JelmerT
GH_PROJECT=	cc2538-bsl
GH_COMMIT=	208cf7a79c6443d3f1c218d8fee1d18096165664
DISTNAME=	cc2538-bsl-${MODPY_EGG_VERSION}pl20240918

CATEGORIES=	comms

HOMEPAGE=	https://github.com/JelmerT/cc2538-bsl

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
# normally uses setuptools_scm, but needs sdist or git checkout. patched;
# remove patches and switch to setuptools_scm if there's a proper release.
MODPY_PYBUILD=	setuptools

NO_TEST=	Yes

RUN_DEPENDS=	devel/py-serial${MODPY_FLAVOR} \
		devel/py-intelhex${MODPY_FLAVOR} \
		devel/py-magic${MODPY_FLAVOR}

.include <bsd.port.mk>
