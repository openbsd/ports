# $OpenBSD: Makefile,v 1.73 2018/04/26 07:35:11 ajacoutot Exp $

# -fvisibility
NOT_FOR_ARCHS=		${GCC3_ARCHS}

COMMENT=		configuration backend system

GNOME_PROJECT=		dconf
GNOME_VERSION=		0.28.0
REVISION=		0

SHARED_LIBS +=		dconf        1.0 # 1.0.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		vala

LIB_DEPENDS=		devel/glib2

# XXX the gtk-doc dependency chain includes py-numpy which breaks on arm
#BUILD_DEPENDS +=	textproc/gtk-doc
#CONFIGURE_ARGS=	-Denable-gtk-doc=true

# needs a running DBus
TEST_IS_INTERACTIVE=	Yes

pre-configure:
	sed -i -e 's,/etc/dconf,${SYSCONFDIR}/dconf,g' \
		${WRKSRC}/engine/dconf-engine-source-system.c \
		${WRKSRC}/engine/dconf-engine-profile.c \
		${WRKSRC}/docs/dconf-overview.xml \
		${WRKSRC}/bin/dconf-update.vala \
		${WRKSRC}/tests/engine.c

.include <bsd.port.mk>
