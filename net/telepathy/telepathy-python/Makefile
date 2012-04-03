# $OpenBSD: Makefile,v 1.27 2012/04/03 09:27:06 ajacoutot Exp $

COMMENT=		flexible communications framework, python bindings

V=			0.15.19
DISTNAME=		telepathy-python-$V

REVISION=		2

HOMEPAGE=		${HOMEPAGE_TP:=Telepathy Python}

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-python/}

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-gobject \
			textproc/libxslt \
			x11/dbus-python \
			x11/py-gtk2

CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		No

SUBST_VARS+=		V

.include <bsd.port.mk>
