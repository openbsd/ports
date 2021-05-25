# $OpenBSD: Makefile.inc,v 1.15 2021/05/25 18:20:43 mariani Exp $

# qmake picks up gcrypt.h even though it's unused
DPB_PROPERTIES =	nojunk

VER =		4.3.5
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
