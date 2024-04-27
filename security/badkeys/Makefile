COMMENT=	check cryptographic keys for known weaknesses

MODPY_EGG_VERSION=	0.0.8
# standalone; no py- prefix/FLAVOR
DISTNAME=	badkeys-${MODPY_EGG_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://badkeys.info/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

PORTHOME=	${WRKSRC}

RUN_DEPENDS=	math/py-gmpy2${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		security/py-paramiko${MODPY_FLAVOR}

# requires net
pre-test:
	cd ${WRKSRC}; HOME=${PORTHOME} ${MODPY_BIN} badkeys-cli --update-bl

.include <bsd.port.mk>
