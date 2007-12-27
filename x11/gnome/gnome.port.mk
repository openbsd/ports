# $OpenBSD: gnome.port.mk,v 1.15 2007/12/27 20:45:54 jasper Exp $
# Module for GNOME related ports

CATEGORIES+=		x11/gnome

DISTNAME=		${GNOME_PROJECT}-${GNOME_VERSION}
VERSION=		${GNOME_VERSION}

.if ${NO_BUILD:L} == "no"
USE_LIBTOOL?=		Yes
MODULES+=		textproc/intltool
.endif

.if defined(DESKTOP_FILES)
MODGNOME_RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

RUN_DEPENDS+=		${MODGNOME_RUN_DEPENDS}
.endif

MASTER_SITES?=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION:R}/}
EXTRACT_SUFX?=		.tar.bz2

USE_GMAKE?=		Yes

#ifdef notyet
#CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/${PROJECT}/
#			--disable-schemas-install \
#			--disable-scrollkeeper
#endif
