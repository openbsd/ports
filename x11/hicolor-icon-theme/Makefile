# $OpenBSD: Makefile,v 1.19 2014/03/24 10:05:51 ajacoutot Exp $

COMMENT=		fallback theme of the icon theme specification

# new release: bump x11/gtk+2,-guic to force a run of gtk-update-icon-cache;
# we cannot run it ourselves because gtk-update-icon-cache depends on
# hicolor-icon-theme and that would create a dependency loop
DISTNAME=		hicolor-icon-theme-0.13

CATEGORIES=		x11

HOMEPAGE=		http://www.freedesktop.org/Standards/icon-theme-spec

MASTER_SITES=		http://icon-theme.freedesktop.org/releases/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= 	gnu

NO_TEST=		Yes

PKG_ARCH=		*

.include <bsd.port.mk>
