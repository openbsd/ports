# $OpenBSD: Makefile,v 1.38 2019/11/10 15:32:55 ajacoutot Exp $

COMMENT=		tool for producing computational artwork
DISTNAME=		fyre-1.0.1
REVISION=		24
CATEGORIES=		graphics

HOMEPAGE=		http://fyre.navi.cx/

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} Half-2_4 Iex-2_4 IexMath-2_4 IlmImf-2_4
WANTLIB += IlmThread-2_4 Imath-2_4 X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		http://releases.navi.cx/fyre/ \
			https://distfiles.nl/

LIB_DEPENDS=		devel/libglade2 \
			graphics/openexr
RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--disable-gnet

# quirky, but prevents a patch
post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/update-mime-database
	@ln -s /usr/bin/true ${WRKDIR}/bin/update-desktop-database

.include <bsd.port.mk>
