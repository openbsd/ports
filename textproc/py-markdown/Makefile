COMMENT=		text-to-HTML conversion tool

MODPY_EGG_VERSION=	3.3.6
DISTNAME=		Markdown-${MODPY_EGG_VERSION}
PKGNAME=		py-markdown-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-importlib-metadata${MODPY_FLAVOR}

TEST_DEPENDS=		${BUILD_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-coverage${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

do-test:
	ln -fs ${LOCALBASE}/bin/coverage3 ${WRKDIR}/bin/coverage
	cd ${WRKSRC}; ${SETENV} ${ALL_TEST_ENV} make test

.include <bsd.port.mk>
