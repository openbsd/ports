# $OpenBSD: Makefile,v 1.4 2007/10/02 18:35:47 winiger Exp $

COMMENT=		freedesktop.org compliant system tray

DISTNAME=		peksystray-0.4.0
CATEGORIES=		x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://sourceforge.net/projects/peksystray/

MAINTAINER=		Marc Winiger <winiger@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c X11 ICE SM

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=peksystray/}

SEPARATE_BUILD=		simple
USE_X11=		Yes
CONFIGURE_STYLE=	simple

NO_REGRESS=		Yes

.include <bsd.port.mk>
