# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:26 sthen Exp $
COMMENT =		Test your typing speed and get your fingers' CPS

DISTNAME =		typespeed-0.6.5
CATEGORIES =		games
REVISION =		3

HOMEPAGE =		http://typespeed.sourceforge.net/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c iconv intl curses

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=typespeed/}

LIB_DEPENDS =		devel/gettext,-runtime

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

post-install:
	chmod -s ${PREFIX}/bin/typespeed
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/typespeed
	${INSTALL_DATA} ${WRKSRC}/etc/typespeedrc \
		${PREFIX}/share/examples/typespeed/typespeedrc

.include <bsd.port.mk>
