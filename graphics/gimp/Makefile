# $OpenBSD: Makefile,v 1.26 2000/01/06 03:10:56 brad Exp $

DISTNAME=	gimp-1.1.14
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/unstable/v1.1.14/ \
		ftp://ftp.sunet.se/pub/gnu/gimp/unstable/v1.1.14/ \
		ftp://ftp.cs.umn.edu/pub/gimp/unstable/v1.1.14/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+ \
		aa.1.3:${PORTSDIR}/graphics/aalib \
		jpeg.62:${PORTSDIR}/graphics/jpeg \
		mpeg.1.2:${PORTSDIR}/graphics/mpeg-lib \
		png.1.3:${PORTSDIR}/graphics/png \
		tiff.35:${PORTSDIR}/graphics/tiff

USE_X11=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-perl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config"

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
	${INSTALL_DATA_DIR} ${LOCALBASE}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/gimp.m4 ${LOCALBASE}/share/aclocal/
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
