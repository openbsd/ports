# $OpenBSD: Makefile,v 1.16 2013/10/05 07:34:43 espie Exp $

COMMENT=	yet another kuake KDE terminal emulator

DISTNAME=	yakuake-2.8.1
REVISION=	9
CATEGORIES=	x11 x11/kde

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://yakuake.kde.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=yakuake/}

WANTLIB =  ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat fam
WANTLIB += fontconfig freetype idn m png pthread stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

MODULES=	devel/gettext \
		x11/kde

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

# for Konsole KPart
RUN_DEPENDS+=	x11/kde/base3

LIB_DEPENDS=	x11/kde/libs3

PORTHOME?=	${WRKDIR}
MODKDE_VERSION=	3.5.8
AUTOCONF_VERSION=2.61

CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
