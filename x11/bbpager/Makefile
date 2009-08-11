# $OpenBSD: Makefile,v 1.13 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT =	pager for the Blackbox window manager

DISTNAME =	bbpager-0.4.7
PKGNAME =	${DISTNAME}p0

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
		freetype m stdc++ z pthread-stubs xcb

USE_X11 = Yes

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
