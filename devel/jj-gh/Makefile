# ring 0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		jj tools for working with GitHub PRs

V =			0.2.10
DIST_TUPLE =		github mrjones2014 jj-gh jj-gh-v$V .
PKGNAME =		jj-gh-$V

CATEGORIES =		devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# MIT
PERMIT_PACKAGE = 	Yes

WANTLIB +=		${MODCARGO_WANTLIB} crypto m ssl

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

RUN_DEPENDS =		devel/jujutsu

JJGH = ${MODCARGO_TARGET_DIR}/release/jj-gh
post-build:
	${JJGH} completions bash > ${WRKBUILD}/jj-gh.bash
	${JJGH} completions fish > ${WRKBUILD}/jj-gh.fish
	${JJGH} completions zsh > ${WRKBUILD}/jj-gh.zsh

post-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/jj-gh.bash \
		${PREFIX}/share/bash-completion/completions/jj-gh
	${INSTALL_DATA} ${WRKBUILD}/jj-gh.fish \
		${PREFIX}/share/fish/vendor_completions.d/jj-gh.fish
	${INSTALL_DATA} ${WRKBUILD}/jj-gh.zsh \
		${PREFIX}/share/zsh/site-functions/_jj-gh

.include "crates.inc"
.include <bsd.port.mk>
