# $OpenBSD: Makefile.inc,v 1.9 2009/02/11 15:47:49 jasper Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

.if !defined(NO_BUILD)
CONFIGURE_STYLE?=	gnu
.endif
