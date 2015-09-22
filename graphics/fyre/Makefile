# $OpenBSD: Makefile,v 1.26 2015/09/22 18:47:52 pascal Exp $

COMMENT=		tool for producing computational artwork
DISTNAME=		fyre-1.0.1
REVISION=		16
CATEGORIES=		graphics

HOMEPAGE=		http://fyre.navi.cx/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Half Iex IexMath IlmImf IlmThread Imath X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 c cairo fontconfig freetype gdk-x11-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread stdc++ xml2 z

MASTER_SITES=		http://releases.navi.cx/fyre/ \
			http://distfiles.nl/

MODULES=		devel/gettext

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
