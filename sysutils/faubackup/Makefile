# $OpenBSD: Makefile,v 1.1.1.1 2008/12/29 19:51:09 sturm Exp $

COMMENT =	full and incremental backups on filesystem
DISTNAME =	faubackup-0.5.9

CATEGORIES =	sysutils

HOMEPAGE =	http://faubackup.sourceforge.net/

MAINTAINER =	Sebastian Trahm <basti@schleifi.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=faubackup/}

LIB_DEPENDS =		popt.>=0.3::devel/popt
REGRESS_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS}

#MAKE_FLAGS =		CFLAGS="-I${LOCALBASE}/include"
FAKE_FLAGS =		sysconfdir=${TRUEPREFIX}/share/examples/faubackup
REGRESS_FLAGS =		AUTOCONF_VERSION=${AUTOCONF_VERSION}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.59

.include <bsd.port.mk>
