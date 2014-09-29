# $OpenBSD: Makefile,v 1.5 2014/09/29 07:02:03 jasper Exp $

PKG_ARCH =	*

COMMENT=	library to manipulate RDF data

MODPY_EGG_VERSION=	3.2.2
DISTNAME =		rdflib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/RDFLib/rdflib

# MIT
PERMIT_PACKAGE_CDROM=	Yes

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
