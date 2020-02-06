# $OpenBSD: Makefile.inc,v 1.8 2020/02/06 20:00:18 rsadowski Exp $

# qmake picks up gcrypt.h even though it's unused
DPB_PROPERTIES =	nojunk

VER =		4.2.1
DISTNAME =	qbittorrent-${VER}

DIST_SUBDIR =	qbittorrent

CATEGORIES ?=	net

HOMEPAGE ?=	https://www.qbittorrent.org

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES ?=	${MASTER_SITE_SOURCEFORGE:=qbittorrent/}

MODULES +=	x11/qt5

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
