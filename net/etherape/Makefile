# $OpenBSD: Makefile,v 1.2 2003/06/30 18:08:34 sturm Exp $

COMMENT=		"graphical network monitor"

DISTNAME=		etherape-0.9.0
CATEGORIES=		net

HOMEPAGE=		http://etherape.sourceforge.net/

MAINTAINER=		Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* gcc-*
.endif

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=etherape/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV+=		LIBTOOL="${LOCALBASE}/bin/libtool"

BUILD_DEPENDS=		:pkgconfig->=0.9.0:devel/pkgconfig
LIB_DEPENDS=		gtk-x11-2.0.0.11::x11/gtk+2 \
			glade-2.0.0.1::devel/libglade2 \
			gnomeui-2::x11/gnome/libgnomeui

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
