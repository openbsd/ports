COMMENT =		terraform language server

MODGO_MODNAME =		github.com/hashicorp/terraform-ls
MODGO_VERSION =		v0.38.3

DISTNAME =		terraform-ls-${MODGO_VERSION}
WRKDIST =		${WRKDIR}/github.com/hashicorp/terraform-ls@${MODGO_VERSION}

WANTLIB +=		c pthread

CATEGORIES =		devel

HOMEPAGE =		https://github.com/hashicorp/terraform-ls

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MPL-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

.include "modules.inc"
.include <bsd.port.mk>
