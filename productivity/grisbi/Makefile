# $OpenBSD: Makefile,v 1.14 2010/10/18 21:25:09 espie Exp $

COMMENT=	personal accounting application
SHARED_ONLY =	Yes

DISTNAME=	grisbi-0.6.0
REVISION=	1

CATEGORIES=	productivity x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.grisbi.org/

MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grisbi/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m osp pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb z pcre crypto ssl gdk_pixbuf-2.0

MODULES=	devel/gettext

LIB_DEPENDS=	xml2.>=9::textproc/libxml \
		gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2 \
		ofx.>=3::devel/libofx

RUN_DEPENDS=	::devel/desktop-file-utils

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		OpenSSL_CFLAGS="-I/usr/include " \
		OpenSSL_LIBS="-lssl -lcrypto"

CONFIGURE_ARGS=	--with-balance-estimate

.include <bsd.port.mk>
