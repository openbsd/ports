# $OpenBSD: gnome.port.mk,v 1.2 2007/05/31 11:30:35 jasper Exp $
# Module for GNOME related ports

CATEGORIES+=		x11/gnome

DISTNAME=		${GNOME_PROJECT}-${GNOME_VERSION}
V=			${GNOME_VERSION:C/:*.[0-9]$//}

USE_LIBTOOL?=		Yes
USE_X11=		Yes

MODGNOME_RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

BUILD_DEPENDS+=	 	:intltool-*:textproc/intltool \
			:p5-XML-Parser-*:textproc/p5-XML-Parser	
RUN_DEPENDS+=		${MODGNOME_RUN_DEPENDS}

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${V}/}
EXTRACT_SUFX?=		.tar.bz2

MODGNOME_CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

#ifdef notyet
#CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/${PROJECT}/
#			--disable-schemas-install \
#			--disable-scrollkeeper
#endif
