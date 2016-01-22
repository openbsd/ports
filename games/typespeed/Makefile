# $OpenBSD: Makefile,v 1.1.1.1 2016/01/22 15:24:30 landry Exp $
COMMENT =		Test your typing speed and get your fingers' CPS

DISTNAME =		typespeed-0.6.5
CATEGORIES =		games

HOMEPAGE =		http://typespeed.sourceforge.net/

MAINTAINER =		Nils Reuße <n.reusse at hxgn.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ncurses

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=typespeed/}

MODULES =		devel/gettext

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

post-install:
	chmod -s ${PREFIX}/bin/typespeed
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/typespeed
	${INSTALL_DATA} ${WRKSRC}/etc/typespeedrc \
		${PREFIX}/share/examples/typespeed/typespeedrc

.include <bsd.port.mk>
