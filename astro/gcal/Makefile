# $OpenBSD: Makefile,v 1.7 2016/09/08 10:17:26 jasper Exp $

COMMENT =		calculate and print calendars

DISTNAME =		gcal-3.6.3
REVISION =		1
CATEGORIES =		astro

HOMEPAGE =		https://www.gnu.org/software/gcal/

MAINTAINER =		Hermann Gottschalk <magnum@pestilenz.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${MASTER_SITE_GNU:=gcal/}

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/gettext

WANTLIB =		c iconv intl m ncurses

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
