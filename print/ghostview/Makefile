# $OpenBSD: Makefile,v 1.21 2010/04/15 13:27:48 ajacoutot Exp $

COMMENT=	X11 front-end for ghostscript

DISTNAME=	ghostview-1.5
PKGNAME=	${DISTNAME}p2
CATEGORIES=	print

MASTER_SITES=	${MASTER_SITE_GNU:=ghostview/}

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xp Xpm Xt c m pthread-stubs xcb

RUN_DEPENDS=    :ghostscript-*:print/ghostscript/gnu

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
