# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:46 espie Exp $

PKG_ARCH =	*

COMMENT=	library to manipulate RDF data

MODPY_EGG_VERSION=	3.2.2
DISTNAME =		rdflib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/RDFLib/rdflib

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/downloads/RDFLib/rdflib/

MODULES =		lang/python

MODPY_SETUPTOOLS = 	Yes

RUN_DEPENDS =		devel/py-isodate

MODPY_ADJ_FILES =	rdflib/plugins/parsers/ntriples.py \
			run_tests.py \
			setup.py \
			rdflib/plugins/parsers/notation3.py

EXAMPLES_DIR =		${PREFIX}/share/examples/py-rdflib/

# Stupid infrastructure needs absolute imports
NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLES_DIR}

.include <bsd.port.mk>
