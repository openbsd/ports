# $OpenBSD: gnome.port.mk,v 1.11 2007/06/29 21:49:04 jasper Exp $
# Module for GNOME related ports

CATEGORIES+=		x11/gnome

DISTNAME=		${GNOME_PROJECT}-${GNOME_VERSION}
VERSION=		${GNOME_VERSION}

USE_LIBTOOL?=		Yes

MODGNOME_RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

BUILD_DEPENDS+=	 	:intltool-*:textproc/intltool \
			:p5-XML-Parser-*:textproc/p5-XML-Parser	
RUN_DEPENDS+=		${MODGNOME_RUN_DEPENDS}

MASTER_SITES?=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:R}/}
EXTRACT_SUFX?=		.tar.bz2

USE_GMAKE?=		Yes

#ifdef notyet
#CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/${PROJECT}/
#			--disable-schemas-install \
#			--disable-scrollkeeper
#endif
