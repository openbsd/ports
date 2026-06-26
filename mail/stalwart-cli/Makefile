COMMENT =		CLI to manage a stalwart-mail server

GH_ACCOUNT =		stalwartlabs
GH_PROJECT =		cli
CATEGORIES =		mail
# AGPLv3
PERMIT_PACKAGE =	Yes

GH_TAGNAME =		v1.0.9
PKGNAME =		stalwart-cli-${GH_TAGNAME:S/v//}

HOMEPAGE =	https://stalw.art/docs/management/cli/overview/

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
DPB_PROPERTIES =	parallel

WANTLIB += ${MODCARGO_WANTLIB}

.include "crates.inc"

.include <bsd.port.mk>
