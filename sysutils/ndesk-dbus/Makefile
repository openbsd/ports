# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:47 sthen Exp $

COMMENT=	C\# implementation of dbus
DISTNAME=	ndesk-dbus-0.6.1a
REVISION =	5
CATEGORIES=	sysutils

MASTER_SITES=	http://www.ndesk.org/archive/ndesk-dbus/
HOMEPAGE=	http://www.ndesk.org/DBusSharp

# MIT-X11
PERMIT_PACKAGE=	Yes

MODULES=	lang/mono

MODMONO_GMCS_COMPAT=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/dbus

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
