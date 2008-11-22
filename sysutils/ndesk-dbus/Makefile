# $OpenBSD: Makefile,v 1.2 2008/11/22 19:28:24 jasper Exp $

COMMENT=	C\# implementation of dbus
DISTNAME=	ndesk-dbus-0.6.1a
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

MASTER_SITES=	http://www.ndesk.org/archive/ndesk-dbus/
HOMEPAGE=	http://www.ndesk.org/DBusSharp

# MIT-X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/mono

LIB_DEPENDS=	dbus-1.>=7::x11/dbus
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/mono

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
