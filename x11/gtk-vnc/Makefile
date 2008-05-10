# $OpenBSD: Makefile,v 1.1.1.1 2008/05/10 08:35:31 jasper Exp $

COMMENT=		VNC viewer widget for GTK

DISTNAME=		gtk-vnc-0.3.6
SHARED_LIBS +=	gtk-vnc-1.0          0.0      # .0.1
CATEGORIES=		x11 net

HOMEPAGE=		http://gtk-vnc.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtk-vnc/}

MODULES=		devel/gettext \
			lang/python

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gpg-error gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre png pthread z

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/py-gtk2
LIB_DEPENDS=		gnutls.>=13::security/gnutls

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--enable-plugin=no \
			--with-examples \
			--with-python
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
