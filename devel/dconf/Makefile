# $OpenBSD: Makefile,v 1.78 2019/01/03 07:19:13 ajacoutot Exp $

# -fvisibility
NOT_FOR_ARCHS=		${GCC3_ARCHS}

COMMENT=		configuration backend system

GNOME_PROJECT=		dconf
GNOME_VERSION=		0.30.1
REVISION=		0

SHARED_LIBS +=		dconf        1.1 # 1.0.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		docbook vala

BUILD_DEPENDS=		x11/dbus

LIB_DEPENDS=		devel/glib2

# needs the bash-completion package
CONFIGURE_ARGS +=	-Dbash_completion=false

# XXX the gtk-doc dependency chain includes py-numpy which breaks on arm as it
# requires fortran (lang/gcc/4.9,-f95)
#BUILD_DEPENDS +=	textproc/gtk-doc
#CONFIGURE_ARGS +=	-Dgtk_doc

# needs a running DBus
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
