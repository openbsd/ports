# $OpenBSD: Makefile,v 1.12 2012/04/02 06:20:33 ajacoutot Exp $

COMMENT=		MSN client library for python

MODPY_EGG_VERSION=	0.5.6
DISTNAME=		papyon-${MODPY_EGG_VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/papyon

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.freedesktop.org/software/papyon/releases/

MODULES=		lang/python

BUILD_DEPENDS=		security/py-crypto \
			security/py-openssl
RUN_DEPENDS=		multimedia/gstreamer-0.10/py-gstreamer \
			net/farsight2 \
			security/py-crypto \
			security/py-openssl

NO_REGRESS=		Yes

.include <bsd.port.mk>
