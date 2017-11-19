# $OpenBSD: Makefile,v 1.3 2017/11/19 00:53:16 naddy Exp $
COMMENT =		Test your typing speed and get your fingers' CPS

DISTNAME =		typespeed-0.6.5
CATEGORIES =		games
REVISION =		1

HOMEPAGE =		http://typespeed.sourceforge.net/

MAINTAINER =		Nils Reusse <n.reusse@hxgn.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c iconv intl curses

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=typespeed/}

LIB_DEPENDS =		devel/gettext

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

post-install:
	chmod -s ${PREFIX}/bin/typespeed
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/typespeed
	${INSTALL_DATA} ${WRKSRC}/etc/typespeedrc \
		${PREFIX}/share/examples/typespeed/typespeedrc

.include <bsd.port.mk>
