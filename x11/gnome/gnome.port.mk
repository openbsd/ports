# $OpenBSD: gnome.port.mk,v 1.1 2007/05/30 09:19:02 jasper Exp $
# Module for GNOME related ports

CATEGORIES+=		x11/gnome

USE_LIBTOOL?=		Yes
USE_X11=		Yes

MODGNOME_RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

BUILD_DEPENDS+=	 	:intltool-*:textproc/intltool \
			:p5-XML-Parser-*:textproc/p5-XML-Parser	
RUN_DEPENDS+=		${MODGNOME_RUN_DEPENDS}

EXTRACT_SUFX?=		.tar.bz2

MODGNOME_CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

#ifdef notyet
#CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/${PROJECT}/
#			--disable-schemas-install \
#			--disable-scrollkeeper
#endif
