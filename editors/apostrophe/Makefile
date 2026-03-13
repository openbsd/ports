COMMENT=		edit Markdown in style

GNOME_VERSION=		v3.4
GNOME_PROJECT=		apostrophe
EXTRACT_SUFX=		.tar.gz
PKGNAME=		apostrophe-${GNOME_VERSION:S/v//}

CATEGORIES=		editors

HOMEPAGE =		https://apps.gnome.org/Apostrophe/

# GPLv3+
PERMIT_PACKAGE=		Yes

SITES=			https://gitlab.gnome.org/World/apostrophe/-/archive/${GNOME_VERSION}/

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection gtk-update-icon-cache

BUILD_DEPENDS=		devel/appstream \
			x11/gnome/libadwaita

RUN_DEPENDS=		devel/py-regex \
			textproc/libspelling \
			devel/py-gobject3 \
			textproc/py-chardet \
			textproc/py-pypandoc \
			www/webkitgtk4,webkitgtk60 \
			x11/gnome/libadwaita

post-install:
	${MODPY_COMPILEALL} ${DESTDIR}${MODPY_SITEPKG}/apostrophe/

.include <bsd.port.mk>
