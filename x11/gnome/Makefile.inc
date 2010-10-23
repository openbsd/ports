# $OpenBSD: Makefile.inc,v 1.10 2010/10/23 11:10:18 jasper Exp $

DIST_SUBDIR=		gnome

HOMEPAGE?=		http://www.gnome.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

.if !defined(NO_BUILD)
. if !defined(MODULES) || !${MODULES:Mdevel/waf}
CONFIGURE_STYLE?=	gnu
. endif
.endif
