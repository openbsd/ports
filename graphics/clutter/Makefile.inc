# $OpenBSD: Makefile.inc,v 1.9 2012/07/07 12:48:00 ajacoutot Exp $

SHARED_ONLY?=		Yes

DIST_SUBDIR=		clutter

CATEGORIES+=		graphics/clutter x11

HOMEPAGE?=		http://www.clutter-project.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM?=  Yes
PERMIT_PACKAGE_FTP?=    Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=  Yes

MODULES +=		devel/gettext \
			x11/gnome

LIBTOOL_FLAGS?=		--tag=disable-static

CONFIGURE_STYLE?=	gnu
CONFIGURE_ARGS +=	--disable-static

API_VERSION?=		1.0
MAJOR?=			1.10
SUBST_VARS?=		MAJOR API_VERSION
