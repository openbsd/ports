# $OpenBSD: Makefile,v 1.1.1.1 2005/04/12 21:35:26 alek Exp $

COMMENT=		"freedesktop.org compliant system tray"

DISTNAME=		peksystray-0.2.1
CATEGORIES=		x11

HOMEPAGE=		http://sourceforge.net/projects/peksystray/

MAINTAINER=		Michael Knudsen <mk@molioner.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c X11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=peksystray/}

SEPARATE_BUILD=		simple
USE_X11=		Yes
CONFIGURE_STYLE=	simple

.include <bsd.port.mk>
