# $OpenBSD: Makefile,v 1.17 2013/08/20 22:05:59 zhuk Exp $

SHARED_ONLY=	Yes

COMMENT=	concentric segmented-rings disk usage visualisation

DISTNAME=	filelight-1.0
REVISION =	9
CATEGORIES=	sysutils x11/kde

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.methylblue.com/filelight/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.methylblue.com/filelight/packages/

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB += Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB += expat fam fontconfig freetype idn jpeg lcms m mng png
WANTLIB += pthread pthread-stubs stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=7 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kparts ${KDE}/kwalletclient

MODULES=	x11/kde \
		devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS=	x11/kde/libs3

PORTHOME=	${WRKDIR}

LIBTOOL_FLAGS+=	--tag=disable-static
USE_GMAKE=	Yes
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}

pre-configure:
	perl -pi -e 's,-O2,,g' ${WRKSRC}/configure

.include <bsd.port.mk>
