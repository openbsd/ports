# $OpenBSD: Makefile,v 1.2 2010/05/13 17:41:27 landry Exp $

COMMENT=	lightweight PDF document viewer with vi bindings

DISTNAME=	apvlv-0.0.9.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	print
HOMEPAGE=	http://code.google.com/p/apvlv/

MASTER_SITES=	http://apvlv.googlecode.com/files/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs stdc++ xcb z

LIB_DEPENDS=	gtk-x11-2.0.>=0.14,gdk-x11-2.0.>=0.14,gdk_pixbuf-2.0.>=0.14::x11/gtk+2 \
		poppler.>=3,poppler-glib.>=3::print/poppler

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+=	--without-djvu
FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/apvlv

.include <bsd.port.mk>
