# $OpenBSD: Makefile,v 1.2 2007/10/30 13:07:03 jasper Exp $

COMMENT=		flexible communications framework, python bindings

DISTNAME=		telepathy-python-0.14.0
PKGNAME=		${DISTNAME}p0

MASTER_SITES=		http://telepathy.freedesktop.org/releases/telepathy-python/

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODPY_EXPAT_DEPENDS} \
			::devel/py-gobject \
			::textproc/libxslt \
			::net/pymsn \
			::x11/dbus-python \
			::x11/py-gtk2

USE_X11=		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>

