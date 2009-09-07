# $OpenBSD: Makefile,v 1.6 2009/09/07 14:21:35 pirofti Exp $

COMMENT =	command-line program to download videos from YouTube.com

V = 		2009.08.08
DISTNAME =	${V}
WRKDIST = 	${WRKDIR}/youtube-dl
DIST_SUBDIR =	youtube-dl
PKGNAME =	youtube-dl-${V}
CATEGORIES =	www

HOMEPAGE =	http://bitbucket.org/rg3/youtube-dl/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://bitbucket.org/rg3/youtube-dl/get/

MODULES =	lang/python

NO_REGRESS =	Yes

PKG_ARCH =	*

do-build:
	sed '1s,.*,#!${MODPY_BIN},' ${WRKBUILD}/youtube-dl \
	   >${WRKBUILD}/youtube-dl.new
	mv ${WRKBUILD}/youtube-dl.new ${WRKBUILD}/youtube-dl

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/youtube-dl ${PREFIX}/bin

.include <bsd.port.mk>
