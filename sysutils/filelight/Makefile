# $OpenBSD: Makefile,v 1.22 2015/05/05 17:00:19 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	concentric segmented-rings disk usage visualisation

DISTNAME=	filelight-1.0
REVISION =	14
CATEGORIES=	sysutils x11/kde
PKGSPEC =	filelight-<2

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.methylblue.com/filelight/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=7 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kparts ${KDE}/kwalletclient
WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c
WANTLIB += drm expat fam fontconfig freetype glapi idn jpeg lcms m mng
WANTLIB += png pthread pthread-stubs stdc++ util xcb xcb-dri2 xcb-glx z

MASTER_SITES=	http://www.methylblue.com/filelight/packages/

MODULES=	x11/kde \
		devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

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
