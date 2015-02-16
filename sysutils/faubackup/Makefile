# $OpenBSD: Makefile,v 1.8 2015/02/16 22:57:12 naddy Exp $

COMMENT =	full and incremental backups on filesystem
DISTNAME =	faubackup-0.5.9
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	http://faubackup.sourceforge.net/

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
