COMMENT =		curses interface for transmission

GH_ACCOUNT =		tremc
GH_PROJECT =		tremc
GH_COMMIT =		8b6b29163295e5cf12d9d874e80203c5906619c8
DISTNAME =		tremc-0.9.2pl20210227

CATEGORIES =		net

MAINTAINER =		Thim Cederlund <thim@cederlund.de>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		sysutils/py-pyperclip${MODPY_FLAVOR}

NO_TEST =		Yes
NO_BUILD =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tremc ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/tremc.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/completion/bash/tremc.sh \
		${PREFIX}/share/bash-completion/completions/tremc
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/completion/zsh/_tremc \
		${PREFIX}/share/zsh/site-functions

.include <bsd.port.mk>
