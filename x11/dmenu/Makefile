# $OpenBSD: Makefile,v 1.12 2010/10/19 08:13:56 espie Exp $

COMMENT=		dynamic menu for X11
DISTNAME=		dmenu-4.1.1

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

USE_X11=		Yes
USE_GROFF =	Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
