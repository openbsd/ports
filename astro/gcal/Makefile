# $OpenBSD: Makefile,v 1.1.1.1 2009/10/17 08:39:34 bernd Exp $

COMMENT =		calculate and print calendars

DISTNAME =		gcal-3.01
CATEGORIES =		astro

HOMEPAGE =		http://www.gnu.org/software/gcal/gcal.html

MAINTAINER =		Hermann Gottschalk <magnum@pestilenz.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_GNU:=gcal/}

MODULES =		devel/gettext

WANTLIB =		c m ncurses

CONFIGURE_STYLE =	gnu dest
CONFIGURE_ARGS =	--enable-easc \
			--without-included-gettext

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			INTLLIBS="-L${LOCALBASE}/lib -lintl -liconv"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gcal
	${INSTALL_DATA} ${WRKBUILD}/data/gcalrc ${PREFIX}/share/examples/gcal
	${INSTALL_DATA} ${WRKBUILD}/data/*.rc ${PREFIX}/share/examples/gcal

.include <bsd.port.mk>
