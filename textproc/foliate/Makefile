# XXX check for tracker3 support at next update
#RUN_DEPENDS +=		x11/gnome/tracker3

COMMENT=		simple and modern GTK eBook viewer

GH_ACCOUNT=		johnfactotum
GH_PROJECT=		foliate
GH_TAGNAME=		2.6.4

CATEGORIES=		textproc graphics

HOMEPAGE=		https://johnfactotum.github.io/foliate/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson

BUILD_DEPENDS=		devel/appstream-glib \
			devel/gettext,-tools \
			devel/iso-codes \
			x11/gnome/gjs

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/iso-codes \
			textproc/gspell \
			textproc/hyphen \
			www/webkitgtk4 \
			x11/gnome/gjs \
			x11/gtk+3,-guic \
			x11/libhandy

post-install:
	ln -s com.github.johnfactotum.Foliate ${PREFIX}/bin/foliate

.include <bsd.port.mk>
