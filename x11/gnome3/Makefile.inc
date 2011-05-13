# $OpenBSD: Makefile.inc,v 1.2 2011/05/13 08:47:47 ajacoutot Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

CATEGORIES +=		x11/gnome3

.if !defined(NO_BUILD)
. if !defined(MODULES) || !${MODULES:Mdevel/waf}
CONFIGURE_STYLE?=	gnu
. endif
.endif
