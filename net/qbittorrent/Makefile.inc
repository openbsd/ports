# $OpenBSD: Makefile.inc,v 1.18 2021/08/31 15:42:21 mariani Exp $

# qmake picks up gcrypt.h even though it's unused
DPB_PROPERTIES =	nojunk

VER =		4.3.8
DISTNAME =	qbittorrent-${VER}

DIST_SUBDIR =	qbittorrent

CATEGORIES ?=	net

HOMEPAGE ?=	https://www.qbittorrent.org

MAINTAINER =	Elias M. Mariani <marianielias@gmail.com>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES ?=	${MASTER_SITE_SOURCEFORGE:=qbittorrent/}

MODULES +=	x11/qt5

USE_GMAKE =		Yes

CONFIGURE_STYLE =       autoreconf
AUTORECONF =            ${WRKSRC}/bootstrap.sh
AUTOCONF_VERSION =      2.69
AUTOMAKE_VERSION =      1.16
