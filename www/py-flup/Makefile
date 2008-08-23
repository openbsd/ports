# $OpenBSD: Makefile,v 1.5 2008/08/23 20:38:57 martynas Exp $

COMMENT=		random assortment of WSGI servers, middleware

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		flup-${MODPY_EGG_VERSION}
PKGNAME=		py-flup-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://trac.saddi.com/flup

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.saddi.com/software/flup/dist/

MODULES=		lang/python

NO_REGRESS=		Yes

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
