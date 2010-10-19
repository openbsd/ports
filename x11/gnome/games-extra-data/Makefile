# $OpenBSD: Makefile,v 1.8 2010/10/19 15:21:04 ajacoutot Exp $

COMMENT=		extra themes and artwork for GNOME games

GNOME_PROJECT=		gnome-games-extra-data
GNOME_VERSION=		2.30.0

CATEGORIES=		games

HOMEPAGE=		http://live.gnome.org/GnomeGames/

# GPLv2
# cards/dondorf.svg has been placed into Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

RUN_DEPENDS=		::x11/gnome/games

PKG_ARCH=		*
USE_LIBTOOL=		No

.include <bsd.port.mk>
