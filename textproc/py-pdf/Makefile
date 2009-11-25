# $OpenBSD: Makefile,v 1.1.1.1 2009/11/25 22:00:26 jasper Exp $

COMMENT=		Python PDF toolkit

MODPY_EGG_VERSION=	1.12
DISTNAME=		pyPdf-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:L:S/^py/py-/}
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
