# $OpenBSD: Makefile.inc,v 1.2 2011/05/17 14:08:15 ajacoutot Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

.if !defined(NO_BUILD)
. if !defined(MODULES) || !${MODULES:Mdevel/waf}
CONFIGURE_STYLE?=	gnu
. endif
.endif
