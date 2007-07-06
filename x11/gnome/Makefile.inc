# $OpenBSD: Makefile.inc,v 1.6 2007/07/06 09:36:01 jasper Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

.if !defined(NO_BUILD)
CONFIGURE_STYLE?=	gnu
.endif
