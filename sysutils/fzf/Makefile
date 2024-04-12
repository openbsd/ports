COMMENT =	command-line fuzzy finder

MODGO_MODNAME =	github.com/junegunn/fzf
MODGO_VERSION =	v0.0.0-20240404152026-62963dcefd6d

V =		0.49.0
DISTNAME =	fzf-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/junegunn/fzf

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

MODGO_LDFLAGS +=	-X main.version=${V}
MODGO_LDFLAGS +=	-X main.revision=""

# for patch to apply
WRKDIST =	${WRKSRC}

VIMFILES =	${PREFIX}/share/vim/vimfiles
SUBST_VARS +=	VIMFILES

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/* ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/man1/*.1 ${PREFIX}/man/man1

	${INSTALL_DATA_DIR} ${VIMFILES}/plugin
	${INSTALL_DATA_DIR} ${VIMFILES}/doc
	${INSTALL_DATA} ${WRKSRC}/plugin/fzf.vim ${VIMFILES}/plugin/fzf.vim
	${INSTALL_DATA} ${WRKSRC}/doc/fzf.txt ${VIMFILES}/doc/fzf.txt

do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} \
		github.com/junegunn/fzf/src \
		github.com/junegunn/fzf/src/algo \
		github.com/junegunn/fzf/src/tui \
		github.com/junegunn/fzf/src/util

.include "modules.inc"

.include <bsd.port.mk>
