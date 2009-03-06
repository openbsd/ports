# $OpenBSD: Makefile,v 1.15 2009/03/06 20:42:59 ckuethe Exp $

COMMENT=	library to access the contents of an iPod
DISTNAME=	libgpod-0.7.0
PKGNAME=	${DISTNAME}
SHARED_LIBS=	gpod	700.0
CATEGORIES=	audio
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/libgpod.html

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
		gdk_pixbuf-2.0::x11/gtk+2 \
		xml2.>=9::textproc/libxml
WANTLIB=	m z pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-hal
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CXXFLAGS="${CXXFLAGS} -ftrampolines" \
		CFLAGS="${CFLAGS} -ftrampolines"

.include <bsd.port.mk>
