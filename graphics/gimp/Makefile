# $OpenBSD: Makefile,v 1.52 2000/09/24 07:04:07 brad Exp $

DISTNAME=	gimp-1.1.25
CATEGORIES=	graphics
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/v1.1/v1.1.25/ \
		ftp://ftp.sunet.se/pub/gnu/gimp/v1.1/v1.1.25/ \
		ftp://ftp.cs.umn.edu/pub/gimp/v1.1/v1.1.25/

HOMEPAGE=	http://www.gimp.org/

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		aa.1.3::graphics/aalib \
		mpeg.13::graphics/mpeg-lib \
		png.1::graphics/png \
		tiff.35::graphics/tiff
BUILD_DEPENDS=	wget::net/wget
RUN_DEPENDS=	wget::net/wget

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-perl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/gimp.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
