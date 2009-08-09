# $OpenBSD: Makefile,v 1.1.1.1 2009/08/09 21:49:33 landry Exp $

COMMENT =		ncurses file manager with vi keybindings

DISTNAME =		vifm-0.4
CATEGORIES =		misc sysutils
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vifm/}
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://vifm.sourceforge.net/

MAINTAINER =		Aaron Stellman <zion@x96.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c ncurses

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

.include <bsd.port.mk>
