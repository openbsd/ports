# $OpenBSD: Makefile,v 1.25 2019/07/22 12:55:10 kmos Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	1.1.1
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		textproc

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

WANTLIB+=		${MODPY_WANTLIB} pthread

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

TEST_ENV=		PYTHONPATH=${WRKSRC}/src

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
