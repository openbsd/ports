COMMENT=	low-level pure Python implementation of SSHv2

MODPY_DISTV=	5.1.0
DISTNAME=	paramiko-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	security

HOMEPAGE=	https://www.paramiko.org/

# LGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-asn1 \
		security/py-bcrypt \
		security/py-cryptography \
		security/py-PyNaCl
TEST_DEPENDS=	devel/py-mock \
		devel/py-invoke \
		devel/py-test-relaxed \
		textproc/py-icecream

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paramiko
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-paramiko

.include <bsd.port.mk>
