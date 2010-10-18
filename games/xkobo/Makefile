# $OpenBSD: Makefile,v 1.23 2010/10/18 18:00:19 espie Exp $

COMMENT=	multi-way scrolling shoot'em up for X11, addictive

DISTNAME=	xkobo-1.11
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}  \
		ftp://ftp.uoknor.edu/mirrors/X/contrib/games/

FLAVORS=harder
FLAVOR?=

.if ${FLAVOR:L} == "harder"
PATCH_LIST=patch-* extra-hard
.endif

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
	
WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs stdc++ xcb

CONFIGURE_STYLE=	imake

ALL_TARGET=	xkobo
USE_X11=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

post-install: 
	${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
