# $OpenBSD: Makefile,v 1.16 2011/08/21 21:28:24 kili Exp $

COMMENT=		dynamic menu for X11
DISTNAME=		dmenu-4.4
REVISION=		0

CATEGORIES=		x11
HOMEPAGE=		http://tools.suckless.org/dmenu

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xinerama c

MASTER_SITES=		http://dl.suckless.org/tools/

FAKE_FLAGS=		DESTDIR=""

NO_REGRESS=		Yes

.include <bsd.port.mk>
