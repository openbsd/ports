# $OpenBSD: Makefile,v 1.27 2020/07/03 21:13:03 sthen Exp $

COMMENT =	SNMP framework for Python

MODPY_EGG_VERSION =	4.4.12
DISTNAME =	pysnmp-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
CATEGORIES =	net
REVISION =	0

HOMEPAGE =	http://snmplabs.com/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	security/py-cryptodome${MODPY_FLAVOR} \
		devel/py-asn1${MODPY_FLAVOR}

DOCSDIR =	${PREFIX}/share/doc/${MODPY_PY_PREFIX}snmp
EXAMPLESDIR =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}snmp

FLAVORS =	python3
FLAVOR ?=

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/docs; tar cf - . | tar xf - -C ${DOCSDIR}
	cd ${WRKSRC}/examples; tar cf - . | tar xf - -C ${EXAMPLESDIR}

NO_TEST =	Yes

.include <bsd.port.mk>
