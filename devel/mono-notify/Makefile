# $OpenBSD: Makefile,v 1.1.1.1 2010/04/23 16:03:48 jasper Exp $

COMMENT=	C# client implementation for Desktop Notifications

# SVN r3032
V=		0.4.0
DISTNAME=	notify-sharp-$V
PKGNAME=	mono-notify-$V
CATEGORIES=	devel

HOMEPAGE=	http://www.ndesk.org/NotifySharp

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://crappydiffs.org/

MODULES=	lang/mono

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::sysutils/ndesk-dbus-glib

DLLMAP_FILES=	notify-sharp/notify-sharp.dll.config

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
