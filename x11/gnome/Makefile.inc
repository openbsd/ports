# $OpenBSD: Makefile.inc,v 1.4 2007/07/05 22:48:08 jasper Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

.if ${NO_BUILD:L} == "no"
CONFIGURE_STYLE?=	gnu
.endif
