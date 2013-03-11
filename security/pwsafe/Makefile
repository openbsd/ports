# $OpenBSD: Makefile,v 1.12 2013/03/11 11:41:27 espie Exp $

COMMENT=		program that manages encrypted password databases
DISTNAME=		pwsafe-0.2.0
REVISION=		3
CATEGORIES=		security

HOMEPAGE=		http://nsd.dyndns.org/pwsafe/

#GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		Xmu m X11 ncurses crypto c stdc++ SM readline ICE \
			curses

MASTER_SITES=		${HOMEPAGE}releases/

CONFIGURE_STYLE=        gnu
USE_GMAKE=		Yes
USE_GROFF =		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
