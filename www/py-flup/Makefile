# $OpenBSD: Makefile,v 1.4 2007/12/10 21:07:52 martynas Exp $

COMMENT=		random assortment of WSGI servers, middleware

VERSION=		0.5
REVISION=		2311
DISTNAME=		flup-${VERSION}
PKGNAME=		py-flup-${VERSION}r${REVISION}p0

CATEGORIES=		www

HOMEPAGE=		http://trac.saddi.com/flup

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.saddi.com/software/flup/dist/
DISTFILES=		flup-r${REVISION}${EXTRACT_SUFX}

MODULES=		lang/python

NO_REGRESS=		Yes

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
