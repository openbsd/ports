# $OpenBSD: Makefile,v 1.5 1999/03/25 20:14:42 marc Exp $

DISTNAME=	glib-1.2.0
CATEGORIES=	devel

NEED_VERSION=	1.73

MAINTAINER=	rohee@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
		http://www.ameth.org/gimp/gtk/v1.2/

SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static --disable-threads

post-extract:
	@${RM} ${WRKSRC}/docs/*.info

# People that installed an older version of gtk+ wound up with
# libglib.a and libglib.so.1.6 in /usr/X11R6/lib... these files
# MUST be removed as the version was incorrect (it came from 1.0.6
# sources). Check that out here (and bitch if necessary).
# 
pre-install:
	@if [ -f ${X11BASE}/lib/libglib.a ]; then \
	   echo "+-------------------"; \
	   echo "| ERROR: you MUST remove the existing glib installation"; \
	   echo "| before installing this version.  Use the command"; \
	   echo "|"; \
	   echo "|	rm -rf ${X11BASE}/lib/libglib*"; \
	   echo "|"; \
	   echo "| then retry this installation"; \
	   echo "+-------------------"; \
	   exit 1; \
	fi

post-install:
	@${MKDIR} ${LOCALBASE}/share/aclocal
	@${INSTALL_DATA} ${WRKSRC}/glib.m4 ${LOCALBASE}/share/aclocal/
	test -f ${PREFIX}/info/dir || \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir
	install-info ${PREFIX}/info/glib.info ${PREFIX}/info/dir
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
