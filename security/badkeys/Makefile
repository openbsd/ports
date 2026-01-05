COMMENT=	check cryptographic keys for known weaknesses

# standalone; intentionally no py- prefix
MODPY_DISTV=	0.0.16
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
		net/py-dnspython \
		security/py-cryptography \
		security/py-paramiko

# uncomment to enable online tests
#TEST_ENV=	RUN_ONLINETESTS=1
#pre-test:
#	cd ${WRKSRC}; HOME=${PORTHOME} ${MODPY_BIN} badkeys-cli --update-bl

.include <bsd.port.mk>
