# $OpenBSD: Makefile.inc,v 1.8 2009/02/11 15:33:51 jasper Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org

.if !defined(NO_BUILD)
CONFIGURE_STYLE?=	gnu
.endif
