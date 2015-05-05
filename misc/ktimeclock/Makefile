# $OpenBSD: Makefile,v 1.26 2015/05/05 17:00:18 sthen Exp $

COMMENT=	task-based timeclock for KDE

VERSION=	2.0.2
DISTNAME=	ktimeclock-${VERSION}
REVISION=	10
CATEGORIES=	misc x11

HOMEPAGE=	http://www.howlingfrog.com/opensource/ktimeclock/

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient
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
