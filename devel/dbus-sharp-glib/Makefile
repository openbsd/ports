# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:02 espie Exp $

COMMENT=	GLib main loop integration for dbus-sharp

DISTNAME=	dbus-sharp-glib-0.5.0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mono/dbus-sharp-glib
MASTER_SITES=	https://github.com/downloads/mono/dbus-sharp/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/mono

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/dbus-sharp
RUN_DEPENDS=	devel/dbus-sharp

DLLMAP_FILES=	src/dbus-sharp-glib.dll.config

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
