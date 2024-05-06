COMMENT=	pure Python Expect-like module

MODPY_EGG_VERSION=	4.9.0
DISTNAME=	pexpect-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://pexpect.readthedocs.io/

# ISC
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODULES=	lang/python

RUN_DEPENDS=	devel/py-ptyprocess${MODPY_FLAVOR}
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	shells/bash \
		sysutils/coreutils

FLAVORS=	python3
FLAVOR=		python3

#MODPY_ADJ_FILES= tests/fakessh/ssh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-pexpect
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-pexpect

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
