# $OpenBSD: Makefile,v 1.26 2000/01/01 00:09:50 brad Exp $

DISTNAME=	gtk+-1.2.6
CATEGORIES=     x11
MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
		http://www.ameth.org/gimp/gtk/v1.2/

NEED_VERSION=	1.79

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext \
		glib.1.2:${PORTSDIR}/devel/glib

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# People that installed an older version of gtk+ wound up with
# libglib.a and other things in /usr/X11R6/lib... these files
# MUST be removed as the version was incorrect (it came from 1.0.6
# sources). Check that out here (and bitch if necessary).
# 
pre-extract:
	@if [ -f ${X11BASE}/lib/libglib.a ]; then \
	   echo "+-------------------"; \
	   echo "| ERROR: you MUST remove the existing gtk+ installation"; \
	   echo "| before installing this version.  Run these commands"; \
	   echo "| as user root to remove the package:"; \
	   echo "|"; \
	   echo "|	pkg_delete -f `pkg_info -e 'gtk+-*'`"; \
	   echo "|	ldconfig ${X11BASE}/lib"; \
	   echo "|	ldconfig -m ${LOCALBASE}/lib"; \
	   echo "|"; \
	   echo "+-------------------"; \
	   exit 1; \
	fi

post-extract:
	@rm -f ${WRKSRC}/docs/gtk.info*
	@rm -f ${WRKSRC}/docs/gdk.info*

post-install:
	${INSTALL_DATA_DIR} ${LOCALBASE}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/gtk.m4 ${LOCALBASE}/share/aclocal/
	@install-info ${PREFIX}/info/gtk.info ${PREFIX}/info/dir
	@install-info ${PREFIX}/info/gdk.info ${PREFIX}/info/dir
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
