COMMENT=	check cryptographic keys for known weaknesses

MODPY_DISTV=	0.0.14
# standalone; no py- prefix/FLAVOR
DISTNAME=	badkeys-${MODPY_DISTV}

CATEGORIES=	security

HOMEPAGE=	https://badkeys.info/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

PORTHOME=	${WRKDIR}

RUN_DEPENDS=	math/py-gmpy2 \
		security/py-cryptography \
		security/py-paramiko

# requires net
pre-test:
	cd ${WRKSRC}; HOME=${PORTHOME} ${MODPY_BIN} badkeys-cli --update-bl

.include <bsd.port.mk>
