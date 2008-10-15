# $OpenBSD: Makefile,v 1.8 2008/10/15 18:47:21 kili Exp $

COMMENT=		dynamic menu for X11
DISTNAME=		dmenu-3.9

CATEGORIES=		x11
HOMEPAGE=		http://www.suckless.org/programs/dmenu.html

MAINTAINER=		Jim Razmus II <jim@bonetruck.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xinerama c

MASTER_SITES=		http://code.suckless.org/dl/tools/

FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
