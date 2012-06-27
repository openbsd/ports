# $OpenBSD: Makefile,v 1.8 2012/06/27 19:01:51 rpointel Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	0.15
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		0

CATEGORIES=		textproc

HOMEPAGE=		http://pypi.python.org/pypi/MarkupSafe/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=M/MarkupSafe/}

MODULES=		lang/python

WANTLIB+=		${MODPY_WANTLIB}

MODPY_SETUPTOOLS= Yes

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
