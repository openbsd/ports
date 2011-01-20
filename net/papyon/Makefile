# $OpenBSD: Makefile,v 1.8 2011/01/20 18:55:17 jasper Exp $

COMMENT=		fork of pymsn to support telepathy-butterfly

MODPY_EGG_VERSION=	0.5.4
DISTNAME=		papyon-${MODPY_EGG_VERSION}
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/papyon

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.freedesktop.org/software/papyon/releases/

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-gobject \
			security/py-crypto \
			security/py-openssl

NO_REGRESS=		Yes

.include <bsd.port.mk>
