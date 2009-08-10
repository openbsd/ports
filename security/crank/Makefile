# $OpenBSD: Makefile,v 1.19 2009/08/10 06:34:29 kili Exp $

COMMENT=	classical cipher cryptanalysis toolkit

DISTNAME=		crank-0.2.1
PKGNAME=		${DISTNAME}p2
CATEGORIES=		security

HOMEPAGE=		http://crank.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xi c glib gmodule iconv intl m \
		pthread-stubs xcb
NO_REGRESS=	Yes
USE_X11=	Yes
USE_LIBTOOL=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=crank/}

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
			guile.>=9,guile-ltdl.>=1::lang/guile

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
