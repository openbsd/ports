# $OpenBSD: Makefile,v 1.28 2013/10/11 20:39:45 naddy Exp $

COMMENT=	X11 front-end for ghostscript

DISTNAME=	ghostview-1.5
REVISION=	4
CATEGORIES=	print

MASTER_SITES=	${MASTER_SITE_GNU:=ghostview/}

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c m pthread-stubs xcb

RUN_DEPENDS=    print/ghostscript/gnu

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
