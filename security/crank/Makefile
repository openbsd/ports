# $OpenBSD: Makefile,v 1.14 2006/08/03 23:28:11 espie Exp $

COMMENT=	"classical cipher cryptanalysis toolkit"

DISTNAME=		crank-0.2.1
CATEGORIES=		security

HOMEPAGE=		http://crank.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c iconv intl glib gmodule m X11 Xext Xi
NO_REGRESS=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=crank/}

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
			guile.>=9::lang/guile

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
