COMMENT=		Python-powered template engine and code generator

MODPY_EGG_VERSION=	3.2.6
DISTNAME=		Cheetah3-${MODPY_EGG_VERSION}
PKGNAME=		py-cheetah-${MODPY_EGG_VERSION}
REVISION=		4
CATEGORIES=		devel textproc

HOMEPAGE=		https://cheetahtemplate.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

TEST_DEPENDS=		textproc/py-markdown${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}

MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1

FLAVORS=		python3
FLAVOR=			python3


.include <bsd.port.mk>
