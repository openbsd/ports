# $OpenBSD: Makefile,v 1.6 2001/03/14 12:23:17 wilfried Exp $

DISTNAME=		wmGrabImage-0.70
PKGNAME=		${DISTNAME:L}
CATEGORIES=		graphics x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/ \
			ftp://ftp.funet.fi/pub/FreeBSD/eurocrypt/distfiles/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

RUN_DEPENDS=		convert::graphics/ImageMagick \
			xv::graphics/xv \
			wget::net/wget

USE_X11=		Yes

WRKSRC=			${WRKDIST}/wmGrabImage

.include <bsd.port.mk>
