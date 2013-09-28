# $OpenBSD: Makefile.inc,v 1.11 2013/09/28 08:47:58 ajacoutot Exp $

DIST_SUBDIR=		gnome

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

.if !defined(NO_BUILD)
. if !defined(MODULES) || !${MODULES:Mdevel/waf}
CONFIGURE_STYLE?=	gnu
. endif
.endif
