# $OpenBSD: Makefile,v 1.5 2009/08/10 06:34:29 kili Exp $

COMMENT=		program that manages encrypted password databases
DISTNAME=		pwsafe-0.2.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		security

HOMEPAGE=		http://nsd.dyndns.org/pwsafe/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

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
