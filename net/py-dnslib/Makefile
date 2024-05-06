COMMENT=		library to en/decode DNS wire-format packets for Python

MODPY_EGG_VERSION=	0.9.23
DISTNAME=		dnslib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net
REVISION=		0

MAINTAINER=		Bryan Everly <bryan@bceassociates.com>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =	Yes

do-test:
	${SUBST_CMD} ${WRKSRC}/run_tests.sh
	cd ${WRKSRC} && ./run_tests.sh

.include <bsd.port.mk>
