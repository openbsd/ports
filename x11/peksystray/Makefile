# $OpenBSD: Makefile,v 1.11 2019/07/12 20:51:19 sthen Exp $

COMMENT=		freedesktop.org compliant system tray

DISTNAME=		peksystray-0.4.0
REVISION=		1
CATEGORIES=		x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://sourceforge.net/projects/peksystray/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c X11 ICE SM

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=peksystray/}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	simple

NO_TEST=		Yes

.include <bsd.port.mk>
