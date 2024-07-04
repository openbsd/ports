COMMENT =		pluggable Terraform linter

MODGO_MODNAME =		github.com/terraform-linters/tflint
MODGO_VERSION =		v0.51.2

DISTNAME =		tflint-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/terraform-linters/tflint

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

WANTLIB +=		c pthread

# BSLv1.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

.include "modules.inc"
.include <bsd.port.mk>
