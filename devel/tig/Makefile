# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:31 espie Exp $

COMMENT =		ncurses GIT repository browser
DISTNAME =		tig-1.1
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
CONFIGURE_ARGS +=	--with-libiconv=${LOCALBASE} ASCIIDOC=false \
			XMLTO=false DOCBOOK2PDF=false
NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tig
	${INSTALL_DATA} ${WRKBUILD}/manual.* ${PREFIX}/share/doc/tig
	${INSTALL_MAN} ${WRKBUILD}/tig.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/tigrc.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKBUILD}/tigmanual.7 ${PREFIX}/man/man7

.include <bsd.port.mk>
