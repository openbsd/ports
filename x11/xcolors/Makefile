# $OpenBSD: Makefile,v 1.15 2002/03/21 21:25:56 espie Exp $

COMMENT=	"display all (ok, most of) the colors in the universe"

DISTNAME=	xcolors
PKGNAME=	xcolors-1.3
CATEGORIES=	x11
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.tut.ac.jp/X11/X11R6/contrib/programs/ \
		ftp://ftp.weird.com/pub/mirror/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
WRKDIST=	${WRKDIR}/xcolors
CONFIGURE_STYLE=imake
MAKE_FLAGS=	RGBDBFILE=${X11BASE}/lib/X11/rgb

.include <bsd.port.mk>
