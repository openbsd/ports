# $OpenBSD: Makefile,v 1.22 2011/01/17 17:58:30 jasper Exp $

COMMENT=		flexible communications framework, python bindings

V=			0.15.19
DISTNAME=		telepathy-python-$V

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-python/}

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-gobject \
			textproc/libxslt \
			x11/dbus-python \
			x11/py-gtk2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		ac_cv_prog_PYTHON="${MODPY_BIN}"

USE_LIBTOOL=		No

SUBST_VARS+=		V

.include <bsd.port.mk>
