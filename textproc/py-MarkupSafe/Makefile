# $OpenBSD: Makefile,v 1.16 2015/09/29 10:52:35 sthen Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	0.23
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		textproc

HOMEPAGE=		http://pypi.python.org/pypi/MarkupSafe/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

WANTLIB+=		${MODPY_WANTLIB} pthread

MODPY_SETUPTOOLS= 	Yes

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
