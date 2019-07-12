# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:07 sthen Exp $

COMMENT=	GLib main loop integration for dbus-sharp

V=		0.6.0
DISTNAME=	dbus-sharp-glib-${V}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mono/dbus-sharp-glib
MASTER_SITES=	${HOMEPAGE}/releases/download/v0.6/

# BSD-like
PERMIT_PACKAGE=	Yes

MODULES=	lang/mono
MODMONO_GMCS_COMPAT=	Yes

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/dbus-sharp
RUN_DEPENDS=	devel/dbus-sharp

DLLMAP_FILES=	src/dbus-sharp-glib.dll.config

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
