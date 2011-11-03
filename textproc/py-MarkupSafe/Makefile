# $OpenBSD: Makefile,v 1.5 2011/11/03 20:13:20 jasper Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	0.11
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

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

.include <bsd.port.mk>
