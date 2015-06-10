# $OpenBSD: Makefile,v 1.14 2015/06/10 18:33:00 matthieu Exp $

COMMENT =		ncurses GIT repository browser
DISTNAME =		tig-2.1
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://jonas.nitro.dk/tig/
MAINTAINER =		Tobias Ulmer <tobiasu@tmux.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ncursesw
MODULES =		converters/libiconv
RUN_DEPENDS =		devel/git

MASTER_SITES =		${HOMEPAGE}releases/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
BUILD_DEPENDS =		textproc/asciidoc textproc/xmlto
ALL_TARGET =		all doc-man doc-html
CONFIGURE_ARGS +=	--with-libiconv=${LOCALBASE} DOCBOOK2PDF=false
NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tig
	${INSTALL_DATA} ${WRKBUILD}/doc/manual.html ${PREFIX}/share/doc/tig
	${INSTALL_MAN} ${WRKBUILD}/doc/tig.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/doc/tigrc.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKBUILD}/doc/tigmanual.7 ${PREFIX}/man/man7

.include <bsd.port.mk>
