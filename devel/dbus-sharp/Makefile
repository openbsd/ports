# $OpenBSD: Makefile,v 1.6 2018/03/29 19:38:37 robert Exp $

COMMENT=		C\# implementation of D-Bus

V=			0.8.1

DISTNAME=		dbus-sharp-${V}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/mono/dbus-sharp
MASTER_SITES=		${HOMEPAGE}/releases/download/v${V}/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/mono
MODMONO_GMCS_COMPAT=	Yes

USE_GMAKE=		Yes

DLLMAP_FILES=		src/dbus-sharp.dll.config

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
