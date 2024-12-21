COMMENT=		simple and modern GTK eBook viewer

V=			3.2.1
DISTNAME=		com.github.johnfactotum.Foliate-${V}
EXTRACT_SUFX=		.tar.xz
PKGNAME=		foliate-${V}

CATEGORIES=		textproc graphics print

HOMEPAGE=		https://johnfactotum.github.io/foliate/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/johnfactotum/foliate/releases/download/${V}/

MODULES=		devel/dconf \
			devel/meson

BUILD_DEPENDS=		devel/appstream \
			devel/gettext,-tools \
			www/webkitgtk4,webkitgtk60 \
			x11/gnome/gjs \
			x11/gnome/libadwaita

RUN_DEPENDS=		devel/desktop-file-utils \
			www/webkitgtk4,webkitgtk60 \
			x11/gnome/gjs \
			x11/gtk+4,-guic \
			x11/gnome/libadwaita

.include <bsd.port.mk>
