COMMENT =	source code browser plugin for the Vim text editor

DISTNAME =	taglist_46
PKGNAME =	vim-taglist-4.6
CATEGORIES =	devel editors
EXTRACT_SUFX =	.zip
REVISION =	3

HOMEPAGE =	https://vim-taglist.sourceforge.net/
SITES =		${SITE_SOURCEFORGE:=vim-taglist/}

# BSD like license
PERMIT_PACKAGE =	Yes

WRKDIST =	${WRKDIR}

BUILD_DEPENDS =	editors/vim
RUN_DEPENDS =	devel/ectags \
		editors/vim

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/{plugin,doc}
	${INSTALL_DATA} ${WRKSRC}/plugin/taglist.vim \
		${PREFIX}/share/vim/vimfiles/plugin/
	${INSTALL_DATA} ${WRKSRC}/doc/taglist.txt \
		${PREFIX}/share/vim/vimfiles/doc/
	vim	--cmd helptags\ ${PREFIX}/share/vim/vimfiles/doc/ \
		--cmd q
	sort -c	${PREFIX}/share/vim/vimfiles/doc/tags
	mv	${PREFIX}/share/vim/vimfiles/doc/tags \
		${PREFIX}/share/vim/vimfiles/doc/vim-taglist.tags

.include <bsd.port.mk>
