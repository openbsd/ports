# $OpenBSD: Makefile,v 1.9 2018/11/15 20:15:09 solene Exp $

COMMENT =	full and incremental backups on filesystem
DISTNAME =	faubackup-0.5.9
REVISION =	1

CATEGORIES =	sysutils

HOMEPAGE =	http://freshmeat.sourceforge.net/projects/faubackup

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c popt>=0.3

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=faubackup/}

LIB_DEPENDS =		devel/popt
TEST_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS}

FAKE_FLAGS =		sysconfdir=${TRUEPREFIX}/share/examples/faubackup
TEST_FLAGS =		AUTOCONF_VERSION=${AUTOCONF_VERSION}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.59

.include <bsd.port.mk>
