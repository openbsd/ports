# $OpenBSD: Makefile,v 1.20 2003/04/11 16:20:21 pvalchev Exp $

COMMENT=	"CDE like desktop with Gtk"

DISTNAME=	xfce-3.8.18
CATEGORIES=	x11
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>
HOMEPAGE=	http://www.xfce.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xfce/}

LIB_DEPENDS=	gtk.1::x11/gtk+ \
		gdk_pixbuf.2::graphics/gdk-pixbuf \
		audiofile::devel/libaudiofile \
		xml2::textproc/libxml
RUN_DEPENDS=	::audio/sox

USE_X11=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_NEW=	Yes
CONFIGURE_ARGS=	--disable-arts \
		--enable-audiofile="${LOCALBASE}" \
		--enable-gdk-pixbuf="${LOCALBASE}" \
		--enable-gtk-engine="${PREFIX}/lib/gtk/themes/engines" \
		--enable-libxml2="${LOCALBASE}" \
		--with-conf-dir="${PREFIX}/lib/xfce" \
		--with-data-dir="${PREFIX}/share/xfce" \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-locale-dir="${PREFIX}/share/locale" \
		--with-xpm="${X11BASE}" \
		--enable-xft=yes \
		--enable-taskbar
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include/freetype2" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
