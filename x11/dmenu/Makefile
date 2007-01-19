# $OpenBSD: Makefile,v 1.1.1.1 2007/01/19 21:38:40 steven Exp $

COMMENT=		"dynamic menu for X11"
DISTNAME=		dmenu-2.1

CATEGORIES=		x11
HOMEPAGE=		http://tools.suckless.org/

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c

MASTER_SITES=		${HOMEPAGE}download/

FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
