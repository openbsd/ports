# $OpenBSD: Makefile,v 1.47 2000/06/25 22:20:24 brad Exp $

DISTNAME=	gimp-1.1.23
CATEGORIES=	graphics
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/v1.1/v1.1.23/ \
		ftp://ftp.sunet.se/pub/gnu/gimp/v1.1/v1.1.23/ \
		ftp://ftp.cs.umn.edu/pub/gimp/v1.1/v1.1.23/

HOMEPAGE=	http://www.gimp.org/

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		aa.1.3::graphics/aalib \
		mpeg.13::graphics/mpeg-lib \
		png.1::graphics/png \
		tiff.35::graphics/tiff

MAINTAINER=	brad@openbsd.org

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

# People that installed a previous version of gimp wound up with
# shared libs that might not contain all the functions needed to
# link the current objects.
# Check that out here (and bitch if necessary).
pre-extract:
	@if [ -f ${X11BASE}/lib/libgimp.so.?.? -o \
	      -f ${LOCALBASE}/lib/libgimp.so.?.? ]; then \
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/gimp.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
