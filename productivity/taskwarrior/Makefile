# $OpenBSD: Makefile,v 1.33 2020/05/15 12:03:54 ajacoutot Exp $

COMMENT =	command line todo list manager

VERSION =	2.5.1
DISTNAME =	task-${VERSION}
PKGNAME =	taskwarrior-${VERSION}
CATEGORIES =	productivity
REVISION =	4

HOMEPAGE =	https://www.taskwarrior.org/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES =	https://www.taskwarrior.org/download/

# MIT
PERMIT_PACKAGE =		Yes

# Needs C++11; linker issues with clang
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/lua \
			lang/python
MODLUA_SA =		Yes
MODPY_RUNDEP =		No

WANTLIB += c gnutls m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS =		security/gnutls

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTASK_DOCDIR=share/doc/taskwarrior \
			-DTASK_MAN1DIR=man/man1 \
			-DTASK_MAN5DIR=man/man5 \
			-Ddoc_FILES="README.md"

CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

pre-configure:
	sed -i 's,share/doc/taskwarrior/,share/doc/taskwarrior/,g' \
		${WRKSRC}/doc/man/task-color.5.in \
		${WRKSRC}/doc/man/taskrc.5.in \
		${WRKSRC}/src/Config.cpp
	sed -i 's,share/doc/task-VERSION/,share/doc/taskwarrior/,g' \
		${WRKSRC}/scripts/vim/README

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/taskwarrior/scripts/add-ons
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/bash/task.sh \
		${PREFIX}/share/bash-completion/completions/task
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/fish/task.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/zsh/_task \
		${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/{ftdetect,syntax}
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/vim/ftdetect/task.vim \
		${PREFIX}/share/vim/vimfiles/ftdetect/
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/vim/syntax/taskdata.vim \
		${PREFIX}/share/vim/vimfiles/syntax/
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/vim/syntax/taskedit.vim \
		${PREFIX}/share/vim/vimfiles/syntax/
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/vim/syntax/taskrc.vim \
		${PREFIX}/share/vim/vimfiles/syntax/
	rm -rf ${PREFIX}/share/doc/taskwarrior/scripts/{vim,bash,fish}

.include <bsd.port.mk>
