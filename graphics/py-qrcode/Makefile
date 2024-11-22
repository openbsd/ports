COMMENT=	QR Code image generator

MODPY_EGG_VERSION=	8.0
DISTNAME=	qrcode-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	graphics textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	graphics/py-Pillow${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-mock${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

post-install:
	rm -rf ${WRKINST}${MODPY_SITEPKG}/qrcode/tests

.include <bsd.port.mk>
