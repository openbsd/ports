# $OpenBSD: Makefile.inc,v 1.21 2014/04/01 13:21:45 ajacoutot Exp $

SHARED_ONLY?=		Yes

DIST_SUBDIR=		clutter

CATEGORIES+=		graphics x11

HOMEPAGE?=		http://www.clutter-project.org/

MAINTAINER?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM?=  Yes

MODULES +=		devel/gettext \
			x11/gnome

CONFIGURE_STYLE?=	gnu

API_VERSION?=		1.0
MAJOR?=			1.18
SUBST_VARS?=		MAJOR API_VERSION
