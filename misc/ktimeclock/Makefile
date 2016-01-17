# $OpenBSD: Makefile,v 1.27 2016/01/17 17:29:09 sthen Exp $

COMMENT=	task-based timeclock for KDE

VERSION=	2.0.2
DISTNAME=	ktimeclock-${VERSION}
REVISION=	11
CATEGORIES=	misc x11

HOMEPAGE=	http://www.howlingfrog.com/opensource/ktimeclock/

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient
WANTLIB += X11-xcb Xdamage Xxf86vm drm glapi xcb-dri2 xcb-glx
WANTLIB += ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat fam
WANTLIB += fontconfig freetype idn m png pthread pthread-stubs stdc++
WANTLIB += util xcb z

MASTER_SITES=	${HOMEPAGE}/downloads/v${VERSION}/tarball/

RUN_DEPENDS=	x11/gtk+3,-guic
LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde devel/gettext

PORTHOME=	${WRKDIR}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS} --with-xinerama
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
MAKE_ENV=	${CONFIGURE_ENV}

MODKDE_FIXUP_DATADIR=	Yes

.include <bsd.port.mk>
