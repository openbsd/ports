# $OpenBSD: Makefile,v 1.25 2013/06/24 15:53:38 zhuk Exp $

COMMENT=	silly little game based on Spacetaxi for the C64

DISTNAME=	taxipilot-0.7.2
REVISION =	5
CATEGORIES=	games

HOMEPAGE=	http://taxipilot.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB += expat fam fontconfig freetype idn jpeg lcms m mng png
WANTLIB += pthread pthread-stubs stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=4 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=taxipilot/}

RUN_DEPENDS=	x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde devel/gettext

PORTHOME=	${WRKDIR}

MAKE_ENV=	${CONFIGURE_ENV}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
