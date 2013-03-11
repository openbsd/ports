# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:02 espie Exp $

COMMENT=	C\# implementation of D-Bus

DISTNAME=	dbus-sharp-0.7.0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mono/dbus-sharp
MASTER_SITES=	https://github.com/downloads/mono/dbus-sharp/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/mono

USE_GMAKE=	Yes

DLLMAP_FILES=	src/dbus-sharp.dll.config

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
