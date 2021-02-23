# $OpenBSD: Makefile,v 1.8 2021/02/23 19:39:45 sthen Exp $

COMMENT=		Python PDF toolkit

MODPY_EGG_VERSION =	1.13
DISTNAME=		pyPdf-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:L:S/^py/py-/}
CATEGORIES=		textproc devel

HOMEPAGE=		http://pybrary.net/pyPdf/

# Modified BSD
PERMIT_PACKAGE=		Yes

MASTER_SITES=	http://pybrary.net/pyPdf/

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

NO_TEST=	Yes

.include <bsd.port.mk>
