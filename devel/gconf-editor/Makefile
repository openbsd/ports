# $OpenBSD: Makefile,v 1.4 2004/11/23 11:22:01 espie Exp $

COMMENT=		"editor for the GConf configuration system"

DISTNAME=		gconf-editor-2.6.2
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Balmer <marc@msys.ch>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ORBit-2.0.0 X11 Xext Xft Xinerama Xrender \
			atk-1.0.0.0 c fontconfig freetype \
			gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
			gthread-2.0.0.0 gtk-x11-2.0.0.0 \
			iconv intl m pango-1.0.0.0 pangoft2-1.0.0.0 \
			pangoxft-1.0.0.0 pangox-1.0.0.0 popt pthread

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gconf-editor/2.6/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gconf-2::devel/gconf2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
