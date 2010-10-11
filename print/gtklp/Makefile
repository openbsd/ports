# $OpenBSD: Makefile,v 1.9 2010/10/11 08:17:16 jasper Exp $

COMMENT=	GTK+2 frontend to CUPS

DISTNAME=	gtklp-1.2.7
REVISION=	3
CATEGORIES=	print sysutils x11

EXTRACT_SUFX=	.src.tar.gz

HOMEPAGE=	http://gtklp.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender asn1 atk-1.0 c cairo crypto cups.>=3
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gssapi gthread-2.0
WANTLIB += gtk-x11-2.0 krb5 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs ssl xcb xcb-render xcb-render-util z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtklp/}

MODULES=	devel/gettext

LIB_DEPENDS=	::x11/gtk+2 \
		::print/cups

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MAKE_FILE=	Makefile.fallback
CFLAGS+=	-DHAVE_LIBSSL

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.fallback

.include <bsd.port.mk>
