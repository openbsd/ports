COMMENT=		Python-powered template engine and code generator

MODPY_DISTV=	3.2.6
DISTNAME=		Cheetah3-${MODPY_DISTV}
PKGNAME=		py-cheetah-${MODPY_DISTV}
REVISION=		5
CATEGORIES=		devel textproc

HOMEPAGE=		https://cheetahtemplate.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

TEST_DEPENDS=		textproc/py-markdown \
			textproc/py-pygments

MAKE_ENV+=		CHEETAH_USE_SETUPTOOLS=1

.include <bsd.port.mk>
