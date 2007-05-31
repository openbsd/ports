# $OpenBSD: Makefile.inc,v 1.3 2007/05/31 12:49:08 jasper Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

.if !defined(NO_BUILD)
CONFIGURE_STYLE?=	gnu
.endif
