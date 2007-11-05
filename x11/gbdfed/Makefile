# $OpenBSD: Makefile,v 1.2 2007/11/05 19:43:10 ajacoutot Exp $

COMMENT=	GTK-based BDF font editor

DISTNAME=	gbdfed-1.3
PKGNAME=	${DISTNAME}pl1p0
CATEGORIES=	x11
HOMEPAGE=	http://crl.nmsu.edu/~mleisher/gbdfed.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png z

MASTER_SITES=	http://crl.nmsu.edu/~mleisher/
EXTRACT_SUFX=	.tar.bz2
PATCHFILES=	gbdfed-1.3-patch1

USE_X11=	Yes

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0.>=1200,gdk_pixbuf-2.0.>=1200,gtk-x11-2.0.>=1200::x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
# leakage from bsd.own.mk
MAKE_ENV=	STATIC=""

NO_REGRESS=	Yes

.include <bsd.port.mk>
