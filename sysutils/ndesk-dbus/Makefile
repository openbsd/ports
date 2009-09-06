# $OpenBSD: Makefile,v 1.3 2009/09/06 07:26:02 ajacoutot Exp $

COMMENT=	C\# implementation of dbus
DISTNAME=	ndesk-dbus-0.6.1a
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

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/mono \
		::x11/dbus

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
