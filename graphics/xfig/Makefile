# $OpenBSD: Makefile,v 1.8 1999/12/05 16:12:42 espie Exp $

DISTNAME=	xfig.3.2.2
PKGNAME=	xfig-3.2.2
CATEGORIES=	graphics x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= applications/drawing_tools/xfig

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg \
		Xaw3d.6.1:${PORTSDIR}/x11/Xaw3d
RUN_DEPENDS=	fig2dev:${PORTSDIR}/print/transfig \
		gv:${PORTSDIR}/print/gv

USE_IMAKE=	yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults  \
		XFIGLIBDIR=${PREFIX}/lib/X11/xfig  -f

.include <bsd.port.mk>
