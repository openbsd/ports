# $OpenBSD: Makefile,v 1.7 2010/07/30 06:58:59 ajacoutot Exp $

COMMENT=		freedesktop.org compliant system tray

DISTNAME=		peksystray-0.4.0
REVISION=		1
CATEGORIES=		x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://sourceforge.net/projects/peksystray/

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
