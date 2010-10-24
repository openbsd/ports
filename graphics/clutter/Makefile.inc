# $OpenBSD: Makefile.inc,v 1.5 2010/10/24 21:21:00 ajacoutot Exp $

SHARED_ONLY?=		Yes

CATEGORIES+=		graphics/clutter x11

HOMEPAGE?=		http://www.clutter-project.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM?=  Yes
PERMIT_PACKAGE_FTP?=    Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=  Yes

MASTER_SITES_CLUTTER?=	${HOMEPAGE}/sources/
DIST_SUBDIR=		clutter

USE_GMAKE?=		Yes

USE_LIBTOOL?=		Yes
LIBTOOL_FLAGS?=		--tag=disable-static

CONFIGURE_STYLE?=	gnu

API_VERSION?=		0.10
MAJOR?=			1.0
SUBST_VARS?=		MAJOR API_VERSION
