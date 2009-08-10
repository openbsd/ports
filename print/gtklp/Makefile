# $OpenBSD: Makefile,v 1.6 2009/08/10 06:34:08 kili Exp $

COMMENT=	GTK+2 frontend to CUPS

DISTNAME=	gtklp-1.2.7
PKGNAME=	${DISTNAME}p0
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
WANTLIB += Xi Xinerama Xrandr Xrender asn1 atk-1.0 c cairo crypto
WANTLIB += expat fontconfig freetype gcrypt gio-2.0 glib-2.0 glitz
WANTLIB += gmodule-2.0 gnutls gobject-2.0 gpg-error gssapi krb5
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs xcb z

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
