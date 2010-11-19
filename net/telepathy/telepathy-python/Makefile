# $OpenBSD: Makefile,v 1.20 2010/11/19 22:31:39 espie Exp $

COMMENT=		flexible communications framework, python bindings

V=			0.15.18
DISTNAME=		telepathy-python-$V

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-python/}

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-gobject \
			textproc/libxslt \
			x11/dbus-python \
			x11/py-gtk2

CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		No

SUBST_VARS+=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
