# $OpenBSD: Makefile,v 1.14 2006/09/18 09:40:31 espie Exp $

COMMENT=		"architecture for creating reusable software components"
COMMENT-docs=		"documentation for the bonobo architecture"

VERSION=		1.0.22
DISTNAME=		bonobo-${VERSION}
PKGNAME=		${DISTNAME}p0
PKGNAME-docs=		bonobo-docs-${VERSION}p0
SHARED_LIBS=		bonobo-print	2.1 \
			bonobo		2.1 \
			bonobox		2.1 \
			efs		1.0
CATEGORIES=    		x11/gnome
HOMEPAGE=		http://developer.gnome.org/arch/component/bonobo.html

# GPL/LGPL
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/bonobo/1.0/}
EXTRACT_SUFX=		.tar.bz2

MULTI_PACKAGES=		-docs
SUBPACKAGE?=		

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=		*
.else
WANTLIB=		ICE IIOP ORBit ORBitCosNaming ORBitutil SM X11 Xext \
			Xi audiofile c esd freetype gdk gdk_imlib gdk_pixbuf \
			glib gmodule gtk jpeg m png popt tiff ungif wrap xml z
MODULES=		devel/gettext
LIB_DEPENDS=		art_lgpl.>=4,gnome.>=36,gnomesupport,gnomeui.>=46::x11/gnome/libs \
			oaf::x11/gnome/oaf \
			gnomeprint.>=16::x11/gnome/print
.endif

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
