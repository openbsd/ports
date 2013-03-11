# $OpenBSD: Makefile,v 1.15 2013/03/11 11:46:15 espie Exp $

COMMENT=	terminal application that embeds Konsole for KDE

DISTNAME=	quadkonsole-2.0
REVISION=	7
CATEGORIES=	x11 x11/kde

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam
WANTLIB += idn jpeg m png pthread rpcsvc stdc++ util kdeui kdefx kdesu
WANTLIB += z pthread-stubs xcb kdecore DCOP kwalletclient kio kparts

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
