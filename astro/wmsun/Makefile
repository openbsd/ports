# $OpenBSD: Makefile,v 1.7 2001/03/28 09:59:41 wilfried Exp $

COMMENT=		'wm-dockapp; shows sunrise/sunset times'

DISTNAME=		wmSun-1.03
PKGNAME=		${DISTNAME:L}
CATEGORIES=		astro x11 x11/windowmaker
NEED_VERSION=		1.364

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/ \
			ftp://ftp.funet.fi/pub/FreeBSD/eurocrypt/distfiles/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes

WRKSRC=			${WRKDIST}/wmSun

post-extract:
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
