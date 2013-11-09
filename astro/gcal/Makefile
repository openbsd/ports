# $OpenBSD: Makefile,v 1.6 2013/11/09 23:19:01 naddy Exp $

COMMENT =		calculate and print calendars

DISTNAME =		gcal-3.6.3
REVISION =		0
CATEGORIES =		astro

HOMEPAGE =		https://www.gnu.org/software/gcal/

MAINTAINER =		Hermann Gottschalk <magnum@pestilenz.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${MASTER_SITE_GNU:=gcal/}

MODULES =		devel/gettext

WANTLIB =		c m ncurses

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
