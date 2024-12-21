COMMENT=	QR Code image generator

MODPY_DISTV=	8.0
DISTNAME=	qrcode-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	graphics textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	graphics/py-Pillow
TEST_DEPENDS=	devel/py-mock \
		devel/py-test-cov

post-install:
	rm -rf ${WRKINST}${MODPY_SITEPKG}/qrcode/tests

.include <bsd.port.mk>
