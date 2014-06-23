# $OpenBSD: Makefile,v 1.1.1.1 2014/06/23 13:32:26 jasper Exp $

COMMENT=		WSDL parsing services package for Python

MODPY_EGG_VERSION=	0.4.3
DISTNAME=		wstools-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		www

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=w/wstools/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

# No actual tests to run.
NO_TEST=		Yes

.include <bsd.port.mk>
