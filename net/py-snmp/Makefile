COMMENT =	SNMP framework for Python

MODPY_DISTV =	4.4.12
DISTNAME =	pysnmp-${MODPY_DISTV}
PKGNAME =	${DISTNAME:S/py/py-/}
CATEGORIES =	net
REVISION =	7

HOMEPAGE =	http://snmplabs.com/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	security/py-cryptodome \
		devel/py-asn1

DOCSDIR =	${PREFIX}/share/doc/${MODPY_PY_PREFIX}snmp
EXAMPLESDIR =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}snmp

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/docs; tar cf - . | tar xf - -C ${DOCSDIR}
	cd ${WRKSRC}/examples; tar cf - . | tar xf - -C ${EXAMPLESDIR}

NO_TEST =	Yes

.include <bsd.port.mk>
