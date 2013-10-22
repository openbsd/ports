# $OpenBSD: Makefile,v 1.23 2013/10/22 11:34:20 zhuk Exp $

COMMENT=	task-based timeclock for KDE

VERSION=	2.0.2
DISTNAME=	ktimeclock-${VERSION}
REVISION=	7
CATEGORIES=	misc x11

HOMEPAGE=	http://www.howlingfrog.com/opensource/ktimeclock/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =  ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat fam
WANTLIB += fontconfig freetype idn m png pthread stdc++ util xcb z 
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

MASTER_SITES=	${HOMEPAGE}/downloads/v${VERSION}/tarball/

RUN_DEPENDS=	x11/gtk+2,-guic
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
