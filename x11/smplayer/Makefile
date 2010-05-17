# $OpenBSD: Makefile,v 1.3 2010/05/17 15:02:54 edd Exp $

COMMENT =		complete front-end for MPlayer

DISTNAME =		smplayer-0.6.9
PKGNAME =		${DISTNAME}

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		c m pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		:mplayer->=20090708:x11/mplayer \
			::devel/desktop-file-utils
LIB_DEPENDS =		QtGui.>=8,QtNetwork.>=7,QtXml.>=7::x11/qt4

USE_X11 =		Yes
USE_GMAKE =		Yes

NO_REGRESS =		Yes

ALL_TARGET =		src/smplayer

.include <bsd.port.mk>
