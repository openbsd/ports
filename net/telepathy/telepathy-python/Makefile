# $OpenBSD: Makefile,v 1.14 2010/07/13 21:08:01 sthen Exp $

COMMENT=		flexible communications framework, python bindings

V=			0.15.17
DISTNAME=		telepathy-python-$V
REVISION=		0

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
