COMMENT =	tool for running project-specific commands

V =		1.43.0
PKGNAME =	just-${V}

DIST_TUPLE +=	github casey just ${V} .

CATEGORIES =	sysutils
HOMEPAGE =	https://just.systems/
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# CC0 1.0 Universal
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

EXAMPLES=${PREFIX}/share/examples/just/
ZSH_COMPS=${PREFIX}/share/zsh/site-functions/
BASH_COMPS=${PREFIX}/share/bash-completion/completions/
post-install:
	mkdir -p ${EXAMPLES}
	cp -r ${WRKSRC}/examples/* ${EXAMPLES}

	# note: fish shell already ships with just completions.
	${INSTALL_DATA_DIR} ${BASH_COMPS}
	${PREFIX}/bin/just --completions bash > ${BASH_COMPS}/just
	${INSTALL_DATA_DIR} ${ZSH_COMPS}
	${PREFIX}/bin/just --completions zsh > ${ZSH_COMPS}/_just

# Note that one test fails because $USER isn't set in the environment for some
# reason. The test doesn't fail outside of the ports infrastructure.

.include "crates.inc"
.include <bsd.port.mk>
