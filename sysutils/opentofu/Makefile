COMMENT=		declaratively manage infrastructure

MODGO_MODNAME=		github.com/opentofu/opentofu
MODGO_VERSION=		v1.8.1
DISTNAME=		opentofu-${MODGO_VERSION}

CATEGORIES=		sysutils net

HOMEPAGE=		https://opentofu.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

.include "modules.inc"

.include <bsd.port.mk>
