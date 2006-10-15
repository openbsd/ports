# $OpenBSD: Makefile,v 1.17 2006/10/15 22:10:49 sturm Exp $

COMMENT=		'wm-dockapp; space weather monitor'

DISTNAME=		wmSpaceWeather-1.04
PKGNAME=		${DISTNAME:L}p0
CATEGORIES=		astro x11 x11/windowmaker

HOMEPAGE=		http://dockapps.org/file.php/id/15

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		http://humppa.nl/distfiles/

RUN_DEPENDS=		:wget-*:net/wget

MAKE_ENV=		CC="${CC}"
USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmSpaceWeather

post-extract:
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
