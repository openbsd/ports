# $OpenBSD: Makefile.inc,v 1.4 2019/01/04 22:20:49 mariani Exp $

VER =		4.1.5
DISTNAME =	qbittorrent-${VER}

DIST_SUBDIR =	qbittorrent

CATEGORIES ?=	net

HOMEPAGE ?=	https://www.qbittorrent.org

MAINTAINER ?=	Elias M. Mariani <marianielias@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES ?=	${MASTER_SITE_SOURCEFORGE:=qbittorrent/}

MODULES +=	x11/qt5

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
