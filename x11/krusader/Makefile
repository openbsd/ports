# $OpenBSD: Makefile,v 1.23 2014/04/13 01:01:39 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	twin panel file manager for KDE

DISTNAME=	krusader-1.80.0
REVISION=	13

CATEGORIES=	x11 x11/kde

HOMEPAGE=	http://krusader.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=krusader/}

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB += expat fam fontconfig freetype idn jpeg lcms m mng pcre
WANTLIB += pcreposix png pthread pthread-stubs qui-mt stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/khtml ${KDE}/kio
WANTLIB += ${KDE}/kjs ${KDE}/kjsembed ${KDE}/konq ${KDE}/kparts
WANTLIB += ${KDE}/kutils ${KDE}/kwalletclient

PORTHOME=	${WRKDIR}

MODULES=	x11/kde devel/gettext

USE_GMAKE=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3 \
		x11/kde/base3 \
		x11/kde/bindings3 \
		x11/qt3,-main

AUTOCONF_VERSION=2.61

CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS} \
		--disable-dependency-tracking \
		--with-extra-libs="${LOCALBASE}/lib" \
		--with-extra-includes="${LOCALBASE}/include" \
		--without-acl

.include <bsd.port.mk>
