# $OpenBSD: Makefile,v 1.19 2017/01/03 19:27:51 landry Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	0.23
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

CATEGORIES=		textproc


# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

WANTLIB+=		${MODPY_WANTLIB} pthread

MODPY_SETUPTOOLS= 	Yes

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
