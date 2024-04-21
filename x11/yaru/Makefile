COMMENT=		Ubuntu GNOME theme

GH_TAGNAME=		24.04.2
GH_ACCOUNT=		ubuntu
GH_PROJECT=		yaru

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

RUN_DEPENDS=		x11/gtk+4,-guic

PKG_ARCH=		*

post-install:
	rm -r ${PREFIX}/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com
	rmdir ${PREFIX}/share/gnome-shell/extensions/
	rm -r ${PREFIX}/share/glib-2.0/schemas/99_Yaru.gschema.override \
		${PREFIX}/share/{wayland-,x}sessions/

.include <bsd.port.mk>
