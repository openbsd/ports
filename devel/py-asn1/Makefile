# $OpenBSD: Makefile,v 1.25 2015/09/29 06:17:03 benoit Exp $

COMMENT =	ASN.1 library for Python

MODPY_EGG_VERSION =	0.1.9
DISTNAME =		pyasn1-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
PKG_ARCH =		*
EPOCH =			0

HOMEPAGE =		http://pyasn1.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyasn1/}

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

DOCSDIR =	${PREFIX}/share/doc/${MODPY_PY_PREFIX}asn1

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCSDIR}

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKSRC} ${MODPY_BIN} ./test/suite.py

.include <bsd.port.mk>
