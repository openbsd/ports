# $OpenBSD: Makefile,v 1.10 2009/06/02 04:45:14 jasper Exp $

COMMENT=		flexible communications framework, python bindings

V=			0.15.7
DISTNAME=		telepathy-python-$V

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

SUBST_VARS+=		V

.include <bsd.port.mk>

