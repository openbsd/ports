# $OpenBSD: Makefile,v 1.5 2013/06/01 20:48:00 ajacoutot Exp $

COMMENT =		calculate and print calendars

DISTNAME =		gcal-3.6.3
CATEGORIES =		astro

HOMEPAGE =		http://www.gnu.org/software/gcal/gcal.html

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
