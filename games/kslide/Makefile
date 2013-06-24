# $OpenBSD: Makefile,v 1.23 2013/06/24 15:53:38 zhuk Exp $

COMMENT=	puzzle game for KDE

DISTNAME=	kslide-0.90
REVISION =	5
CATEGORIES=	games

HOMEPAGE=	http://perso.wanadoo.fr/coquelle/taquin/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB += expat fam fontconfig freetype idn jpeg lcms m mng png
WANTLIB += pthread pthread-stubs stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=4 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

MASTER_SITES=	http://david.bieder.free.fr/eric/taquin/ \
		http://perso.wanadoo.fr/coquelle/taquin/
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde devel/gettext

MAKE_ENV=	${CONFIGURE_ENV}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/kslide

.include <bsd.port.mk>
