# $OpenBSD: Makefile,v 1.6 2009/09/15 17:37:22 jasper Exp $

COMMENT=		program that manages encrypted password databases
DISTNAME=		pwsafe-0.2.0
PKGNAME=		${DISTNAME}p1
CATEGORIES=		security

HOMEPAGE=		http://nsd.dyndns.org/pwsafe/

#GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		Xmu m X11 ncurses crypto c stdc++ SM readline ICE \
			curses pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}releases/

CONFIGURE_STYLE=        gnu
USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
