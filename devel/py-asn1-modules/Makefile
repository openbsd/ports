COMMENT=	collection of ASN.1 data structures for py-asn1

MODPY_DISTV=	0.4.1
DISTNAME=	pyasn1_modules-${MODPY_DISTV}
PKGNAME=	py-asn1-modules-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pyasn1/pyasn1-modules

# BSD 2-Clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-asn1

MODPY_ADJ_FILES= tools/*.py

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tools/* ${PREFIX}/bin/

.include <bsd.port.mk>
