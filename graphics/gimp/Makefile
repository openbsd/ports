# $OpenBSD: Makefile,v 1.65 2001/10/24 12:19:22 espie Exp $

COMMENT=	"GNU Image Manipulation Program"

VERSION=	1.2.2
DISTNAME=	gimp-${VERSION}
CATEGORIES=	graphics
NEED_VERSION=	1.474
MASTER_SITES=	ftp://ftp.gimp.org/pub/%SUBDIR%/ \
		ftp://ftp.sunet.se/pub/gnu/%SUBDIR%/ \
		ftp://ftp.cs.umn.edu/pub/%SUBDIR%/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.gimp.org/%SUBDIR%/
MASTER_SITE_SUBDIR= gimp/v1.2/v${VERSION}

HOMEPAGE=	http://www.gimp.org/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		aa.1.3::graphics/aalib \
		mpeg.13::graphics/mpeg-lib \
		png.2::graphics/png \
		tiff.35::graphics/tiff
BUILD_DEPENDS=	wget:wget-*:net/wget
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-perl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
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
