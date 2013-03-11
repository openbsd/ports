# $OpenBSD: Makefile,v 1.17 2013/03/11 11:46:08 espie Exp $

COMMENT =	pager for the Blackbox window manager

DISTNAME =	bbpager-0.4.7
REVISION=	0

CATEGORIES =	x11
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=bbtools/}

HOMEPAGE =	http://bbtools.sourceforge.net/

MAINTAINER =	Josh Rivel <dorqus@freek.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS = x11/blackbox

MODULES =	converters/libiconv

WANTLIB =	ICE SM X11 Xau Xdmcp Xext Xft Xrender c expat fontconfig \
		freetype m stdc++ z pthread-stubs xcb


CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
