# $OpenBSD: Makefile,v 1.27 2018/10/24 14:28:12 sthen Exp $

COMMENT =	pager for the Blackbox window manager

DISTNAME =	bbpager-0.4.7
REVISION =	6

CATEGORIES =	x11
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=bbtools/}

HOMEPAGE =	http://bbtools.sourceforge.net/

MAINTAINER =	Josh Rivel <josh@rivels.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS = x11/blackbox

LIB_DEPENDS =	converters/libiconv

WANTLIB =	ICE SM X11 Xau Xdmcp Xext Xft Xrender c expat fontconfig \
		freetype iconv m ${COMPILER_LIBCXX} z xcb

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE = gnu

.ifdef DEBUG
CONFIGURE_ARGS+=	--enable-debug
.endif

.include <bsd.port.mk>
