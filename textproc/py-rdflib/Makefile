# $OpenBSD: Makefile,v 1.11 2020/07/03 21:13:15 sthen Exp $

COMMENT=	library to manipulate RDF data

MODPY_EGG_VERSION=	3.2.2
DISTNAME =		rdflib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		6

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/RDFLib/rdflib

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://github.com/downloads/RDFLib/rdflib/

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS = 	Yes

RUN_DEPENDS =		devel/py-isodate${MODPY_FLAVOR}

MODPY_ADJ_FILES =	rdflib/plugins/parsers/ntriples.py \
			run_tests.py \
			setup.py \
			rdflib/plugins/parsers/notation3.py

# Stupid infrastructure needs absolute imports
NO_TEST =		Yes

.include <bsd.port.mk>
