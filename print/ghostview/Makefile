# $OpenBSD: Makefile,v 1.27 2013/03/11 11:37:53 espie Exp $

COMMENT=	X11 front-end for ghostscript

DISTNAME=	ghostview-1.5
REVISION=	3
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
