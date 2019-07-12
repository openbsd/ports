# $OpenBSD: Makefile,v 1.7 2019/07/12 20:44:07 sthen Exp $

COMMENT=		C\# implementation of D-Bus

V=			0.8.1

DISTNAME=		dbus-sharp-${V}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/mono/dbus-sharp
MASTER_SITES=		${HOMEPAGE}/releases/download/v${V}/

# BSD-like
PERMIT_PACKAGE=	Yes

MODULES=		lang/mono
MODMONO_GMCS_COMPAT=	Yes

USE_GMAKE=		Yes

DLLMAP_FILES=		src/dbus-sharp.dll.config

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
