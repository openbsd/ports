# $OpenBSD: Makefile,v 1.18 2010/09/23 14:24:22 jasper Exp $

COMMENT=		flexible communications framework, python bindings

V=			0.15.18
DISTNAME=		telepathy-python-$V

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-python/}

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/py-gobject \
			::textproc/libxslt \
			::x11/dbus-python \
			::x11/py-gtk2

CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		No
USE_X11=		Yes

SUBST_VARS+=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
