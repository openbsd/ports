COMMENT=		high-performance 2D graphics library

GNOME_PROJECT=		libart_lgpl
GNOME_VERSION=		2.3.21
PKGNAME=		libart-${GNOME_VERSION}
REVISION=		0

SHARED_LIBS +=	art_lgpl_2           5.20     # .5.20

CATEGORIES=		graphics

HOMEPAGE=		http://www.levien.com/libart/

# LGPL
PERMIT_PACKAGE=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		m

MODULES=		x11/gnome

CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
