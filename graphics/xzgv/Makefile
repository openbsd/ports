# $OpenBSD: Makefile,v 1.7 2009/08/10 06:31:45 kili Exp $

COMMENT=	picture viewer for X, with thumbnail-based file selector
DISTNAME=	xzgv-0.9
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

HOMEPAGE=	http://xzgv.sourceforge.net/

MAINTAINER=	Julian Leyh <julian@vgai.de>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xzgv/}

MODULES=	devel/gettext

LIB_DEPENDS+=   gdk-x11-2.0.>=0.11,gdk_pixbuf-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2

WANTLIB+=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB+=	Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB+=	freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0
WANTLIB+=	pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs xcb z

USE_X11=	Yes
NO_REGRESS=	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/doc/xzgv.1 ${WRKSRC}/doc/xzgv.texi

.include <bsd.port.mk>
