COMMENT=	modern, extensible Python build backend used by Hatch

MODPY_EGG_VERSION=	1.7.1

DISTNAME=	hatchling-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/pypa/hatch
HOMEPAGE=	https://hatch.pypa.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-editables${MODPY_FLAVOR} \
		devel/py-pathspec${MODPY_FLAVOR} \
		devel/py-pluggy${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR}

#MODPY_PEP517=	Yes
BUILD_DEPENDS +=        devel/py-installer${MODPY_FLAVOR} \
                        devel/py-pip${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && pip wheel -v --no-index --no-cache --no-deps --no-build-isolation .

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}; \
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/*.whl

.include <bsd.port.mk>
