# $OpenBSD: Makefile,v 1.3 2009/03/23 22:26:27 jasper Exp $

COMMENT=		MSN client library for Python

MODPY_EGG_VERSION=	0.3.3
DISTNAME=		pymsn-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

MASTER_SITES=		http://telepathy.freedesktop.org/releases/pymsn/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/py-gobject \
			::security/py-crypto \
			::security/py-openssl

NO_REGRESS=		Yes

.include <bsd.port.mk>
