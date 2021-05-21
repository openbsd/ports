# $OpenBSD: Makefile,v 1.28 2021/05/21 19:50:36 kmos Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	1.1.1
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

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
