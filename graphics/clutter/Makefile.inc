# $OpenBSD: Makefile.inc,v 1.25 2019/07/13 10:59:26 sthen Exp $

DIST_SUBDIR=		clutter

CATEGORIES+=		graphics x11

HOMEPAGE?=		http://www.clutter-project.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1 - MIT
PERMIT_PACKAGE ?=  Yes

MODULES +=		x11/gnome

CONFIGURE_STYLE?=	gnu

API_VERSION?=		1.0
SUBST_VARS?=		API_VERSION
