# $OpenBSD: Makefile,v 1.1.1.1 2012/06/11 13:45:05 gonzalo Exp $

COMMENT=		gtk binding for liblarch

MODPY_EGG_VERSION=	0.1.0
DISTNAME=		liblarch_gtk-${MODPY_EGG_VERSION}
PKGNAME=		py-liblarch_gtk-${MODPY_EGG_VERSION}

CATEGORIES=		devel x11

HOMEPAGE=		https://live.gnome.org/liblarch/gtk

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://gtg.fritalk.com/publique/gtg.fritalk.com/liblarch/${MODPY_EGG_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/

MODULES=		lang/python

RUN_DEPENDS=		devel/py-liblarch \
			x11/py-gtk2

NO_REGRESS=		Yes

.include <bsd.port.mk>
