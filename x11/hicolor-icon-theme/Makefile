PKG_ARCH=		*

COMMENT=		fallback theme of the icon theme specification

# new release: bump x11/gtk+4,-guic to force a run of gtk-update-icon-cache;
# we cannot run it ourselves because gtk-update-icon-cache depends on
# hicolor-icon-theme and that would create a dependency loop
DISTNAME=		hicolor-icon-theme-0.18
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		x11

HOMEPAGE=		http://www.freedesktop.org/Standards/icon-theme-spec

SITES=			https://icon-theme.freedesktop.org/releases/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson

.include <bsd.port.mk>
