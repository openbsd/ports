# $OpenBSD: Makefile,v 1.17 1999/04/08 04:21:52 brad Exp $

DISTNAME=	gimp-1.1.4
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/unstable/v1.1.4/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gimp/unstable/v1.1.4/ \
		http://www.ameth.org/gimp/pub/gimp/unstable/v1.1.4/

MAINTAINER=	brad@openbsd.org

RUN_DEPENDS=	wget:${PORTSDIR}/net/wget
LIB_DEPENDS=	aa:${PORTSDIR}/graphics/aalib \
		intl:${PORTSDIR}/devel/gettext \
		glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+ \
		jpeg:${PORTSDIR}/graphics/jpeg \
		mpeg:${PORTSDIR}/graphics/mpeg-lib \
		png:${PORTSDIR}/graphics/png \
		tiff:${PORTSDIR}/graphics/tiff34

USE_X11=	yes
USE_GMAKE=	yes
SYSCONFDIR=	${PREFIX}/lib
SEPARATE_BUILD=	yes
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
	@${MKDIR} ${LOCALBASE}/share/aclocal
	@${INSTALL_DATA} ${WRKSRC}/gimp.m4 ${LOCALBASE}/share/aclocal/
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
