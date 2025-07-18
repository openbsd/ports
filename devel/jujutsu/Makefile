COMMENT =		version control system with git compatibility backend

V =			0.31.0
PKGNAME =		jujutsu-$V

DIST_TUPLE =		github jj-vcs jj v$V .

CATEGORIES =		devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

RUN_DEPENDS =		devel/git

MODCARGO_INSTALL_TARGET_PATHS = cli

post-build:
	${WRKBUILD}/target/release/jj util install-man-pages ${WRKBUILD}
	${WRKBUILD}/target/release/jj util completion bash > ${WRKBUILD}/jj.bash
	${WRKBUILD}/target/release/jj util completion fish > ${WRKBUILD}/jj.fish
	${WRKBUILD}/target/release/jj util completion zsh > ${WRKBUILD}/jj.zsh

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/man1/* ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/jj.bash \
		${PREFIX}/share/bash-completion/completions/jj
	${INSTALL_DATA} ${WRKBUILD}/jj.fish \
		${PREFIX}/share/fish/vendor_completions.d/jj.fish
	${INSTALL_DATA} ${WRKBUILD}/jj.zsh \
		${PREFIX}/share/zsh/site-functions/_jj

.include "crates.inc"

.include <bsd.port.mk>
