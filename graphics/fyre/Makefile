# $OpenBSD: Makefile,v 1.9 2009/07/18 17:41:10 kili Exp $

COMMENT=		tool for producing computational artwork
DISTNAME=		fyre-1.0.1
PKGNAME=		${DISTNAME}p5
CATEGORIES=		graphics

HOMEPAGE=		http://fyre.navi.cx/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	Half Iex IlmThread Imath X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		atk-1.0 c cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread stdc++ xml2 z gio-2.0

MASTER_SITES=		http://releases.navi.cx/fyre/ \
			http://humppa.nl/distfiles/

MODULES=		devel/gettext

BUILD_DEPENDS=		::textproc/rarian
LIB_DEPENDS=		glade-2.0::devel/libglade2 \
			IlmImf.>=4::graphics/openexr \
			gnet-2.0::net/gnet
RUN_DEPENDS=		::misc/shared-mime-info \
			::x11/hicolor-icon-theme

USE_GMAKE=		Yes
USE_X11=		yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--enable-openexr \
			--enable-gnet

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/update-mime-database

.include <bsd.port.mk>
