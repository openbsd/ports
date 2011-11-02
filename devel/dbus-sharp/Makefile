# $OpenBSD: Makefile,v 1.1.1.1 2011/11/02 12:45:56 ajacoutot Exp $

COMMENT=	C\# implementation of D-Bus

DISTNAME=	dbus-sharp-0.7.0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mono/dbus-sharp
MASTER_SITES=	https://github.com/downloads/mono/dbus-sharp/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/mono

USE_GMAKE=	Yes

DLLMAP_FILES=	src/dbus-sharp.dll.config

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
