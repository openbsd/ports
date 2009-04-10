# $OpenBSD: Makefile,v 1.3 2009/04/10 11:59:06 ajacoutot Exp $

COMMENT=	GTK+2 frontend to CUPS

DISTNAME=	gtklp-1.2.6
PKGNAME=	${DISTNAME}p1
CATEGORIES=	print sysutils x11

EXTRACT_SUFX=	.src.tar.gz

HOMEPAGE=	http://gtklp.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtklp/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gcrypt gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnutls gobject-2.0 gpg-error m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread tasn1 z

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		cups.>=3::print/cups

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MAKE_FILE=	Makefile.fallback
CFLAGS+=	-DHAVE_LIBSSL

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.fallback

.include <bsd.port.mk>
