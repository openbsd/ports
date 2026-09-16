COMMENT=		declaratively manage infrastructure

#MODGO_MODNAME=		github.com/opentofu/opentofu
#MODGO_VERSION=		v1.12.6
#DISTNAME=		opentofu-${MODGO_VERSION}

# XXX check if still needed at next release;
# f831fa1aa4b90cdbdb1e0b5a8d5815f9e74646a5: Wed, 12 Aug 2026 09:41:57 -0400;
DISTNAME=		opentofu-1.12.7pre0
SITES=			https://distfiles.bsdfrog.org/
MODGO_GO111MODULE=	on

CATEGORIES=		sysutils net

HOMEPAGE=		https://opentofu.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

.include "modules.inc"

.include <bsd.port.mk>
