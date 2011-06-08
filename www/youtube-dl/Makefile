# $OpenBSD: Makefile,v 1.22 2011/06/08 18:15:30 rpointel Exp $

COMMENT =	command-line program to download videos from YouTube.com

V = 		2011.03.29
DISTNAME =	youtube-dl-${V}
REVISION =	0
WRKDIST = 	${WRKDIR}/youtube-dl
DIST_SUBDIR =	youtube-dl
CATEGORIES =	www

HOMEPAGE =	http://rg3.github.com/youtube-dl/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://spacehopper.org/mirrors/
#MASTER_SITES =	http://bitbucket.org/rg3/youtube-dl/get/

EXTRACT_ONLY =
EXTRACT_SUFX =

MODULES =	lang/python

NO_REGRESS =	Yes

PKG_ARCH =	*

do-extract:
	mkdir ${WRKDIST}
	cp ${DISTDIR}/${DIST_SUBDIR}/${DISTNAME} ${WRKDIST}/youtube-dl

do-build:
	sed '1s,.*,#!${MODPY_BIN},' ${WRKBUILD}/youtube-dl \
	   >${WRKBUILD}/youtube-dl.new
	mv ${WRKBUILD}/youtube-dl.new ${WRKBUILD}/youtube-dl

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/youtube-dl ${PREFIX}/bin

.include <bsd.port.mk>
