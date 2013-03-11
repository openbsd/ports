# $OpenBSD: Makefile,v 1.10 2013/03/11 11:41:31 espie Exp $

COMMENT=	C\# implementation of dbus - GLib integration
DISTNAME=	ndesk-dbus-glib-0.4.1
REVISION =	6
CATEGORIES=	sysutils

MASTER_SITES=	http://www.ndesk.org/archive/ndesk-dbus/
HOMEPAGE=	http://www.ndesk.org/DBusSharp

# MIT-X11
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/mono

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	sysutils/ndesk-dbus

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

DLLMAP_FILES=	src/NDesk.DBus.GLib.dll.config

.include <bsd.port.mk>
