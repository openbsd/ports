# $OpenBSD: Makefile,v 1.11 2010/04/23 12:43:18 jasper Exp $

COMMENT=		flexible communications framework, python bindings

V=			0.15.17
DISTNAME=		telepathy-python-$V

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-python/}

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/py-gobject \
			::textproc/libxslt \
			::x11/dbus-python \
			::x11/py-gtk2
USE_GMAKE=Yes
CONFIGURE_STYLE=	gnu

USE_X11=		Yes

SUBST_VARS+=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
