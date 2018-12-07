# $OpenBSD: Makefile.inc,v 1.3 2018/12/07 07:34:15 rsadowski Exp $

VER =		4.1.4
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
