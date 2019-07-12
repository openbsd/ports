# $OpenBSD: Makefile,v 1.12 2019/07/12 20:49:47 sthen Exp $

COMMENT=	C\# implementation of dbus - GLib integration
DISTNAME=	ndesk-dbus-glib-0.4.1
REVISION =	6
CATEGORIES=	sysutils

MASTER_SITES=	http://www.ndesk.org/archive/ndesk-dbus/
HOMEPAGE=	http://www.ndesk.org/DBusSharp

# MIT-X11
PERMIT_PACKAGE=	Yes

MODULES=	lang/mono
MODMONO_GMCS_COMPAT=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	sysutils/ndesk-dbus

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

DLLMAP_FILES=	src/NDesk.DBus.GLib.dll.config

.include <bsd.port.mk>
