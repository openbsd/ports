# $OpenBSD: Makefile,v 1.1.1.1 2011/11/02 12:47:43 ajacoutot Exp $

COMMENT=	GLib main loop integration for dbus-sharp

DISTNAME=	dbus-sharp-glib-0.5.0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mono/dbus-sharp-glib
MASTER_SITES=	https://github.com/downloads/mono/dbus-sharp/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/mono

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/dbus-sharp
RUN_DEPENDS=	devel/dbus-sharp

DLLMAP_FILES=	src/dbus-sharp-glib.dll.config

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
