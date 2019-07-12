# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:42 sthen Exp $

COMMENT=	C\# client implementation for Desktop Notifications

# SVN r3032
V=		0.4.0
DISTNAME=	notify-sharp-$V
PKGNAME=	mono-notify-$V
REVISION =	2
CATEGORIES=	devel

HOMEPAGE=	http://www.ndesk.org/NotifySharp

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://crappydiffs.org/

MODULES=	lang/mono
MODMONO_GMCS_COMPAT=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	sysutils/ndesk-dbus-glib \
		x11/mono-gtk2

DLLMAP_FILES=	src/notify-sharp.dll.config

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
