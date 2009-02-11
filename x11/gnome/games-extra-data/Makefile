# $OpenBSD: Makefile,v 1.2 2009/02/11 15:33:51 jasper Exp $

COMMENT=		extra themes and artwork for GNOME games

GNOME_PROJECT=		gnome-games-extra-data
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p0

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
