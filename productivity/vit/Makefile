# $OpenBSD: Makefile,v 1.2 2014/04/16 01:57:45 bcallah Exp $

COMMENT =		ncurses front-end for taskwarrior

DISTNAME =		vit-1.2
CATEGORIES =		productivity

HOMEPAGE =		http://taskwarrior.org/projects/1/wiki/Vit
MAINTAINER =		Kent R. Spillner <kspillner@acm.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://taskwarrior.org/download/
RUN_DEPENDS =		devel/p5-Curses \
			productivity/taskwarrior
BUILD_DEPENDS =		${RUN_DEPENDS}
CONFIGURE_STYLE =	gnu
NO_TEST =		Yes
ALL_TARGET =		build

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/vit ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vit
	${INSTALL_DATA_DIR} ${PREFIX}/share/vit
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/vit/
	${INSTALL_DATA} ${WRKSRC}/commands ${PREFIX}/share/vit/commands

.include <bsd.port.mk>
