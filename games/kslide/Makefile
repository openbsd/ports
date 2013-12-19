# $OpenBSD: Makefile,v 1.28 2013/12/19 19:49:33 zhuk Exp $

COMMENT=	puzzle game for KDE

DISTNAME=	kslide-1.0.1
CATEGORIES=	games

HOMEPAGE=	http://kde-apps.org/content/show.php/KSlide?content=10317

# GPLv2
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =  c expat m pthread pthread-stubs stdc++ util z
WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm
WANTLIB += X11-xcb Xau Xdmcp drm glapi xcb xcb-dri2 xcb-glx
WANTLIB += fontconfig freetype
WANTLIB += art_lgpl_2 fam idn jpeg lcms mng png
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=4 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

MASTER_SITES=	${_MASTER_SITE_FREEBSD}
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3
DPB_PROPERTIES =	tag:kde3

MODULES=	x11/kde devel/gettext

CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
MAKE_ENV=	${CONFIGURE_ENV}

CONFIGURE_STYLE=	gnu autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS} ${MODKDE_CONFIGURE_ARGS}

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
