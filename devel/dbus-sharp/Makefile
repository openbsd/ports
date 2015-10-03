# $OpenBSD: Makefile,v 1.4 2015/10/03 11:55:38 robert Exp $

COMMENT=		C\# implementation of D-Bus

DISTNAME=		dbus-sharp-0.7.0
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/mono/dbus-sharp
MASTER_SITES=		https://github.com/downloads/mono/dbus-sharp/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/mono
MODMONO_GMCS_COMPAT=	Yes

USE_GMAKE=		Yes

DLLMAP_FILES=		src/dbus-sharp.dll.config

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
