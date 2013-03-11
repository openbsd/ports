# $OpenBSD: Makefile,v 1.20 2013/03/11 11:46:08 espie Exp $

COMMENT=		dynamic menu for X11
DISTNAME=		dmenu-4.5
REVISION=		0

CATEGORIES=		x11
HOMEPAGE=		http://tools.suckless.org/dmenu

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xinerama c

MASTER_SITES=		http://dl.suckless.org/tools/

FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
