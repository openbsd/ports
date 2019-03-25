# $OpenBSD: Makefile,v 1.22 2019/03/25 14:29:52 kn Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	1.1.0
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		textproc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

WANTLIB+=		${MODPY_WANTLIB} pthread

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
