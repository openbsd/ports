# $OpenBSD: Makefile,v 1.8 2000/04/05 01:42:08 espie Exp $

DISTNAME=	xcolors
PKGNAME=	xcolors-1.3
CATEGORIES=	x11
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.tut.ac.jp/X11/X11R6/contrib/programs/ \
		ftp://ftp.weird.com/pub/mirror/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/xcolors
USE_IMAKE=	Yes
FAKE=		Yes
MAKE_FLAGS=	RGBDBFILE=${X11BASE}/lib/X11/rgb

.include <bsd.port.mk>
