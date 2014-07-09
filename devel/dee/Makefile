# $OpenBSD: Makefile,v 1.5 2014/07/09 17:43:52 ajacoutot Exp $

COMMENT=		library for Model-View-Controller type across DBus

DISTNAME=		dee-1.0.14

SHARED_LIBS +=  dee-1.0                   0.0 # 5.1

CATEGORIES=		devel

HOMEPAGE=		https://launchpad.net/dee

# GPLv3 - LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += icudata icui18n icuuc m pcre pthread stdc++ z

MASTER_SITES=	https://launchpad.net/dee/1.0/1.0.14/+download/

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

MODGNOME_TOOLS += gobject-introspection vala

USE_GMAKE=	Yes

LIB_DEPENDS=	devel/glib2 \
		textproc/icu4c

# site-packages/gi/overrides/Dee.pyc
RUN_DEPENDS=	devel/py-gobject3

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
