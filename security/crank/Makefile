# $OpenBSD: Makefile,v 1.20 2009/10/11 18:57:51 kili Exp $

COMMENT=	classical cipher cryptanalysis toolkit

DISTNAME=		crank-0.2.1
PKGNAME=		${DISTNAME}p3
CATEGORIES=		security

HOMEPAGE=		http://crank.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
WANTLIB=	X11 Xau Xdmcp Xext Xi c glib gmodule gmp ltdl m pthread \
		pthread-stubs xcb
NO_REGRESS=	Yes
USE_X11=	Yes
USE_LIBTOOL=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=crank/}

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
			guile.>=9::lang/guile

BUILD_DEPENDS=		::devel/swig

USE_LIBTOOL=		Yes
AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	gnu autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	swig -guile -gh ${WRKSRC}/src/crank.i

.include <bsd.port.mk>
