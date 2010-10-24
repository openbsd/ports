# $OpenBSD: Makefile,v 1.6 2010/10/24 21:15:34 ajacoutot Exp $

COMMENT =		complete front-end for MPlayer

DISTNAME =		smplayer-0.6.9
REVISION =		0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		c m pthread stdc++ z QtGui QtNetwork QtXml

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		:mplayer->=20090708:x11/mplayer \
			::devel/desktop-file-utils
LIB_DEPENDS =		::x11/qt4

USE_GMAKE =		Yes
USE_GROFF =	Yes

NO_REGRESS =		Yes

ALL_TARGET =		src/smplayer

.include <bsd.port.mk>
