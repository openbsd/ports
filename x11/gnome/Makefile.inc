# $OpenBSD: Makefile.inc,v 1.2 2007/05/31 11:39:13 jasper Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

.if !defined(NO_BUILD)
CONFIGURE_STYLE?=	gnu
.endif
#CONFIGURE_ENV=		${MODGNOME_CONFIGURE_ENV}
