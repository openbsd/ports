# $OpenBSD: Makefile,v 1.1.1.1 2011/03/17 14:38:42 edd Exp $

COMMENT =		music system for hackathons
DISTNAME =		hgd-0.2.0

CATEGORIES =		audio net
HOMEPAGE =		https://github.com/vext01/hgd/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto ssl sqlite3

MAKE_FILE =		BSDmakefile
MASTER_SITES =		https://github.com/downloads/vext01/hgd/

RUN_DEPENDS =		x11/mplayer
LIB_DEPENDS =		databases/sqlite3

NO_REGRESS =		Yes

.include <bsd.port.mk>
