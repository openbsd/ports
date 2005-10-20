# $OpenBSD: Makefile,v 1.2 2005/10/20 09:02:52 mbalmer Exp $

COMMENT=		"program that manages encrypted password databases"
DISTNAME=		pwsafe-0.2.0
CATEGORIES=		security

HOMEPAGE=		http://nsd.dyndns.org/pwsafe/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

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
NO_REGRESS=		Yes

.include <bsd.port.mk>
