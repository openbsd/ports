# $OpenBSD: Makefile.inc,v 1.7 2008/02/04 17:55:18 jasper Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

.if !defined(NO_BUILD)
CONFIGURE_STYLE?=	gnu
.endif
