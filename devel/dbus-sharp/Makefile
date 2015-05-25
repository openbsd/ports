# $OpenBSD: Makefile,v 1.3 2015/05/25 07:48:45 ajacoutot Exp $

COMMENT=		C\# implementation of D-Bus

DISTNAME=		dbus-sharp-0.7.0
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/mono/dbus-sharp
MASTER_SITES=		https://github.com/downloads/mono/dbus-sharp/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/mono

USE_GMAKE=		Yes

DLLMAP_FILES=		src/dbus-sharp.dll.config

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
