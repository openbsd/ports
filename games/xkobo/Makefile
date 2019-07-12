# $OpenBSD: Makefile,v 1.38 2019/07/12 20:46:27 sthen Exp $

COMMENT =	multi-way scrolling shoot'em up for X11, addictive
#'

DISTNAME =	xkobo-1.11
REVISION =	9
CATEGORIES =	games

MASTER_SITES =	${MASTER_SITE_XCONTRIB:=games/}  \
		ftp://ftp.uoknor.edu/mirrors/X/contrib/games/

FLAVORS =	harder
FLAVOR ?=

.if ${FLAVOR} == "harder"
PATCH_LIST = 	patch-* extra-hard
.endif

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes
	
WANTLIB =	X11 Xau Xdmcp Xext c m xcb ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	imake

ALL_TARGET =	xkobo
NO_TEST =	Yes

post-install: 
	${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
