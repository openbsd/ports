# $OpenBSD: Makefile,v 1.1.1.1 2007/10/15 20:01:49 jasper Exp $

COMMENT=		MSN client library for Python

DISTNAME=		pymsn-0.2.2
CATEGORIES=		net

MASTER_SITES=		http://telepathy.freedesktop.org/releases/pymsn/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/py-gobject

NO_REGRESS=		Yes

.include <bsd.port.mk>
