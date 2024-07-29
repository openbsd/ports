COMMENT =		viewer for git and diff output

GH_ACCOUNT =		dandavison
GH_PROJECT =		delta
GH_TAGNAME =		0.17.0
REVISION =		1

CATEGORIES =		textproc

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

HOMEPAGE =		https://github.com/dandavison/delta

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
WANTLIB +=		${MODCARGO_WANTLIB} m git2 onig

MODULES =		devel/cargo

MODCARGO_CRATES_UPDATE +=	time
MODCARGO_CRATES +=	time		0.3.36
MODCARGO_CRATES +=	time-macros	0.2.18
MODCARGO_CRATES +=	num-conv	0.1.0

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			textproc/oniguruma

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/etc/completion/completion.fish \
		${PREFIX}/share/fish/completions/delta.fish
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/etc/completion/completion.zsh \
		${PREFIX}/share/zsh/site-functions/_delta
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/etc/completion/completion.bash \
		${PREFIX}/share/bash-completion/completions/delta

.include "crates.inc"

.include <bsd.port.mk>
