# $OpenBSD: Makefile,v 1.16 2013/03/19 13:07:14 nigel Exp $

COMMENT=	terminal application that embeds Konsole for KDE

DISTNAME=	quadkonsole-2.0
REVISION=	8
CATEGORIES=	x11 x11/kde

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB +=	DCOP ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c
WANTLIB +=	expat fam fontconfig freetype idn kdecore kdefx kdesu kdeui
WANTLIB +=	kio kparts kwalletclient m png pthread pthread-stubs
WANTLIB +=	stdc++ util xcb z

MASTER_SITES=	http://nomis80.org/quadkonsole/

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde \
		devel/gettext

MODKDE_VERSION=	3.3.0

MAKE_FLAGS+=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV+=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
