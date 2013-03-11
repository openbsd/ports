# $OpenBSD: Makefile,v 1.17 2013/03/11 11:35:54 espie Exp $

COMMENT=		MSN client library for python

MODPY_EGG_VERSION=	0.5.6
DISTNAME=		papyon-${MODPY_EGG_VERSION}
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/papyon

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.freedesktop.org/software/papyon/releases/

MODULES=		lang/python

BUILD_DEPENDS=		devel/py-gobject \
			security/py-crypto \
			security/py-openssl
RUN_DEPENDS=		devel/py-gobject \
			multimedia/gstreamer-0.10/py-gstreamer \
			net/farstream \
			security/py-crypto \
			security/py-openssl

NO_TEST=		Yes

.include <bsd.port.mk>
