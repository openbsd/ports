# $OpenBSD: Makefile,v 1.1.1.1 2001/03/30 15:17:51 wilfried Exp $

COMMENT=		'wm-dockapp; mandelbrot explorer'

DISTNAME=		wmMand-1.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=     	misc x11 x11/windowmaker
NEED_VERSION=		1.378

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		xv::graphics/xv

WRKSRC=			${WRKDIST}/wmMand

ALL_TARGET=		clean all

.include <bsd.port.mk>
