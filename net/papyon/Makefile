# $OpenBSD: Makefile,v 1.2 2010/04/22 12:38:19 jasper Exp $

COMMENT=		fork of pymsn to support telepathy-butterfly

MODPY_EGG_VERSION=	0.4.6
DISTNAME=		papyon-${MODPY_EGG_VERSION}
CATEGORIES=		net

HOMEPAGE=		http://telepathy.freedesktop.org/wiki/Papyon

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://telepathy.freedesktop.org/releases/papyon/

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/py-gobject \
			::security/py-crypto \
			::security/py-openssl

NO_REGRESS=		Yes

.include <bsd.port.mk>
