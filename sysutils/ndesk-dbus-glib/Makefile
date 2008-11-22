# $OpenBSD: Makefile,v 1.3 2008/11/22 19:29:02 jasper Exp $

COMMENT=	C\# implementation of dbus - GLib integration
DISTNAME=	ndesk-dbus-glib-0.4.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	sysutils

MASTER_SITES=	http://www.ndesk.org/archive/ndesk-dbus/
HOMEPAGE=	http://www.ndesk.org/DBusSharp

# MIT-X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/mono

BUILD_DEPENDS=	${RUN_DEPENDS} \
		::sysutils/ndesk-dbus
RUN_DEPENDS=	::lang/mono

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

DLLMAP_FILES=	src/NDesk.DBus.GLib.dll.config

.include <bsd.port.mk>
