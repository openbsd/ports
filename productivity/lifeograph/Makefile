COMMENT=	diary and journal application

CATEGORIES=	productivity

MAINTAINER =	Solene Rapenne <solene@perso.pw>

HOMEPAGE=	http://lifeograph.sourceforge.net

V=		2.0.2
DISTNAME=	lifeograph-${V}

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB+= 	${COMPILER_LIBCXX} cairomm-1.0 gio-2.0 enchant-2
WANTLIB+= 	giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0
WANTLIB+= 	pangomm-1.4 sigc-2.0 atkmm-1.6 c gdkmm-3.0 intl m gcrypt
WANTLIB+=	champlain-0.12 champlain-gtk-0.12 clutter-1.0 clutter-gtk-1.0

MASTER_SITES= 	https://launchpad.net/lifeograph/trunk/${V}/+download/

EXTRACT_SUFX=	.tar.xz

COMPILER=	base-clang ports-gcc

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	www/webkitgtk4 \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS=	geo/libchamplain \
		security/libgcrypt \
		textproc/enchant2 \
		x11/gtk3mm

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache

NO_TEST=	Yes

.include <bsd.port.mk>
