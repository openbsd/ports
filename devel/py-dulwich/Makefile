COMMENT=	pure Python implementation of Git file formats and protocols

MODPY_DISTV=	0.22.7
DISTNAME=	dulwich-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://www.dulwich.io/

# Apache v2 or GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools-rust

RUN_DEPENDS=	www/py-urllib3

TEST_DEPENDS=	devel/git,-main \
		devel/py-fastimport \
		devel/py-greenlet \
		devel/py-mock \
		net/py-geventhttpclient

MAKE_ENV +=	LC_CTYPE=en_US.UTF-8

MODPY_PYTEST_ARGS=	--ignore tests/contrib/test_swift_smoke.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dulwich/tutorial
	${INSTALL_DATA} ${WRKSRC}/docs/tutorial/*.txt \
			${PREFIX}/share/doc/dulwich/tutorial

pre-test:
	sed -i '/^_DEFAULT_GIT/s,git,${LOCALBASE}/bin/git,' \
		${WRKSRC}/tests/compat/utils.py

.include "crates.inc"
.include <bsd.port.mk>
