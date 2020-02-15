# $OpenBSD: Makefile,v 1.1.1.1 2020/02/15 11:35:11 solene Exp $

COMMENT=	diary and journal application

CATEGORIES=	productivity

HOMEPAGE=	http://lifeograph.sourceforge.net

V=		1.6.1
DISTNAME=	lifeograph-${V}

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB+= 	${COMPILER_LIBCXX} cairomm-1.0 gio-2.0 enchant-2
WANTLIB+= 	giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0
WANTLIB+= 	pangomm-1.4 sigc-2.0 atkmm-1.6 c gdkmm-3.0 intl m gcrypt

MASTER_SITES= 	https://launchpad.net/lifeograph/trunk/1.6.1/+download/

EXTRACT_SUFX=	.tar.xz

COMPILER=	base-clang ports-gcc

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	www/webkitgtk4 \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS=	x11/gtk3mm \
		security/libgcrypt \
		textproc/enchant2

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache

NO_TEST=	Yes

.include <bsd.port.mk>
