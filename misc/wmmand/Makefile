# $OpenBSD: Makefile,v 1.3 2001/11/14 13:58:34 wilfried Exp $

COMMENT=		'wm-dockapp; mandelbrot explorer'

DISTNAME=		wmMand-1.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=     	misc x11 x11/windowmaker
NEED_VERSION=		1.482

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		:xv-*:graphics/xv

NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmMand

ALL_TARGET=		clean all

.include <bsd.port.mk>
