# $OpenBSD: Makefile,v 1.16 2006/10/15 22:10:49 sturm Exp $

COMMENT=		'wm-dockapp; shows sunrise/sunset times'

DISTNAME=		wmSun-1.03
PKGNAME=		${DISTNAME:L}p0
CATEGORIES=		astro x11 x11/windowmaker

HOMEPAGE=		http://dockapps.org/file.php/id/16

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://humppa.nl/distfiles/

MAKE_ENV=		CC="${CC}"
USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmSun

post-extract:
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
