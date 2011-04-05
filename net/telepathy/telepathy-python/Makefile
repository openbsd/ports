# $OpenBSD: Makefile,v 1.24 2011/04/05 19:53:03 jasper Exp $

COMMENT=		flexible communications framework, python bindings

V=			0.15.19
DISTNAME=		telepathy-python-$V

REVISION=		0

HOMEPAGE=		${HOMEPAGE_TP:=Telepathy Python}

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-python/}

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
