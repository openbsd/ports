# $OpenBSD: Makefile,v 1.37 2021/11/12 16:59:21 paco Exp $

COMMENT =	command line todo list manager

VERSION =	2.6.1
DISTNAME =	task-${VERSION}
PKGNAME =	taskwarrior-${VERSION}
CATEGORIES =	productivity

HOMEPAGE =	https://www.taskwarrior.org/
MAINTAINER = 	Paco Esteban <paco@openbsd.org>

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

NO_TEST =		Yes

pre-configure:
	sed -i 's,/usr/local/share/doc/task-VERSION/,${PREFIX}/share/doc/taskwarrior/,g' \
		${WRKSRC}/scripts/vim/README

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/doc/taskwarrior/scripts/add-ons
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/bash/task.sh \
		${PREFIX}/share/bash-completion/completions/task
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/fish/task.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/{ftdetect,syntax}
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/vim/ftdetect/task.vim \
		${PREFIX}/share/vim/vimfiles/ftdetect/
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/vim/syntax/taskdata.vim \
		${PREFIX}/share/vim/vimfiles/syntax/
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/vim/syntax/taskedit.vim \
		${PREFIX}/share/vim/vimfiles/syntax/
	${INSTALL_DATA} ${PREFIX}/share/doc/taskwarrior/scripts/vim/syntax/taskrc.vim \
		${PREFIX}/share/vim/vimfiles/syntax/
	rm -r ${PREFIX}/share/doc/taskwarrior/scripts/{vim,bash,fish}

.include <bsd.port.mk>
