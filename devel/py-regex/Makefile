COMMENT=	alternative regular expression module to replace re

MODPY_EGG_VERSION=	2024.4.16
DISTNAME=	regex-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/mrabarnett/mrab-regex

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	${BUILD_PKGPATH}
do-test:
	cd ${WRKSRC}; ${MODPY_BIN} -m unittest -v regex_3.test_regex

.include <bsd.port.mk>
