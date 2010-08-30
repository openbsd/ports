# $OpenBSD: Makefile,v 1.2 2010/08/30 21:47:16 jasper Exp $

COMMENT=		Python PDF toolkit

MODPY_EGG_VERSION=	1.12
DISTNAME=		pyPdf-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:L:S/^py/py-/}
REVISION=		0
CATEGORIES=		textproc devel

HOMEPAGE=		http://pybrary.net/pyPdf/

# Modified BSD
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

MASTER_SITES=	http://pybrary.net/pyPdf/

MODULES=	lang/python

NO_REGRESS=	Yes

.include <bsd.port.mk>
