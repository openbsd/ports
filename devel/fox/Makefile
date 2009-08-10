# $OpenBSD: Makefile,v 1.16 2009/08/10 06:31:07 kili Exp $

COMMENT=	C++ toolkit for GUI
CATEGORIES=	devel

DISTNAME=	fox-1.6.28
PKGNAME=	${DISTNAME}p1

SHARED_LIBS +=	FOX-1.6              1.0      # .0.28
SHARED_LIBS +=	CHART-1.6            1.0      # .0.28
MASTER_SITES=	${HOMEPAGE}/ftp/
HOMEPAGE=	http://www.fox-toolkit.org/
MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	bz2::archivers/bzip2 \
		jpeg::graphics/jpeg \
		png::graphics/png \
		tiff::graphics/tiff

CONFIGURE_ENV+= \
	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
	LDFLAGS="-L${LOCALBASE}/lib" 
CONFIGURE_ARGS+= \
	--x-includes=${X11BASE}/include \
	--x-libraries=${X11BASE}/lib \
	--with-xft
# LGPL or looser
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes

FOX=		fox-1.6
SUBST_VARS=	FOX

WANTLIB=	GL GLU X11 Xau Xcursor Xdmcp Xext Xfixes Xrender Xrandr c m \
		stdc++ z pthread Xft expat fontconfig freetype \
		pthread-stubs xcb

.include <bsd.port.mk>
