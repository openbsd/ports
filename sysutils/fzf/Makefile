# $OpenBSD: Makefile,v 1.5 2020/04/07 08:32:50 paco Exp $

COMMENT =	command-line fuzzy finder

DISTNAME =	fzf-0.21.1

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/junegunn/fzf

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c pthread

MASTER_SITES =	https://deftly.net/dist/

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

ALL_TARGET =	github.com/junegunn/fzf


# Note that unlike zsh and fish, bash has no well-defined site functions
# directory from which to autoload stuff.
#
# Note also that the completion files referenced here are not defining words to
# complete, but rather overriding what happens when the user requests
# completion via typing **<tab>.
ZSH_SITE =	${PREFIX}/share/zsh/site-functions
FISH_SITE =	${PREFIX}/share/fish/functions
BASH_SITE =	${PREFIX}/share/fzf/bash
VIMFILES =	${PREFIX}/share/vim/vimfiles
VIM_PLUGIN =	${VIMFILES}/plugin
VIM_DOC =	${VIMFILES}/doc
SUBST_VARS +=	BASH_SITE FISH_SITE VIMFILES

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/* ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/man1/*.1 ${PREFIX}/man/man1

	${INSTALL_DATA_DIR} ${ZSH_SITE}
	${INSTALL_DATA} ${WRKSRC}/shell/key-bindings.zsh \
		${ZSH_SITE}/_fzf_key_bindings
	${INSTALL_DATA} ${WRKSRC}/shell/completion.zsh \
		${ZSH_SITE}/_fzf_completion

	${INSTALL_DATA_DIR} ${FISH_SITE}
	${INSTALL_DATA} ${WRKSRC}/shell/key-bindings.fish \
		${FISH_SITE}/fzf-key-bindings.fish

	${INSTALL_DATA_DIR} ${BASH_SITE}
	${INSTALL_DATA} ${WRKSRC}/shell/key-bindings.bash ${BASH_SITE}
	${INSTALL_DATA} ${WRKSRC}/shell/completion.bash ${BASH_SITE}

	${INSTALL_DATA_DIR} ${VIM_PLUGIN}
	${INSTALL_DATA_DIR} ${VIM_DOC}
	${INSTALL_DATA} ${WRKSRC}/plugin/fzf.vim ${VIM_PLUGIN}/fzf.vim
	${INSTALL_DATA} ${WRKSRC}/doc/fzf.txt ${VIM_DOC}/fzf.txt

.include <bsd.port.mk>
