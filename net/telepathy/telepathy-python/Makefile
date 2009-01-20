# $OpenBSD: Makefile,v 1.7 2009/01/20 10:27:02 jasper Exp $

COMMENT=		flexible communications framework, python bindings

DISTNAME=		telepathy-python-0.15.6

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-python/}

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/py-gobject \
			::textproc/libxslt \
			:pymsn->=0.3.3:net/pymsn \
			::x11/dbus-python \
			::x11/py-gtk2

USE_X11=		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>

