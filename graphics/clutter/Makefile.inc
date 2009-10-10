# $OpenBSD: Makefile.inc,v 1.2 2009/10/10 23:17:11 landry Exp $

SHARED_ONLY?=		Yes

CATEGORIES+=		graphics/clutter x11

HOMEPAGE?=		http://www.clutter-project.org/

# LGPLv2.1/perl
PERMIT_PACKAGE_CDROM?=  Yes
PERMIT_PACKAGE_FTP?=    Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=  Yes

MASTER_SITES_CLUTTER?=	${HOMEPAGE}/sources/
DIST_SUBDIR=		clutter

USE_GMAKE?=		Yes
USE_X11?=		Yes

USE_LIBTOOL?=		Yes
LIBTOOL_FLAGS?=		--tag=disable-static

CONFIGURE_STYLE?=	gnu

MAJOR?=			0.10
API_VERSION?=		1.0
SUBST_VARS?=		MAJOR API_VERSION
