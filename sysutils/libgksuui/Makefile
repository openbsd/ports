# $OpenBSD: Makefile,v 1.5 2009/08/10 06:34:30 kili Exp $

COMMENT=		graphical frontend to su (library to the interface)

V=			1.0.7
DISTNAME=		libgksuui1.0-$V
PKGNAME=		libgksuui-$Vp3
SHARED_LIBS=		gksuui1.0         0.0            # .1.0
CATEGORIES=		sysutils

HOMEPAGE=		http://www.nongnu.org/gksu/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs \
		xcb z gio-2.0

MASTER_SITES=		http://people.debian.org/~kov/gksu/old_stuff/libgksuui1.0/

MODULES=		devel/gettext

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu old
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--enable-gtk-doc=no

post-extract:
	@perl -pi -e 's,/bin/su,/usr/bin/su,g' ${WRKSRC}/po/*.po

.include <bsd.port.mk>
