# $OpenBSD: Makefile.inc,v 1.7 2020/01/30 21:24:29 naddy Exp $

# qmake picks up gcrypt.h even though it's unused
DPB_PROPERTIES =	nojunk

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
