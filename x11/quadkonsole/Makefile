# $OpenBSD: Makefile,v 1.19 2013/10/05 07:34:43 espie Exp $

COMMENT=	terminal application that embeds Konsole for KDE

DISTNAME=	quadkonsole-2.0
REVISION=	10
CATEGORIES=	x11 x11/kde

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =  ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c
WANTLIB += expat fam fontconfig freetype idn m png pthread
WANTLIB += pthread-stubs stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kparts ${KDE}/kwalletclient

MASTER_SITES=	http://nomis80.org/quadkonsole/

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde \
		devel/gettext

MODKDE_VERSION=	3.3.0

MAKE_FLAGS+=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV+=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
