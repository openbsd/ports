# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:12 sthen Exp $

COMMENT =		calculate and print calendars

DISTNAME =		gcal-3.6.3
REVISION =		3
CATEGORIES =		astro

HOMEPAGE =		https://www.gnu.org/software/gcal/

MAINTAINER =		Hermann Gottschalk <magnum@pestilenz.org>

# GPLv2+
PERMIT_PACKAGE = Yes

MASTER_SITES =		${MASTER_SITE_GNU:=gcal/}

BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		devel/gettext,-runtime

WANTLIB =		c iconv intl m curses

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-easc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gcal
	${INSTALL_DATA} ${WRKBUILD}/data/gcalrc ${PREFIX}/share/examples/gcal
	${INSTALL_DATA} ${WRKBUILD}/data/*.rc ${PREFIX}/share/examples/gcal
	rm ${PREFIX}/lib/charset.alias

.include <bsd.port.mk>
