# $OpenBSD: Makefile,v 1.4 2011/04/22 08:21:28 edd Exp $

COMMENT =		music system for hackathons
DISTNAME =		hgd-0.3.0

CATEGORIES =		audio net
HOMEPAGE =		https://github.com/vext01/hgd/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c config crypto ssl sqlite3

MAKE_FILE =		BSDmakefile
MASTER_SITES =		https://github.com/downloads/vext01/hgd/

RUN_DEPENDS =		x11/mplayer
LIB_DEPENDS =		databases/sqlite3 \
			devel/libconfig

NO_REGRESS =		Yes

.include <bsd.port.mk>
