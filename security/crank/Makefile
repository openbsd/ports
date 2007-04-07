# $OpenBSD: Makefile,v 1.16 2007/04/07 15:14:46 steven Exp $

COMMENT=	"classical cipher cryptanalysis toolkit"

DISTNAME=		crank-0.2.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		security

HOMEPAGE=		http://crank.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c iconv intl glib gmodule m X11 Xext Xi
NO_REGRESS=	Yes
USE_X11=	Yes
USE_LIBTOOL=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=crank/}

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
			guile.>=9::lang/guile

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
