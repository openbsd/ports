# $OpenBSD: Makefile,v 1.23 2015/03/27 08:16:18 ajacoutot Exp $

COMMENT=		fallback theme of the icon theme specification

# new release: bump x11/gtk+3,-guic to force a run of gtk-update-icon-cache;
# we cannot run it ourselves because gtk-update-icon-cache depends on
# hicolor-icon-theme and that would create a dependency loop
DISTNAME=		hicolor-icon-theme-0.15
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		x11

HOMEPAGE=		http://www.freedesktop.org/Standards/icon-theme-spec

MASTER_SITES=		http://icon-theme.freedesktop.org/releases/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= 	gnu

NO_TEST=		Yes

PKG_ARCH=		*

.include <bsd.port.mk>
