# $OpenBSD: Makefile,v 1.2 2010/08/22 17:05:19 sthen Exp $

COMMENT =		ncurses GIT repository browser
DISTNAME =		tig-0.16
CATEGORIES =		devel
HOMEPAGE =		http://jonas.nitro.dk/tig/
MAINTAINER =		Tobias Ulmer <tobiasu@tmux.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c ncurses
MODULES =		converters/libiconv
RUN_DEPENDS =		::devel/git

MASTER_SITES =		${HOMEPAGE}/releases/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-libiconv=${LOCALBASE} ASCIIDOC=false \
			XMLTO=false DOCBOOK2PDF=false
NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tig
	${INSTALL_DATA} ${WRKBUILD}/manual.* ${PREFIX}/share/doc/tig
	${INSTALL_MAN} ${WRKBUILD}/tig.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/tigrc.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
