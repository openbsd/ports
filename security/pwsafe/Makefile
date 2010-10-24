# $OpenBSD: Makefile,v 1.9 2010/10/24 21:34:55 ajacoutot Exp $

COMMENT=		program that manages encrypted password databases
DISTNAME=		pwsafe-0.2.0
REVISION=		2
CATEGORIES=		security

HOMEPAGE=		http://nsd.dyndns.org/pwsafe/

#GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		Xmu m X11 ncurses crypto c stdc++ SM readline ICE \
			curses

MASTER_SITES=		${HOMEPAGE}releases/

CONFIGURE_STYLE=        gnu
USE_GMAKE=		Yes
USE_GROFF =	Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
