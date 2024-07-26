COMMENT=	diary and journal application

CATEGORIES=	productivity

HOMEPAGE=	https://lifeograph.sourceforge.net

V=		2.0.3
DISTNAME=	lifeograph-${V}

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} atkmm-1.6 c cairomm-1.0 champlain-0.12
WANTLIB += champlain-gtk-0.12 clutter-1.0 clutter-gtk-1.0 enchant-2
WANTLIB += gcrypt gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += gobject-2.0 gtk-3 gtkmm-3.0 intl m pangomm-1.4 sigc-2.0

SITES= 		https://launchpad.net/lifeograph/trunk/${V}/+download/

EXTRACT_SUFX=	.tar.xz

COMPILER=	base-clang ports-gcc

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

LIB_DEPENDS=	geo/libchamplain \
		security/libgcrypt \
		textproc/enchant2 \
		x11/gtk3mm

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache

NO_TEST=	Yes

.include <bsd.port.mk>
