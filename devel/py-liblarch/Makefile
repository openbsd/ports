# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:26 espie Exp $

COMMENT=		library to easily handle data structure

MODPY_EGG_VERSION=	0.1.0
DISTNAME=		liblarch-${MODPY_EGG_VERSION}
PKGNAME=		py-liblarch-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://live.gnome.org/liblarch/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://gtg.fritalk.com/publique/gtg.fritalk.com/liblarch/${MODPY_EGG_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/

MODULES=		lang/python

RUN_DEPENDS=		devel/py-gobject

NO_TEST=		Yes

.include <bsd.port.mk>
