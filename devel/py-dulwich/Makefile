COMMENT=	Python implementation of Git file formats and protocols

MODPY_DISTV=	1.2.17
DISTNAME=	dulwich-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://www.dulwich.io/

# Apache v2 or GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-urllib3

TEST_DEPENDS=	devel/git,-main \
		devel/py-fastimport \
		devel/py-greenlet \
		devel/py-mock \
		net/py-geventhttpclient

MAKE_ENV +=	LC_CTYPE=en_US.UTF-8

MODPY_PYTEST_ARGS= -v
MODPY_PYTEST_IGNORE += \
	tests/contrib/test_swift_smoke.py \
	tests/contrib/test_swift.py \
MODPY_PYTEST_IGNORE += tests/compat/test_web.py # crashes python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dulwich/tutorial
	${INSTALL_DATA} ${WRKSRC}/docs/tutorial/*.txt \
			${PREFIX}/share/doc/dulwich/tutorial

pre-test:
	sed -i '/^_DEFAULT_GIT/s,git,${LOCALBASE}/bin/git,' \
		${WRKSRC}/tests/compat/utils.py

# attempt at allowing rust/no-rust builds, but adding the crates to
# SUPDISTFILES without pulling in cargo.port.mk/rust.port.mk is a pain
#
#.include <bsd.port.arch.mk>
#.if ${PROPERTIES:Mrust}
MODPY_PYBUILD=	setuptools-rust
PKG_ARGS=	-Drust=1
#.else
#MODPY_PYBUILD=	setuptools
#MODPY_PYBUILD_ARGS= --config-setting="--build-option=--pure"
#PKG_ARGS=	-Drust=0
#.endif

.include "crates.inc"
.include <bsd.port.mk>
