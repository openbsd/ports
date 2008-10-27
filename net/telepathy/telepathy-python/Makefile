# $OpenBSD: Makefile,v 1.5 2008/10/27 00:03:12 jasper Exp $

COMMENT=		flexible communications framework, python bindings

DISTNAME=		telepathy-python-0.15.3

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-python/}

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODPY_EXPAT_DEPENDS} \
			::devel/py-gobject \
			::textproc/libxslt \
			:pymsn->=0.3.3:net/pymsn \
			::x11/dbus-python \
			::x11/py-gtk2

USE_X11=		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>

