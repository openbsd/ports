# $OpenBSD: Makefile,v 1.16 2002/03/24 01:20:39 brad Exp $

COMMENT=	"CDE like desktop with Gtk"

DISTNAME=	xfce-3.8.14
CATEGORIES=	x11
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= xfce

HOMEPAGE=	http://www.xfce.org/

LIB_DEPENDS=	gtk.1::x11/gtk+ \
		gdk_pixbuf.2::graphics/gdk-pixbuf \
		audiofile::devel/libaudiofile \
		xml2::textproc/libxml
RUN_DEPENDS=	::audio/sox

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--disable-arts \
		--enable-audiofile="${LOCALBASE}" \
		--enable-gdk-pixbuf="${LOCALBASE}" \
		--enable-gtk-engine="${PREFIX}/lib/gtk/themes/engines" \
		--enable-libxml2="${LOCALBASE}" \
		--with-conf-dir="${PREFIX}/lib/xfce" \
		--with-data-dir="${PREFIX}/share/xfce" \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-locale-dir="${PREFIX}/share/locale" \
		--with-xpm="${X11BASE}"

.include <bsd.port.mk>
