# $OpenBSD: Makefile,v 1.71 2002/06/14 17:18:06 todd Exp $

COMMENT=	"GNU Image Manipulation Program"

VERSION=	1.2.2
DISTNAME=	gimp-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	graphics
NEED_VERSION=	1.486
V=		gimp/v1.2/${VERSION}
MASTER_SITES=	ftp://ftp.gimp.org/pub/$V/ \
		ftp://ftp.sunet.se/pub/gnu/$V/ \
		ftp://ftp.cs.umn.edu/pub/$V/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.gimp.org/$V/

HOMEPAGE=	http://www.gimp.org/

LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+ \
		aa.1.3::graphics/aalib \
		mpeg.13::graphics/mpeg-lib \
		png.2::graphics/png \
		tiff.35::graphics/tiff
BUILD_DEPENDS=	:wget-*:net/wget
RUN_DEPENDS=	:wget-*:net/wget

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-perl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-extract:
	@if [ -f ${LOCALBASE}/lib/libgimp.so.?.? ]; then \
	   echo "+-------------------"; \
	   echo "| ERROR: you MUST remove the existing gimp installation"; \
	   echo "| before compiling this version. To fully remove run"; \
	   echo "| these commands as user root"; \
	   echo "|"; \
	   echo "|      pkg_delete -f `pkg_info -e 'gimp-*'`"; \
	   echo "|      ldconfig -R"; \
	   echo "|"; \
	   echo "+-------------------"; \
	   exit 1; \
	fi

.include <bsd.port.mk>
