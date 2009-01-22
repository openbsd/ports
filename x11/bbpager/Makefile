# $OpenBSD: Makefile,v 1.12 2009/01/22 20:39:03 sthen Exp $

COMMENT =	pager for the Blackbox window manager

DISTNAME =	bbpager-0.4.7
CATEGORIES =	x11
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=bbtools/}

HOMEPAGE =	http://bbtools.sourceforge.net/

MAINTAINER =	Josh Rivel <dorqus@freek.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS = ::x11/blackbox

MODULES =	converters/libiconv

WANTLIB =	ICE SM X11 Xau Xdmcp Xext Xft Xrender c expat fontconfig \
		freetype m stdc++ z

USE_X11 = Yes

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
