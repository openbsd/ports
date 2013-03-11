# $OpenBSD: Makefile,v 1.21 2013/03/11 10:50:25 espie Exp $

COMMENT =	ASN.1 library for Python

MODPY_EGG_VERSION =	0.1.6
DISTNAME =		pyasn1-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
PKG_ARCH =		*
EPOCH =			0

HOMEPAGE =		http://pyasn1.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD-style
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyasn1/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

DOCSDIR =	${PREFIX}/share/doc/py-asn1

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCSDIR}

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKSRC} ${MODPY_BIN} ./test/suite.py

.include <bsd.port.mk>
