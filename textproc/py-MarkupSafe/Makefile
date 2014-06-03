# $OpenBSD: Makefile,v 1.12 2014/06/03 11:35:30 rpointel Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	0.18
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

REVISION = 0

CATEGORIES=		textproc

HOMEPAGE=		http://pypi.python.org/pypi/MarkupSafe/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=M/MarkupSafe/}

MODULES=		lang/python

WANTLIB+=		${MODPY_WANTLIB} pthread

MODPY_SETUPTOOLS= 	Yes

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
