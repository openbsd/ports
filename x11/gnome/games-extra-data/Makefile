# $OpenBSD: Makefile,v 1.11 2011/09/12 12:04:16 jasper Exp $

BROKEN= 		update needs fixed clutter/Mesa

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

EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

RUN_DEPENDS=		x11/gnome/games

PKG_ARCH=		*
USE_LIBTOOL=		No

.include <bsd.port.mk>
