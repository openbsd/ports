COMMENT=		Ubuntu GNOME theme

V=			26.04.5
GH_TAGNAME=		26.04.5.1ubuntu
GH_ACCOUNT=		ubuntu
GH_PROJECT=		yaru
PKGNAME=		yaru-${V}

CATEGORIES=		x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3, CC-SA-4.0
PERMIT_PACKAGE=	Yes

MODULES=		devel/meson

BUILD_DEPENDS=		shells/bash \
			www/sassc

# glib-compile-resources(1)
BUILD_DEPENDS +=	devel/glib2

# grealpath(1)
BUILD_DEPENDS +=	sysutils/coreutils

# gfind(1)
BUILD_DEPENDS +=	misc/findutils

RUN_DEPENDS=		x11/gtk+4,-guic

PKG_ARCH=		*

post-install:
	rm -r ${PREFIX}/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com
	rmdir ${PREFIX}/share/gnome-shell/extensions/
	rm -r ${PREFIX}/share/glib-2.0/schemas/99_Yaru.gschema.override \
		${PREFIX}/share/{wayland-,x}sessions/

.include <bsd.port.mk>
