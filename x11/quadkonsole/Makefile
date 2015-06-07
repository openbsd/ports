# $OpenBSD: Makefile,v 1.22 2015/06/07 09:16:29 ajacoutot Exp $

COMMENT=	terminal application that embeds Konsole for KDE

DISTNAME=	quadkonsole-2.0.3
CATEGORIES=	x11 x11/kde

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =  ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c
WANTLIB += expat fam fontconfig freetype idn m png pthread
WANTLIB += pthread-stubs stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kparts ${KDE}/kwalletclient

MASTER_SITES=	http://nomis80.org/quadkonsole/

LIB_DEPENDS=	x11/kde/libs3
RUN_DEPENDS=	x11/gtk+3,-guic

MODULES=	x11/kde \
		devel/gettext

MODKDE_VERSION=	3.5.7

MAKE_FLAGS+=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV+=	${MODKDE_CONFIGURE_ENV}

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
