# $OpenBSD: Makefile,v 1.41 2000/05/31 21:49:44 marc Exp $

DISTNAME=	gimp-1.1.22
CATEGORIES=	graphics
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/unstable/old/v1.1.22/ \
		ftp://ftp.sunet.se/pub/gnu/gimp/unstable/old/v1.1.22/ \
		ftp://ftp.cs.umn.edu/pub/gimp/unstable/old/v1.1.22/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=	GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		aa.1.3::graphics/aalib \
		jpeg.62::graphics/jpeg \
		mpeg.13::graphics/mpeg-lib \
		png.1.6::graphics/png \
		tiff.35::graphics/tiff

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
FAKE=		Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-perl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${LOCALBASE}/bin/gtk-config"

# People that installed an older version of gimp 1.1.x wound up with
# shared libs with a major/minor of 1.3 or 1.4 ... these files
# MUST be removed as the version was incorrect (it came from 1.1.x
# sources). Check that out here (and bitch if necessary).
pre-extract:
	@if [ -f ${X11BASE}/lib/libgimp.so.1.3 -o -f ${X11BASE}/lib/libgimp.so.1.4 ]; then \
	   echo "+-------------------"; \
	   echo "| ERROR: you MUST remove the existing gimp installation"; \
	   echo "| before installing this version. To fully remove run"; \
	   echo "| these commands as user root"; \
	   echo "|"; \
	   echo "|      pkg_delete -f `pkg_info -e 'gimp-*'`"; \
	   echo "|      ldconfig ${X11BASE}/lib"; \
	   echo "|"; \
	   echo "+-------------------"; \
	   exit 1; \
	fi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/gimp.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
