# $OpenBSD: Makefile,v 1.10 2006/11/11 21:04:27 steven Exp $

COMMENT='C++ toolkit for GUI'
CATEGORIES=devel

DISTNAME=fox-1.4.17
PKGNAME=${DISTNAME}p0
SHARED_LIBS +=	FOX-1.4              1.0      # .0.17
SHARED_LIBS +=	CHART-1.4            1.0      # .0.17
MASTER_SITES=${HOMEPAGE}/ftp/
HOMEPAGE=http://www.fox-toolkit.org/
MAINTAINER=Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=gnu

LIB_DEPENDS=bz2::archivers/bzip2 \
	jpeg::graphics/jpeg \
	png::graphics/png \
	tiff::graphics/tiff

CONFIGURE_ENV+= \
	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
	LDFLAGS="-L${LOCALBASE}/lib" 
CONFIGURE_ARGS+= \
	--x-includes=${X11BASE}/include \
	--x-libraries=${X11BASE}/lib
# LGPL or looser
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes

WANTLIB=	GL GLU X11 Xext c m stdc++ z pthread
.include <bsd.port.mk>
