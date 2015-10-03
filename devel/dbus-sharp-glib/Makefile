# $OpenBSD: Makefile,v 1.3 2015/10/03 12:01:27 robert Exp $

COMMENT=	GLib main loop integration for dbus-sharp

DISTNAME=	dbus-sharp-glib-0.5.0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mono/dbus-sharp-glib
MASTER_SITES=	https://github.com/downloads/mono/dbus-sharp/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/mono
MODMONO_GMCS_COMPAT=	Yes

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/dbus-sharp
RUN_DEPENDS=	devel/dbus-sharp

DLLMAP_FILES=	src/dbus-sharp-glib.dll.config

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
