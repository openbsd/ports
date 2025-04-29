COMMENT=	handle wire-format packets, zone files, etc

MODPY_DISTV=	0.9.26
DISTNAME=	dnslib-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	https://github.com/paulc/dnslib

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

do-test:
	${SUBST_CMD} ${WRKSRC}/run_tests.sh
	cd ${WRKSRC} && ./run_tests.sh

.include <bsd.port.mk>
