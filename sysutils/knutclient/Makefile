# $OpenBSD: Makefile,v 1.16 2013/03/11 11:41:30 espie Exp $

COMMENT=		KDE UPS monitoring tool

RELEASE=		0.6.0
DISTNAME=		knutclient-${RELEASE}
REVISION =		4
CATEGORIES=		sysutils x11 x11/kde

HOMEPAGE=		http://www.alo.cz/knutclient-pop-en.html

MAINTAINER=		Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xrender c idn \
			jpeg m png pthread pthread-stubs stdc++ util xcb z \
			DCOP kdecore>=4 kdefx kdeui art_lgpl_2

MASTER_SITES=		ftp://ftp.buzuluk.cz/pub/alo/knutclient/

# Patch Hack
MODULES=		x11/kde \
			devel/gettext

LIB_DEPENDS=		x11/kde/libs3 \
			graphics/libart

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.52
USE_LIBTOOL=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MAKE_ENV=		${CONFIGURE_ENV}

.include <bsd.port.mk>
