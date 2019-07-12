# $OpenBSD: Makefile.inc,v 1.6 2019/07/12 20:48:47 sthen Exp $

VER =		4.1.5
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
