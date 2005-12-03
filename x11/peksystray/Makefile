# $OpenBSD: Makefile,v 1.2 2005/12/03 18:10:34 steven Exp $

COMMENT=		"freedesktop.org compliant system tray"

DISTNAME=		peksystray-0.3.0
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
