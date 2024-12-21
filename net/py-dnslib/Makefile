COMMENT=		library to en/decode DNS wire-format packets for Python

MODPY_DISTV=	0.9.23
DISTNAME=		dnslib-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net
REVISION=		2

MAINTAINER=		Bryan Everly <bryan@bceassociates.com>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

do-test:
	${SUBST_CMD} ${WRKSRC}/run_tests.sh
	cd ${WRKSRC} && ./run_tests.sh

.include <bsd.port.mk>
